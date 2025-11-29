# python serial_viewer.py -p COM3 -b 115200
import argparse
import threading
import collections
import time

import serial
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation


class FlightLogBuffer:
    """
    Holds recent samples in deques for plotting.
    """
    def __init__(self, maxlen=600):
        # ~20 Hz logs → 600 samples ≈ 30 seconds
        self.t = collections.deque(maxlen=maxlen)

        # Angles in deg
        self.roll_meas = collections.deque(maxlen=maxlen)
        self.pitch_meas = collections.deque(maxlen=maxlen)
        self.yaw_meas = collections.deque(maxlen=maxlen)

        self.roll_sp = collections.deque(maxlen=maxlen)
        self.pitch_sp = collections.deque(maxlen=maxlen)
        self.yaw_sp = collections.deque(maxlen=maxlen)

        # Control outputs
        self.u_roll = collections.deque(maxlen=maxlen)
        self.u_pitch = collections.deque(maxlen=maxlen)
        self.u_yaw = collections.deque(maxlen=maxlen)
        self.collective = collections.deque(maxlen=maxlen)

        # Motor PWM (µs)
        self.m1 = collections.deque(maxlen=maxlen)
        self.m2 = collections.deque(maxlen=maxlen)
        self.m3 = collections.deque(maxlen=maxlen)
        self.m4 = collections.deque(maxlen=maxlen)

        # Misc
        self.armed = collections.deque(maxlen=maxlen)
        self.cmd_age = collections.deque(maxlen=maxlen)

        self.lock = threading.Lock()
        self.t0 = None  # First timestamp (for relative time)


    def add_sample(self, ts_ms,
                   roll_m, pitch_m, yaw_m,
                   roll_sp, pitch_sp, yaw_sp,
                   u_r, u_p, u_y, u_col,
                   m1, m2, m3, m4,
                   armed, cmd_age_ms):

        with self.lock:
            if self.t0 is None:
                self.t0 = ts_ms
            t_rel = (ts_ms - self.t0) / 1000.0  # seconds

            self.t.append(t_rel)

            self.roll_meas.append(roll_m)
            self.pitch_meas.append(pitch_m)
            self.yaw_meas.append(yaw_m)

            self.roll_sp.append(roll_sp)
            self.pitch_sp.append(pitch_sp)
            self.yaw_sp.append(yaw_sp)

            self.u_roll.append(u_r)
            self.u_pitch.append(u_p)
            self.u_yaw.append(u_y)
            self.collective.append(u_col)

            self.m1.append(m1)
            self.m2.append(m2)
            self.m3.append(m3)
            self.m4.append(m4)

            self.armed.append(armed)
            self.cmd_age.append(cmd_age_ms / 1000.0)  # seconds


# ---------------------------
# Serial reader thread
# ---------------------------

def parse_ctrl_line(line):
    """
    Parse one CTRL line.
    Returns a tuple with all decoded values or None on parse error.
    """
    # Expect:
    # CTRL,ts,MEAS,r_m,p_m,y_m,SP,r_sp,p_sp,y_sp,U,u_r,u_p,u_y,u_col,
    # PWM,m1,m2,m3,m4,ARM,armed,AGE,cmd_age
    parts = line.strip().split(',')
    if len(parts) != 24:
        return None

    if parts[0] != "CTRL":
        return None

    try:
        ts_ms = int(parts[1])

        # MEAS
        roll_m = float(parts[3])
        pitch_m = float(parts[4])
        yaw_m = float(parts[5])

        # SP
        roll_sp = float(parts[7])
        pitch_sp = float(parts[8])
        yaw_sp = float(parts[9])

        # U
        u_r = float(parts[11])
        u_p = float(parts[12])
        u_y = float(parts[13])
        u_col = float(parts[14])

        # PWM
        m1 = int(parts[16])
        m2 = int(parts[17])
        m3 = int(parts[18])
        m4 = int(parts[19])

        # ARM + AGE
        armed = int(parts[21])
        cmd_age_ms = int(parts[23])

        return (ts_ms,
                roll_m, pitch_m, yaw_m,
                roll_sp, pitch_sp, yaw_sp,
                u_r, u_p, u_y, u_col,
                m1, m2, m3, m4,
                armed, cmd_age_ms)
    except ValueError:
        return None


def serial_reader(port, baud, buffer: FlightLogBuffer, stop_event):
    """
    Background thread that reads from the serial port and feeds the buffer.
    """
    try:
        ser = serial.Serial(port, baudrate=baud, timeout=1.0)
        print(f"[serial_reader] Opened {port} at {baud} baud")
    except Exception as e:
        print(f"[serial_reader] Failed to open {port}: {e}")
        return

    # Flush input
    ser.reset_input_buffer()

    while not stop_event.is_set():
        try:
            raw = ser.readline()
            if not raw:
                continue

            try:
                line = raw.decode('ascii', errors='ignore').strip()
            except AttributeError:
                # Already str
                line = raw.strip()

            if not line:
                continue

            if not line.startswith("CTRL,"):
                continue

            parsed = parse_ctrl_line(line)
            if parsed is None:
                # Uncomment for debugging:
                # print("[parse error]", line)
                continue

            buffer.add_sample(*parsed)

        except Exception as e:
            print(f"[serial_reader] Error: {e}")
            # Small delay to avoid spinning if the port is unhappy
            time.sleep(0.1)

    ser.close()
    print("[serial_reader] Stopped")


