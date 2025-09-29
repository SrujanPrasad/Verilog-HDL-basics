# Verilog HDL
This repository contains all the Verilog code of combinational and sequential circuits.


## 1. Basic Gates 

The basic gates are : 
```mermaid
graph TD;
Gates-->NOT;
Gates-->AND;
Gates-->OR;
Gates-->NAND;
Gates-->NOR;
Gates-->XOR;
Gates-->XNOR;
```

- y[0] represents the NOT operation of a
- y[1] represents the AND operation of a and b
- y[2] represents the OR operation of a and b
- y[3] represents the NAND operation of a and b
- y[4] represents the NOR operation of a and b
- y[5] represents the XOR operation of a and b
- y[6] represents the XNOR operation of a and b

The simulation waveforms of the basic gates are shown in - ([OUTPUT](https://github.com/SrujanPrasad/Verilog-HDL-basics/blob/9c629b2cce5f6b5224f43adf19c60b91f20ffe08/Basic%20Gates/Basic_gates.png)) and ([Waveforms](https://github.com/SrujanPrasad/Verilog-HDL-basics/blob/9c629b2cce5f6b5224f43adf19c60b91f20ffe08/Basic%20Gates/Basic_gates_waveforms.png))

## 2. Combinational Circuits 
```mermaid
graph TD;
comb-->HalfAdder;
comb-->FullAdder;
comb-->Multiplexer;
comb-->Demultiplexer;
comb-->Encoder;
comb-->Decoder;
comb-->PriorityEncoder;
```
### Half Adder :
  The Verilog code for a half adder has been written in three modelling styles -  Structural/Gate level, Dataflow, and Behavioural modelling. ([HALF_ADDER](https://github.com/SrujanPrasad/Verilog-HDL-basics/tree/9c629b2cce5f6b5224f43adf19c60b91f20ffe08/Comb/half_adder))
  <br> <div align="center"> 
  **Truth Table** :

| A | B | Sum | Carry |
|:-:|:-:|:---:|:----:|
| 0 | 0 |  0  |  0   |
| 0 | 1 |  1  |  0   |
| 1 | 0 |  1  |  0   |
| 1 | 1 |  0  |  1   |

</div>

### Full Adder : 
The Verilog code for a half adder has been written in three modelling styles -  Structural/Gate level, Dataflow, and Behavioural modelling. ([FULL_ADDER](https://github.com/SrujanPrasad/Verilog-HDL-basics/tree/9c629b2cce5f6b5224f43adf19c60b91f20ffe08/Comb/full_adder))

 <br> <div align="center"> 
  **Truth Table** :
| A | B | Cin | Sum | Carry |
|:-:|:-:|:---:|:---:|:----:|
| 0 | 0 |  0  |  0  |  0   |
| 0 | 0 |  1  |  1  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 0 | 1 |  1  |  0  |  1   |
| 1 | 0 |  0  |  1  |  0   |
| 1 | 0 |  1  |  0  |  1   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |

</div>

The simulation waveforms of both Half Adder and Full Adder are shown here : ([Half_adder_waveforms](https://github.com/SrujanPrasad/Verilog-HDL-basics/blob/9c629b2cce5f6b5224f43adf19c60b91f20ffe08/Comb/half_adder/half_adder_waveform.png)) ([Full_adder_waveforms](https://github.com/SrujanPrasad/Verilog-HDL-basics/blob/9c629b2cce5f6b5224f43adf19c60b91f20ffe08/Comb/full_adder/full_adder_waveforms.png))

### 2:1 MUX 
The 2:1 mux is a data selection circuit that selects between the inputs based on the select line (consists of **2 inputs ,one select line and 1 output**) and connects it to the output. The codes and simulation results are in : ([21MUX](https://github.com/SrujanPrasad/Verilog-HDL-basics/tree/e53a532845ced5043de5e60925aef1d0a915a8f9/Comb/21_MUX))

### 4:1 MUX 
The 4:1 mux is a data selection circuit that selects between the inputs based on the select line (consists of **4 inputs, two select lines and 1 output**) and connects it to the output. The codes and simulation results are in : ([41MUX](https://github.com/SrujanPrasad/Verilog-HDL-basics/tree/e53a532845ced5043de5e60925aef1d0a915a8f9/Comb/41_mux))

### 8:1 MUX 
The 8:1 mux is a data selection circuit that selects between the inputs based on the select line (consists of **8 inputs, three select lines and 1 output**) and connects it to the output. The codes and simulation results are in : ([81MUX](https://github.com/SrujanPrasad/Verilog-HDL-basics/tree/e53a532845ced5043de5e60925aef1d0a915a8f9/Comb/81_mux))

### Demux 
The demultiplexer is a combinational circuit that has 1 input and n outputs with log base 2 (n) select lines. The codes and simulation results are in : ([DEMUX](https://github.com/SrujanPrasad/Verilog-HDL-basics/tree/e53a532845ced5043de5e60925aef1d0a915a8f9/Comb/demux))

### Encoder 
The encoder is a combinational circuit consisting of n inputs and m outputs (n<m) that encodes the data to be transmitted into its binary form. The codes and simulation results are in : ([ENCODERS](https://github.com/SrujanPrasad/Verilog-HDL-basics/tree/e53a532845ced5043de5e60925aef1d0a915a8f9/Comb/Encoder))

### Decoder 
The decoder is a combinational circuit that consists of n inputs and m outputs (n>m) and decodes the data transmitted into its binary form. The codes and simulation results are in : ([DECODERS](https://github.com/SrujanPrasad/Verilog-HDL-basics/tree/e53a532845ced5043de5e60925aef1d0a915a8f9/Comb/decoder))

### 


