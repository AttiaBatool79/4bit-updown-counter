# 4-Bit Up/Down Counter on Nexys 4 DDR (Artix-7 FPGA)

This project implements a **4-bit Up/Down Counter** using **Verilog**, specifically designed for the **Nexys 4 DDR FPGA board (Artix-7)**. The counter operates at **1 Hz**, and its value is displayed on **4 LEDs** (binary) and a **7-segment display** (hexadecimal `0`–`F`). The direction of counting (increment or decrement) is controlled via a **switch input**:
- `x = 0` → Increment
- `x = 1` → Decrement

---

## Table of Contents

- [Hardware Used](#hardware-used)
- [Project Objective](#project-objective)
- [Project Structure](#project-structure)
- [Verilog Code](#verilog-code)
- [Vivado Project Setup](#vivado-project-setup)
- [Input/Output Pin Mapping](#inputoutput-pin-mapping)
- [Simulation (Optional)](#simulation-optional)
- [How to Run](#how-to-run)
- [File Attachments](#file-attachments)
- [License](#license)

---

## Hardware Used

- **FPGA Board:** Nexys 4 DDR (Artix-7 XC7A100T-1CSG324C)  
- **LEDs (LD0–LD3):** For binary output  
- **Switch (SW0):** To control count direction  
- **7-Segment Display (CA–CG):** To display hexadecimal value  

---

## Project Objective

Design a 4-bit counter that:
- Counts up when x = 0  
- Counts down when x = 1  
- Operates at 1 Hz using a clock divider  
- Displays value:  
  - Binary on 4 LEDs  
  - Hexadecimal on 1 SSD  

---

## Project Structure

This project consists of the following key elements:
- Verilog source file (`updown_counter.v`)
- Constraints file (`updown_counter.xdc`)
- Optional simulation testbench
- Demo video and schematic image

---

## Verilog Code

The Verilog file `updown_counter.v` implements:
- Clock divider to generate 1 Hz clock
- 4-bit counter logic
- Direction control using input `x`
- LED and 7-segment display output logic

---

## Vivado Project Setup

### Step-by-Step Guide

#### Create a New Vivado Project
1. Open Vivado and create a New Project  
2. Set project name: `4bit_updown_counter`  
3. Select RTL Project (No simulation sources yet)  
4. Choose Nexys 4 DDR (Artix-7 XC7A100T-1CSG324C) as the target FPGA board  

#### Add Sources
- Add the Verilog code (`updown_counter.v`)  

#### Add Constraints
- Import the constraints file (`updown_counter.xdc`) to assign FPGA pins correctly  

#### Synthesize
- Run Synthesis and check for errors  

#### Implement Design
- Run Implementation to generate the bitstream  

#### Generate Bitstream
- Click "Generate Bitstream" after implementation  

#### Program FPGA
- Connect the FPGA board and click "Program Device" in Vivado  

---

## Input/Output Pin Mapping

| Signal       | Connected To | Description                        |
|--------------|--------------|------------------------------------|
| clk          | E3           | 100 MHz onboard clock              |
| x            | SW0          | Direction control switch           |
| leds[3:0]    | LD0–LD3      | Count output in binary             |
| seg[6:0]     | CA–CG        | 7-segment segments                 |

---

## Simulation (Optional)

You can simulate the design using Vivado's built-in simulation tools.  
A testbench file is included to validate the counter logic.

---

## How to Run

1. Open Vivado and create a new project  
2. Add your source files and constraints  
3. Run Synthesis and Implementation  
4. Generate the bitstream  
5. Program the FPGA using Vivado’s hardware manager  

You should now see the 4-bit counter working, with outputs shown on LEDs and a 7-segment display.

---

## File Attachments

- `schematic_diagram.png` — Schematic and block representation of the 4-bit counter design  
- `counter_demo.mp4` — Video demo showing the implemented counter running on Nexys 4 board  

---

## License

This project is licensed under the MIT License.

