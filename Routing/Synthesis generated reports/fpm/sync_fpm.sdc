###################################################################

# Created by write_sdc on Sun Dec 24 18:39:33 2023

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_load -pin_load 10 [get_ports {product[31]}]
set_load -pin_load 10 [get_ports {product[30]}]
set_load -pin_load 10 [get_ports {product[29]}]
set_load -pin_load 10 [get_ports {product[28]}]
set_load -pin_load 10 [get_ports {product[27]}]
set_load -pin_load 10 [get_ports {product[26]}]
set_load -pin_load 10 [get_ports {product[25]}]
set_load -pin_load 10 [get_ports {product[24]}]
set_load -pin_load 10 [get_ports {product[23]}]
set_load -pin_load 10 [get_ports {product[22]}]
set_load -pin_load 10 [get_ports {product[21]}]
set_load -pin_load 10 [get_ports {product[20]}]
set_load -pin_load 10 [get_ports {product[19]}]
set_load -pin_load 10 [get_ports {product[18]}]
set_load -pin_load 10 [get_ports {product[17]}]
set_load -pin_load 10 [get_ports {product[16]}]
set_load -pin_load 10 [get_ports {product[15]}]
set_load -pin_load 10 [get_ports {product[14]}]
set_load -pin_load 10 [get_ports {product[13]}]
set_load -pin_load 10 [get_ports {product[12]}]
set_load -pin_load 10 [get_ports {product[11]}]
set_load -pin_load 10 [get_ports {product[10]}]
set_load -pin_load 10 [get_ports {product[9]}]
set_load -pin_load 10 [get_ports {product[8]}]
set_load -pin_load 10 [get_ports {product[7]}]
set_load -pin_load 10 [get_ports {product[6]}]
set_load -pin_load 10 [get_ports {product[5]}]
set_load -pin_load 10 [get_ports {product[4]}]
set_load -pin_load 10 [get_ports {product[3]}]
set_load -pin_load 10 [get_ports {product[2]}]
set_load -pin_load 10 [get_ports {product[1]}]
set_load -pin_load 10 [get_ports {product[0]}]
create_clock [get_ports clk]  -period 20  -waveform {0 10}
set_clock_uncertainty 0.1  [get_clocks clk]
set_false_path   -from [get_ports rst]
set_false_path -hold   -from [list [get_ports {A[31]}] [get_ports {A[30]}] [get_ports {A[29]}]       \
[get_ports {A[28]}] [get_ports {A[27]}] [get_ports {A[26]}] [get_ports         \
{A[25]}] [get_ports {A[24]}] [get_ports {A[23]}] [get_ports {A[22]}]           \
[get_ports {A[21]}] [get_ports {A[20]}] [get_ports {A[19]}] [get_ports         \
{A[18]}] [get_ports {A[17]}] [get_ports {A[16]}] [get_ports {A[15]}]           \
[get_ports {A[14]}] [get_ports {A[13]}] [get_ports {A[12]}] [get_ports         \
{A[11]}] [get_ports {A[10]}] [get_ports {A[9]}] [get_ports {A[8]}] [get_ports  \
{A[7]}] [get_ports {A[6]}] [get_ports {A[5]}] [get_ports {A[4]}] [get_ports    \
{A[3]}] [get_ports {A[2]}] [get_ports {A[1]}] [get_ports {A[0]}] [get_ports    \
{B[31]}] [get_ports {B[30]}] [get_ports {B[29]}] [get_ports {B[28]}]           \
[get_ports {B[27]}] [get_ports {B[26]}] [get_ports {B[25]}] [get_ports         \
{B[24]}] [get_ports {B[23]}] [get_ports {B[22]}] [get_ports {B[21]}]           \
[get_ports {B[20]}] [get_ports {B[19]}] [get_ports {B[18]}] [get_ports         \
{B[17]}] [get_ports {B[16]}] [get_ports {B[15]}] [get_ports {B[14]}]           \
[get_ports {B[13]}] [get_ports {B[12]}] [get_ports {B[11]}] [get_ports         \
{B[10]}] [get_ports {B[9]}] [get_ports {B[8]}] [get_ports {B[7]}] [get_ports   \
{B[6]}] [get_ports {B[5]}] [get_ports {B[4]}] [get_ports {B[3]}] [get_ports    \
{B[2]}] [get_ports {B[1]}] [get_ports {B[0]}]]
set_false_path -hold   -to [list [get_ports {product[31]}] [get_ports {product[30]}] [get_ports      \
{product[29]}] [get_ports {product[28]}] [get_ports {product[27]}] [get_ports  \
{product[26]}] [get_ports {product[25]}] [get_ports {product[24]}] [get_ports  \
{product[23]}] [get_ports {product[22]}] [get_ports {product[21]}] [get_ports  \
{product[20]}] [get_ports {product[19]}] [get_ports {product[18]}] [get_ports  \
{product[17]}] [get_ports {product[16]}] [get_ports {product[15]}] [get_ports  \
{product[14]}] [get_ports {product[13]}] [get_ports {product[12]}] [get_ports  \
{product[11]}] [get_ports {product[10]}] [get_ports {product[9]}] [get_ports   \
{product[8]}] [get_ports {product[7]}] [get_ports {product[6]}] [get_ports     \
{product[5]}] [get_ports {product[4]}] [get_ports {product[3]}] [get_ports     \
{product[2]}] [get_ports {product[1]}] [get_ports {product[0]}]]
set_input_delay -clock clk  -max 0.2  [get_ports rst]
set_input_delay -clock clk  -max 0.2  [get_ports {A[31]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[30]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[29]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[28]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[27]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[26]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[25]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[24]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[23]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[22]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[21]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[20]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[19]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[18]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[17]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[16]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[15]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[14]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[13]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[12]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[11]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[10]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[9]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[8]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[7]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[6]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[5]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[4]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[3]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[2]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[1]}]
set_input_delay -clock clk  -max 0.2  [get_ports {A[0]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[31]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[30]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[29]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[28]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[27]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[26]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[25]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[24]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[23]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[22]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[21]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[20]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[19]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[18]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[17]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[16]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[15]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[14]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[13]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[12]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[11]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[10]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[9]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[8]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[7]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[6]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[5]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[4]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[3]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[2]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[1]}]
set_input_delay -clock clk  -max 0.2  [get_ports {B[0]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[31]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[30]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[29]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[28]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[27]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[26]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[25]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[24]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[23]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[22]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[21]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[20]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[19]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[18]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[17]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[16]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[15]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[14]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[13]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[12]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[11]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[10]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[9]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[8]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[7]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[6]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[5]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[4]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[3]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[2]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[1]}]
set_output_delay -clock clk  -max 0.5  [get_ports {product[0]}]
