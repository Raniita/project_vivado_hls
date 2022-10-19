
call xelab xil_defaultlib.apatb_heap_sort_top -prj heap_sort.prj --initfile "C:/Xilinx/Vivado/2016.2/bin/../data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s heap_sort 
call xsim --noieeewarnings heap_sort -tclbatch heap_sort.tcl

