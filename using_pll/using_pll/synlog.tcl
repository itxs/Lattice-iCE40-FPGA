source "C:/Users/iTXS/AppData/Local/Synplicity/scm_perforce.tcl"
history clear
project -load using_pll_syn.prj
set_option -top_module top.sv
set_option -vlog_std sysv
project -save C:/embedded/Lattice/examples/using_pll/using_pll/using_pll_syn.prj 
project -run  
set_option -top_module ""
project -run  
set_option -reporting_filter "-from {0} -to {0.01}  -through {0.0001} "
set_option -num_startend_points 5
set_option -reporting_margin -1.0
set_option -reporting_filename using_pll_syn.ta
set_option -reporting_output_srm 0
project -run timing 
set_option -reporting_margin -1.0
set_option -reporting_filter "-from {0} -to {1}  -through {1} "
set_option -reporting_margin -1.0
project -run timing 
project -save C:/embedded/Lattice/examples/using_pll/using_pll/using_pll_syn.prj 
project -close C:/embedded/Lattice/examples/using_pll/using_pll/using_pll_syn.prj
