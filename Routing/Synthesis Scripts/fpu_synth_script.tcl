set_app_var search_path "../NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM"

set_app_var link_library "* NangateOpenCellLibrary_ss0p95vn40c.db"
set_app_var target_library "NangateOpenCellLibrary_ss0p95vn40c.db"

analyze -library work -format verilog {../rtl/sync_fpu.v ../rtl/Register64bit.v ../rtl/Register32bit.v ../rtl/fpu.v ../rtl/BarrelShifter.v ../rtl/MUX2X1.v}

elaborate sync_fpu -lib work
current_design

check_design
source ./cons/cons.tcl
link

compile -map_effort medium

report_area > ./report/sync_fpu_synth_area.rpt
report_cell > ./report/sync_fpu_synth_cells.rpt
report_constraint > ./report/sync_fpu_synth_constraint.rpt

report_qor  > ./report/sync_fpu_synth_qor.rpt
report_resources > ./report/sync_fpu_synth_resources.rpt
report_timing -max_paths 10 > ./report/sync_fpu_synth_timing.rpt
report_power > ./report/sync_fpu_synth_power.rpt

write_sdc  output/sync_fpu.sdc
write_sdf  output/sync_fpu.sdf

define_name_rules  no_case -case_insensitive
change_names -rule no_case -hierarchy
change_names -rule verilog -hierarchy
set verilogout_no_tri    true
set verilogout_equation  false

write -hierarchy -format verilog -output output/sync_fpu.v
write -f ddc -hierarchy -output output/sync_fpu.ddc

report_timing -max_paths 10 -delay min > ./report/sync_fpu_synth_min_timing.rpt