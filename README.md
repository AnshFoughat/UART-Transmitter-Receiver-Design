# UART-Transmitter-Receiver-Design
# UART Transmitter & Receiver with Debouncing (FPGA Project)

🚀 This repository contains my implementation of a **UART Transmitter and Receiver** along with a **Debouncing Circuit** for reliable signal synchronization.  
The project was designed and verified using **Xilinx Vivado** and **Terratum software**, and tested on **FPGA hardware**.

---

## 📌 Project Overview

- **UART Transmitter**:  
  Sends serial data bit by bit, including start and stop bits.  
  Demonstrated by transmitting my **name** and other messages on FPGA hardware.

- **UART Receiver**:  
  Detects incoming data, identifies start and stop bits, and extracts the main data bits.  
  Used **Terratum software** for testing, since it provides built-in functions to automatically detect start/stop bits and isolate the actual data.

- **Debouncing Signal**:  
  Implemented a debouncing mechanism to ensure **clean inputs** when controlling UART transmission.  
  This guarantees proper synchronization and prevents glitches from affecting data transfer.

---

## 🛠️ Tools & Technologies

- **Vivado (Xilinx)** → RTL design & FPGA implementation  
- **Terratum** → Simulation, waveform analysis, and UART protocol validation  
- **FPGA Board** → Hardware testing (Basys 3 / Nexys A7)  

---

## 🎥 Demo & Snapshots

- ✅ Schematics of both **Transmitter** and **Receiver**  
- ✅ Snapshots of **Verilog/SystemVerilog code**  
- ✅ **Demo videos** showing UART in action (transmitting & receiving data)  
- ✅ Debouncing waveforms and test results  

👉 Some demo files are provided in this repository.  
🔒 Full codebase remains private, but feel free to reach out if you’d like to discuss further.  

---

## 📂 Repository Structure

