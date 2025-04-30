# 🔢 4-Bit Up/Down Counter on Nexys 4 DDR (Artix-7 FPGA)

This project implements a **4-bit Up/Down Counter** using **Verilog**, specifically designed for the **Nexys 4 DDR FPGA board (Artix-7)**. The counter operates at **1 Hz**, and its value is displayed on **4 LEDs** (binary) and a **7-segment display** (hexadecimal `0`–`F`). The direction of counting (increment or decrement) is controlled via a **switch input**:
- `x = 0` → **Increment**
- `x = 1` → **Decrement**

---

## 📦 Table of Contents

- [🔧 Hardware Used](#-hardware-used)
- [🎯 Project Objective](#-project-objective)
- [📁 Project Structure](#-project-structure)
- [📜 Verilog Code](#-verilog-code)
- [📂 Vivado Project Setup](#-vivado-project-setup)
- [🎛️ Input/Output Pin Mapping](#-inputoutput-pin-mapping)
- [📊 Visual Diagrams](#-visual-diagrams)
- [🎥 Demo Video](#-demo-video)
- [🧪 Simulation (Optional)](#-simulation-optional)
- [📚 How to Run](#-how-to-run)

---

## 🔧 Hardware Used

- 🎛️ **FPGA Board:** Nexys 4 DDR (Artix-7 XC7A100T-1CSG324C)
- 💡 **LEDs (LD0–LD3):** For binary output
- 🔘 **Switch (SW0):** To control count direction
- 📟 **7-Segment Display (CA–CG):** To display hexadecimal value

---

## 🎯 Project Objective

Design a **4-bit counter** that:
- Counts **up when x = 0**
- Counts **down when x = 1**
- Operates at **1 Hz** using a clock divider
- Displays value:
  - **Binary on 4 LEDs**
  - **Hexadecimal on 1 SSD**

---

## 📁 Project Structure

