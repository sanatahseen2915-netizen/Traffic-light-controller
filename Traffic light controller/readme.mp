# Traffic Light Controller using Verilog

## 📌 Project Description

This project implements a simple **Traffic Light Controller** using Verilog HDL. The controller operates as a finite state machine (FSM) and continuously cycles through three traffic light states: **RED, GREEN, and YELLOW**.

## 🚦 State Sequence

```text
RED → GREEN → YELLOW → RED
```

Only one traffic light is ON at a time.

## 🛠️ Technologies Used

* Verilog HDL
* Digital Logic Design
* Finite State Machine (FSM)
* Icarus Verilog / ModelSim / Vivado

## 📁 Project Structure

```text
traffic-light-controller/
├── src/
│   └── traffic_light_controller.v
├── testbench/
│   └── traffic_light_controller_tb.v
├── simulation/
│   └── waveform.png
├── README.md
└── expected_output.txt
```

## 🔌 Inputs

| Signal  | Description                        |
| ------- | ---------------------------------- |
| `clk`   | Clock signal                       |
| `reset` | Resets the controller to RED state |

## 💡 Outputs

| Signal   | Description          |
| -------- | -------------------- |
| `red`    | Red traffic light    |
| `yellow` | Yellow traffic light |
| `green`  | Green traffic light  |

## ⚙️ Working

1. When `reset` is HIGH, the controller enters the RED state.
2. After a clock edge, it changes to GREEN.
3. The next clock edge changes GREEN to YELLOW.
4. The following clock edge changes YELLOW back to RED.
5. This sequence continues continuously.

## 🧪 Simulation

The testbench generates the clock, applies reset, and monitors the three traffic-light outputs.

Expected sequence:

```text
RED → GREEN → YELLOW → RED → GREEN → YELLOW → ...
```

## ▶️ Running with Icarus Verilog

Compile:

```bash
iverilog -o traffic_light_tb src/traffic_light_controller.v testbench/traffic_light_controller_tb.v
```

Run:

```bash
vvp traffic_light_tb
```

For waveform viewing with GTKWave:

```bash
gtkwave traffic_light_controller.vcd
```

## 🎯 Expected Result

The controller should continuously cycle through:

```text
RED
 ↓
GREEN
 ↓
YELLOW
 ↓
RED
```

## 📚 Applications

* Traffic signal control
* FSM design practice
* Digital electronics projects
* Verilog HDL learning
* FPGA-based traffic control systems

## 👩‍💻 Author

**Shaik Sana Tahseen**

B.Tech – Electronics and Communication Engineering
