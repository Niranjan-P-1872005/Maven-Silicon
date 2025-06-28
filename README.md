# 🚀 Sequence Detector FSM - Hackathon Submission (Mavenite Silicon)

Hey there! 👋  
Welcome to my submission for the **Level 2 Hackathon Challenge** by **Mavenite Silicon**.

This project involves designing a **Sequence Detector** for the pattern `10101` using a **Moore FSM** with **overlapping sequence detection**.

---

## 📜 Problem Statement

Design a **sequence detector** that detects the sequence `10101` from an input data stream (**MSB first**).

---

## 🎯 Aim

To implement a sequence detector using **Moore State Machine** logic to detect the **overlapping pattern `10101`** in serial input data.

---

## 🛠️ Tools Used

- **Xilinx Vivado** (for design, simulation, synthesis)
- **Verilog HDL**

---

## 🔧 Project Files

├── Sequence_10101_detector.v # Main Verilog module
├── Sequence_10101_detector_tb.v # Testbench module
├── README.md # Project documentation


---

## 🧠 FSM Design (Moore)

### ➕ States
- `S0` – Idle  
- `S1` – Detected `1`  
- `S10` – Detected `10`  
- `S101` – Detected `101`  
- `S1010` – Detected `1010`  
- `S10101` – Final state (pattern detected ✅)

FSM transitions are based on current input and state, updating the output **only in the final state**, as per Moore FSM rules.

---

## 🧪 Test Case Sample

Input Bitstream:
1 → 0 → 1 → 0 → 1 ✅ Detected
0 → 1 → 0 → 1 ✅ Detected (overlapping)


The `sequence_detected` output goes HIGH on detection.

---

## ✅ Result

- Successfully implemented the FSM in Verilog
- Verified functionality with a testbench in Vivado
- Synthesized the design for FPGA implementation

---

## 👨‍💻 Author

**P. Niranjan**  
College of Engineering, Guindy  
Dept. of Electronics and Communication Engineering  
🎓 Hackathon Level-2 Submission

---

## 📄 License

This project is open-source and free to use for learning and non-commercial purposes. Attribution appreciated!

