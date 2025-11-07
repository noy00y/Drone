# fxp_conv.py
from typing import List, Literal

Frac = 14  # Q1.15

def sat_signed(value: int, bits: int) -> int:
    lo = -(1 << (bits - 1))
    hi =  (1 << (bits - 1)) - 1
    return max(lo, min(hi, value))

def round_trunc_q(x_raw: int, frac_bits: int = Frac) -> int:
    # arithmetic shift right (floor toward -inf for negatives)
    return x_raw >> frac_bits

def round_nearest_sym_q(x_raw: int, frac_bits: int = Frac) -> int:
    # symmetric round-to-nearest (ties away from zero)
    if x_raw >= 0:
        return (x_raw + (1 << (frac_bits - 1))) >> frac_bits
    else:
        ax = -x_raw
        y = (ax + (1 << (frac_bits - 1))) >> frac_bits
        return -y

def round_nearest_even_q(x_raw: int, frac_bits: int = Frac) -> int:
    # unbiased round-to-nearest-even
    sign = -1 if x_raw < 0 else 1
    ax = abs(x_raw)
    y = ax >> frac_bits
    rem = ax & ((1 << frac_bits) - 1)
    half = 1 << (frac_bits - 1)
    if rem > half or (rem == half and (y & 1) == 1):
        y += 1
    return sign * y

def q15_to_float(x_raw: int) -> float:
    return x_raw / float(1 << Frac)

def dot_q15(
    pixels_u8: List[int],
    weights_q15: List[int],
    bias_q15: int = 0,
):
    """
    Returns:
      acc_q15_raw: raw accumulator in Q1.15 integer units (no narrowing yet)
      as_float:    float value (acc_q15_raw / 2^15)
    """
    acc = int(bias_q15)
    for p, w in zip(pixels_u8, weights_q15):
        # p is 0..255, w is signed 16-bit (two's complement) in Q1.15
        w = (w + 2**15) % 2**16 - 2**15  # force to signed16
        acc += int(p) * int(w)           # still in Q1.15 units
    return acc, q15_to_float(acc)

def pack_q15_with_saturation(acc_q15_raw: int) -> int:
    """Clamp raw Q1.15 to 16-bit signed (Q1.15), e.g., -1.0 -> 0x8000, +max -> 0x7FFF."""
    return sat_signed(acc_q15_raw, 16)

if __name__ == "__main__":
    # === MIXED_SIGNS_ROUND example from your TB ===
    pixels = [5,12,0,255,128,127,64,33,1,
              9,2,3,4,5,6,7,8,9,
              10,11,12,13,14,15,16,17,18]
    weights_hex = ["4000","C000","2000","E000","1000","F000",
        "0800","F800","0400","FC00","0200","FE00",
        "0100","FF00","0080","FF80","0040","FFC0",
        "0020","FFE0","0010","FFF0","0008","FFF8",
        "0004","FFFC","0002"]
    weights = [int(h,16) if int(h,16) < 0x8000 else int(h,16)-0x10000 for h in weights_hex]
    bias = 0x0001  # tiny bias

    acc_q15_raw, as_float = dot_q15(pixels, weights, bias)
    print(f"Raw Q1.15 acc: {acc_q15_raw}  (hex 0x{(acc_q15_raw & 0xFFFFFFFF):08X})")
    print(f"As real:       {as_float}")

    # Convert to integer output by shifting >> 15 with different policies:
    y_trunc = round_trunc_q(acc_q15_raw)
    y_rns   = round_nearest_sym_q(acc_q15_raw)
    y_rne   = round_nearest_even_q(acc_q15_raw)
    print(f">>15 trunc:    {y_trunc}")
    print(f">>15 nearest±: {y_rns}")
    print(f">>15 nearestE: {y_rne}")

    # Saturation at 16 bits:
    q15_packed = pack_q15_with_saturation(acc_q15_raw)
    print(f"Saturated Q1.15 (16b): 0x{(q15_packed & 0xFFFF):04X}")