# ---------------------------
# Plot / animation setup
# ---------------------------

def create_figure():
    fig, axes = plt.subplots(3, 1, sharex=True, figsize=(10, 8))

    ax_angles = axes[0]
    ax_pwm = axes[1]
    ax_u = axes[2]

    ax_angles.set_ylabel("Angle (deg)")
    ax_pwm.set_ylabel("PWM (µs)")
    ax_u.set_ylabel("Control U")
    ax_u.set_xlabel("Time (s)")

    ax_angles.grid(True)
    ax_pwm.grid(True)
    ax_u.grid(True)

    # Angle lines
    roll_meas_line, = ax_angles.plot([], [], label="roll_meas")
    pitch_meas_line, = ax_angles.plot([], [], label="pitch_meas")
    yaw_meas_line, = ax_angles.plot([], [], label="yaw_meas")

    roll_sp_line, = ax_angles.plot([], [], linestyle="--", label="roll_sp")
    pitch_sp_line, = ax_angles.plot([], [], linestyle="--", label="pitch_sp")
    yaw_sp_line, = ax_angles.plot([], [], linestyle="--", label="yaw_sp")

    ax_angles.legend(loc="upper right")

    # PWM lines
    m1_line, = ax_pwm.plot([], [], label="m1")
    m2_line, = ax_pwm.plot([], [], label="m2")
    m3_line, = ax_pwm.plot([], [], label="m3")
    m4_line, = ax_pwm.plot([], [], label="m4")
    ax_pwm.legend(loc="upper right")

    # Control U lines
    u_r_line, = ax_u.plot([], [], label="u_roll")
    u_p_line, = ax_u.plot([], [], label="u_pitch")
    u_y_line, = ax_u.plot([], [], label="u_yaw")
    u_col_line, = ax_u.plot([], [], label="collective")
    ax_u.legend(loc="upper right")

    fig.tight_layout()
    return fig, axes, {
        "roll_meas": roll_meas_line,
        "pitch_meas": pitch_meas_line,
        "yaw_meas": yaw_meas_line,
        "roll_sp": roll_sp_line,
        "pitch_sp": pitch_sp_line,
        "yaw_sp": yaw_sp_line,
        "m1": m1_line,
        "m2": m2_line,
        "m3": m3_line,
        "m4": m4_line,
        "u_roll": u_r_line,
        "u_pitch": u_p_line,
        "u_yaw": u_y_line,
        "collective": u_col_line,
    }


def main():
    parser = argparse.ArgumentParser(description="Live viewer for STM32 flight controller logs")
    parser.add_argument("-p", "--port", required=True,
                        help="Serial port (e.g. COM5 or /dev/ttyUSB0)")
    parser.add_argument("-b", "--baud", type=int, default=115200,
                        help="Baud rate (default: 115200)")
    args = parser.parse_args()

    buffer = FlightLogBuffer(maxlen=600)
    stop_event = threading.Event()

    reader = threading.Thread(
        target=serial_reader,
        args=(args.port, args.baud, buffer, stop_event),
        daemon=True
    )
    reader.start()

    fig, axes, lines = create_figure()

    def update(frame):
        # Grab a snapshot of current data
        with buffer.lock:
            if not buffer.t:
                return tuple(lines.values())

            t = list(buffer.t)

            # Angles
            roll_meas = list(buffer.roll_meas)
            pitch_meas = list(buffer.pitch_meas)
            yaw_meas = list(buffer.yaw_meas)
            roll_sp = list(buffer.roll_sp)
            pitch_sp = list(buffer.pitch_sp)
            yaw_sp = list(buffer.yaw_sp)

            # PWM
            m1 = list(buffer.m1)
            m2 = list(buffer.m2)
            m3 = list(buffer.m3)
            m4 = list(buffer.m4)

            # U
            u_roll = list(buffer.u_roll)
            u_pitch = list(buffer.u_pitch)
            u_yaw = list(buffer.u_yaw)
            collective = list(buffer.collective)

        # Update line data
        lines["roll_meas"].set_data(t, roll_meas)
        lines["pitch_meas"].set_data(t, pitch_meas)
        lines["yaw_meas"].set_data(t, yaw_meas)
        lines["roll_sp"].set_data(t, roll_sp)
        lines["pitch_sp"].set_data(t, pitch_sp)
        lines["yaw_sp"].set_data(t, yaw_sp)

        lines["m1"].set_data(t, m1)
        lines["m2"].set_data(t, m2)
        lines["m3"].set_data(t, m3)
        lines["m4"].set_data(t, m4)

        lines["u_roll"].set_data(t, u_roll)
        lines["u_pitch"].set_data(t, u_pitch)
        lines["u_yaw"].set_data(t, u_yaw)
        lines["collective"].set_data(t, collective)

        # Rescale axes
        for ax in axes:
            ax.relim()
            ax.autoscale_view()

        return tuple(lines.values())

    ani = FuncAnimation(fig, update, interval=100, blit=False)

    try:
        plt.show()
    finally:
        # Stop reader thread on exit
        stop_event.set()
        time.sleep(0.2)


if __name__ == "__main__":
    main()
