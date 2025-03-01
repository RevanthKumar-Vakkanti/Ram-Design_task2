# RAM DESIGN 

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: VAKKANTI LAKSHMI REVANTH KUMAR

*INTERN ID*: CT08VZT

*DOMAIN*: VLSI

*DURATION*: 4 WEEKS

*MENTOR*: NEELA SANTOSH KUMAR

## DESCRIPTION: TASK-2

=> Develop a simple *synchronous ram module* with read and write operations.

  * Synchronous RAM (syn_ram) is a memory module that operates in sync with a clock signal. Unlike asynchronous RAM, which allows immediate access to memory, synchronous RAM updates and retrieves data only on the clock's rising edge.
  
  * Key Features of syn_ram Design:
  
    1. Memory Array: The design includes a 2D memory array (reg [7:0] mem[31:0]), which consists of 32 locations, each 8 bits wide.
       
    2. Clock-based Operation: All memory operations occur at the positive edge of the clock (posedge clk).
       
    4. Write Enable (w_en) Control:
       
       - If w_en = 1, the input data (din) is stored at the given address.
         
       - If w_en = 0, the stored data is read from the specified address.
         
    6. Data Output (dout) Behavior:

       - During a write operation, dout is temporarily set to 0 (optional behavior).
       
       - During a read operation, dout reflects the data stored in memory.

=> Tools: *Xilinx Vivado and EDA Playground.*

=> Applictions: 

  1. Cache Memory – Used in processors for fast data access.
    
  2. Data Buffers – Temporarily stores data in communication interfaces.
     
  3. FIFO Queues – Helps manage data in pipelines.
    
  4. Embedded Systems – Used in FPGA/ASIC memory designs.
     
## OUTPUT WAVEFORM: 

![Image](https://github.com/user-attachments/assets/08da7b03-2ec2-4954-a7a5-65099dbecc4a)

## OUTPUT WAVEFORM INCULDING MEMORY: 

![Image](https://github.com/user-attachments/assets/0f22e2f7-7f3b-4451-98ed-370663694098)

## SCHEMATIC DIAGRAM: 

