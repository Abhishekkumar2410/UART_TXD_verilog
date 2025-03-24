# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]

	
	
# Switches
set_property PACKAGE_PIN V17 [get_ports {sw[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sw[0]}]
set_property PACKAGE_PIN V16 [get_ports {sw[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sw[1]}]
set_property PACKAGE_PIN W16 [get_ports {sw[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sw[2]}]
set_property PACKAGE_PIN W17 [get_ports {sw[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]
set_property PACKAGE_PIN W15 [get_ports {sw[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sw[4]}]
set_property PACKAGE_PIN V15 [get_ports {sw[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sw[5]}]
set_property PACKAGE_PIN W14 [get_ports {sw[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sw[6]}]
set_property PACKAGE_PIN W13 [get_ports {sw[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sw[7]}]
	
	
	
##Buttons
set_property PACKAGE_PIN U18 [get_ports transmit]						
	set_property IOSTANDARD LVCMOS33 [get_ports transmit]
set_property PACKAGE_PIN T18 [get_ports reset]						
	set_property IOSTANDARD LVCMOS33 [get_ports reset]
	
	
##Pmod Header JA
##Sch name = JA1
##set_property PACKAGE_PIN J1 [get_ports TxD_debug]					
	##set_property IOSTANDARD LVCMOS33 [get_ports TxD_debug]
##Sch name = JA2
##set_property PACKAGE_PIN L2 [get_ports transmit_debug]					
	##set_property IOSTANDARD LVCMOS33 [get_ports transmit_debug]
##Sch name = JA3
##set_property PACKAGE_PIN J2 [get_ports btn_debug]					
	##set_property IOSTANDARD LVCMOS33 [get_ports btn_debug]
##Sch name = JA4
##set_property PACKAGE_PIN G2 [get_ports clk_debug]					
	##set_property IOSTANDARD LVCMOS33 [get_ports clk_debug]
	
	
	##USB-RS232 Interface
set_property PACKAGE_PIN A18 [get_ports TxD]						
	set_property IOSTANDARD LVCMOS33 [get_ports TxD]