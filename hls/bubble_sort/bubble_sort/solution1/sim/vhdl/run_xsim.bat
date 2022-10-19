
call xelab xil_defaultlib.apatb_bubble_sort_top -prj bubble_sort.prj --initfile "C:/Xilinx/Vivado/2016.2/bin/../data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s bubble_sort 
call xsim --noieeewarnings bubble_sort -tclbatch bubble_sort.tcl

