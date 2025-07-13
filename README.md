# 📐 8x8 Signed Multiplier in Verilog (2’s Complement)

This project implements a **signed 8-bit × 8-bit multiplier** using **Verilog HDL**, based on 2’s complement arithmetic. It uses logic gates (AND, NAND) and shift-and-add principles to perform multiplication, including sign correction.

---

# Background: 2’s Complement Multiplication

Given two 8-bit signed numbers `A8` and `B8` in 2's complement:

A8 = -a7·2⁷ + A7 where A7 = a6a5a4a3a2a1a0
B8 = -b7·2⁷ + B7 where B7 = b6b5b4b3b2b1b0

yaml
Copy
Edit

The product:

Z16 = A8 × B8
= (-a7·2⁷ + A7) × (-b7·2⁷ + B7)
= a7·b7·2¹⁴ + (−a7·B7)·2⁷ + (−b7·A7)·2⁷ + A7·B7


---

# Modules Included

### 1. `sign_multiplier`

Implements multiplication using **combinational logic** and **bitwise operations**, including:
- AND-based partial product generation
- Inversion using `~`
- 2’s complement correction using shift and `+1`
- Final output `z` is the signed product


3. top_sign_mult
Top-level module that instantiates both multiplier versions:

verilog
Copy
Edit
mul_sign_2      utt1(.a(a), .b(b), .z(z1));
sign_multiplier utt2(.a(a), .b(b), .z(z2));
4. tb_for_sign_mult (Testbench)
Tests multiple signed/unsigned values



How to Use
Load all .v files into Vivado, ModelSim, or any Verilog simulator.

Run the testbench tb_for_sign_mult.

Observe waveform or console for result matching.

