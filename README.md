# Matrix Multiplication Using Verilog

## Overview
This project implements **hardware-accelerated matrix multiplication** using Verilog. The design includes:
- **Memory Fetching:** Fetches matrix elements from memory.
- **ALU Array:** Computes element-wise multiplications.
- **Accumulator:** Adds partial results to obtain the final matrix.

Matrix multiplication is widely used in **digital signal processing (DSP), AI accelerators, and embedded systems**. This project demonstrates a **custom hardware implementation** of a 2×2 matrix multiplication.

---

## Block Diagram

┌───────────────┐        ┌───────────────┐        ┌───────────────┐
│   MemFetch    │  --->  │   ALU Array   │  --->  │ Add Accumulator │
└───────────────┘        └───────────────┘        └───────────────┘
   Fetches matrix           Computes element-         Adds products to
   elements from            wise multiplications      get final result
   memory and feeds         and outputs partial      (C11, C12, C21, C22)
   to ALU                   products.
