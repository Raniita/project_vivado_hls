
call xelab xil_defaultlib.apatb_insertion_sort_top -prj insertion_sort.prj --initfile "C:/Xilinx/Vivado/2016.2/bin/../data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s insertion_sort 
call xsim --noieeewarnings insertion_sort -tclbatch insertion_sort.tcl

