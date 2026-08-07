# 1-to-4 Demultiplexer using Verilog

## Overview

A **1-to-4 Demultiplexer (DEMUX)** is a combinational logic circuit that routes a single input to one of four outputs based on the values of two select lines.

## Inputs

- D (Data Input)
- S1 (Select Line)
- S0 (Select Line)

## Outputs

- Y0
- Y1
- Y2
- Y3

## Logic Equations

Y0 = D · S1' · S0'

Y1 = D · S1' · S0

Y2 = D · S1 · S0'

Y3 = D · S1 · S0

## Truth Table

| D | S1 | S0 | Y0 | Y1 | Y2 | Y3 |
|---|----|----|----|----|----|----|
|1|0|0|1|0|0|0|
|1|0|1|0|1|0|0|
|1|1|0|0|0|1|0|
|1|1|1|0|0|0|1|

## Project Files

- `demultiplexer.v` – Verilog design
- `demultiplexer_tb.v` – Testbench
- `demultiplexer.vcd` – Waveform file
- `simulation_result.png` – Waveform screenshot

## Simulation

### Compile

```bash
iverilog -o demux demultiplexer.v demultiplexer_tb.v
```

### Run

```bash
vvp demux
```

### View Waveform

```bash
gtkwave demultiplexer.vcd
```

## Applications

- Data distribution
- Memory address decoding
- Communication systems
- Digital signal routing
- Bus control

## Expected Output

| S1 | S0 | Active Output |
|----|----|---------------|
|00|Y0|
|01|Y1|
|10|Y2|
|11|Y3|