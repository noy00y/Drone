# 2025-07-02T14:10:16.252346700
import vitis

client = vitis.create_client()
client.set_workspace(path="Drone")

comp = client.create_hls_component(name = "cnn",cfg_file = ["C:\Users\ozair\Documents\Code_Drive\Drone\hls_files\hls_run.tcl"],template = "empty_hls_component")

comp = client.get_component(name="cnn")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp = client.create_hls_component(name = "hls_component",cfg_file = ["C:\Users\ozair\Documents\Code_Drive\Drone\hls_files\hls_run.tcl"],template = "empty_hls_component")

comp.run(operation="C_SIMULATION")

client.delete_component(name="hls_component")

