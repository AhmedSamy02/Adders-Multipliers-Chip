void main(List<String> args) {
  String design = args[0];
  String file = '';
  if (args.length == 2) {
    file = args[1];
    if (file != '') {
      file = '../rtl/$file.v';
    }
  }
  print('''
analyze -library work -format verilog {../rtl/$design.v ../rtl/Register64bit.v ../rtl/Register32bit.v $file}

elaborate $design -lib work
current_design 

check_design
source ./cons/cons.tcl
link

compile -map_effort medium

report_area > ./report/${design}_synth_area.rpt
report_cell > ./report/${design}_synth_cells.rpt
report_constraint > ./report/${design}_synth_constraint.rpt

report_qor  > ./report/${design}_synth_qor.rpt
report_resources > ./report/${design}_synth_resources.rpt
report_timing -max_paths 10 > ./report/${design}_synth_timing.rpt 
report_power > ./report/${design}_synth_power.rpt
 
write_sdc  output/${design}.sdc 
write_sdf  output/${design}.sdf 

define_name_rules  no_case -case_insensitive
change_names -rule no_case -hierarchy
change_names -rule verilog -hierarchy
set verilogout_no_tri	 true
set verilogout_equation  false

write -hierarchy -format verilog -output output/${design}.v 
write -f ddc -hierarchy -output output/${design}.ddc
''');
  print(
      'report_timing -max_paths 10 -delay min > ./report/${design}_synth_min_timing.rpt');
}
