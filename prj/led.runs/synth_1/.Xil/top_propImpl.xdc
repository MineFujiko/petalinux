set_property SRC_FILE_INFO {cfile:f:/20_My_Project/00_FPGA/Vivado2020/20200315_axi_reg_ok/prj/led.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0/design_1_processing_system7_0_0_in_context.xdc rfile:../../../led.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0/design_1_processing_system7_0_0_in_context.xdc id:1 order:EARLY scoped_inst:design_1_i/processing_system7_0} [current_design]
set_property SRC_FILE_INFO {cfile:F:/20_My_Project/00_FPGA/Vivado2020/20200315_axi_reg_ok/xdc/top.xdc rfile:../../../../xdc/top.xdc id:2} [current_design]
current_instance design_1_i/processing_system7_0
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 20.000 [get_ports {}]
current_instance
set_property src_info {type:XDC file:2 line:1 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W13      [get_ports O_led_green]
set_property src_info {type:XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W14      [get_ports O_led_red]
