# 4-Bit Up/Down Counter on Nexys 4 DDR (Artix-7 FPGA)

This project implements a **4-bit Up/Down Counter** using **Verilog**, specifically designed for the **Nexys 4 DDR FPGA board (Artix-7)**. The counter operates at **1 Hz**, and its value is displayed on **4 LEDs** (binary) and a **7-segment display** (hexadecimal `0`–`F`). The direction of counting (increment or decrement) is controlled via a **switch input**:  
- `x = 0` → **Increment**  
- `x = 1` → **Decrement**

---

## Table of Contents

- [Hardware Used](#hardware-used)  
- [Project Objective](#project-objective)  
- [Project Structure](#project-structure)  
- [Verilog Code](#verilog-code)  
- [Vivado Project Setup](#vivado-project-setup)  
- [Input/Output Pin Mapping](#inputoutput-pin-mapping)  
- [Visual Diagrams](#visual-diagrams)  
- [Demo Video](#demo-video)  
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

Design a **4-bit counter** that:  
- Counts **up when x = 0**  
- Counts **down when x = 1**  
- Operates at **1 Hz** using a clock divider  
- Displays value:  
  - **Binary on 4 LEDs**  
  - **Hexadecimal on 1 SSD**  

---

## Project Structure

The project is structured into the following modules and files:
- `updown_counter.v` - Verilog module for counter logic  
- `updown_counter.xdc` - Constraints file for pin mapping  
- Optional simulation testbench file  

---

## Verilog Code

The main functionality of the 4-bit counter is implemented in `updown_counter.v`. This module uses the `clk` input for counting and `x` input for direction control.

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
- Click `Generate Bitstream` after implementation  

#### Program FPGA
- Connect the FPGA board and click `Program Device` in Vivado  

---

## Input/Output Pin Mapping

| Signal       | Connected To | Description                        |
|--------------|--------------|------------------------------------|
| clk          | W5           | 100 MHz onboard clock              |
| x            | SW0          | Direction control switch           |
| leds[3:0]    | LD0–LD3      | Count output in binary             |
| seg[6:0]     | CA–CG        | 7-segment segments                 |
| an[3:0]      | AN0–AN3      | Only AN0 enabled                   |

---

## Visual Diagrams

- RTL Schematic  
- Technology Schematic  
- Simulation Waveform  
- Block Diagram  

---

## Demo Video

Watch the full demo on hardware:  
*Click to watch*

---

## Simulation (Optional)

You can simulate the design using Vivado's built-in simulation feature.  
A testbench file is provided to verify the up/down counter logic.

---

## How to Run

1. Open Vivado and create a new project  
2. Add your source files and constraints  
3. Run Synthesis and Implementation  
4. Generate the bitstream  
5. Program the FPGA using Vivado’s hardware manager  

You should now see the 4-bit counter working on the Nexys 4 board with binary output on LEDs and hexadecimal display on the 7-segment.

---

## File Attachments

- `updown_counter.v` - Verilog module source code  
- `updown_counter.xdc` - Constraints file for pin assignments  

These files are essential for compiling and programming the FPGA in Vivado.

---

## License

This project is licensed under the **MIT License**.  
You are free to use, modify, and distribute it for personal or academic purposes.
