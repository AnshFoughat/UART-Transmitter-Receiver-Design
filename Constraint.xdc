Constraints for Transmitter


# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
 
# Switches
set_property PACKAGE_PIN V17 [get_ports {data[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data[0]}]
set_property PACKAGE_PIN V16 [get_ports {data[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data[1]}]
set_property PACKAGE_PIN W16 [get_ports {data[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data[2]}]
set_property PACKAGE_PIN W17 [get_ports {data[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data[3]}]
set_property PACKAGE_PIN W15 [get_ports {data[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data[4]}]
set_property PACKAGE_PIN V15 [get_ports {data[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data[5]}]
set_property PACKAGE_PIN W14 [get_ports {data[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data[6]}]
set_property PACKAGE_PIN W13 [get_ports {data[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data[7]}]
 

## LEDs
set_property PACKAGE_PIN U16 [get_ports {led[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property PACKAGE_PIN E19 [get_ports {led[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property PACKAGE_PIN U19 [get_ports {led[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property PACKAGE_PIN V19 [get_ports {led[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property PACKAGE_PIN W18 [get_ports {led[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
set_property PACKAGE_PIN U15 [get_ports {led[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
set_property PACKAGE_PIN U14 [get_ports {led[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property PACKAGE_PIN V14 [get_ports {led[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
#set_property PACKAGE_PIN V13 [get_ports {LED[8]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {LED[8]}]
#set_property PACKAGE_PIN V3 [get_ports {LED[9]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {LED[9]}]
#set_property PACKAGE_PIN W3 [get_ports {LED[10]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {LED[10]}]
#set_property PACKAGE_PIN U3 [get_ports {LED[11]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {LED[11]}]
#set_property PACKAGE_PIN P3 [get_ports {LED[12]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {LED[12]}]
#set_property PACKAGE_PIN N3 [get_ports {LED[13]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {LED[13]}]
#set_property PACKAGE_PIN P1 [get_ports {LED[14]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {LED[14]}]
#set_property PACKAGE_PIN L1 [get_ports {LED[15]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {LED[15]}]
	
	


##Buttons
#set_property PACKAGE_PIN U18 [get_ports transmit]						
#	set_property IOSTANDARD LVCMOS33 [get_ports transmit]
set_property PACKAGE_PIN T18 [get_ports btn]						
	set_property IOSTANDARD LVCMOS33 [get_ports btn]
set_property PACKAGE_PIN U17 [get_ports rst]						
	set_property IOSTANDARD LVCMOS33 [get_ports rst]
 


#Pmod Header JA
##Sch name = JA1
#set_property PACKAGE_PIN J1 [get_ports Txd_Debug]					
#	set_property IOSTANDARD LVCMOS33 [get_ports Txd_Debug]
##Sch name = JA2
#set_property PACKAGE_PIN L2 [get_ports transmit_Debug]					
#	set_property IOSTANDARD LVCMOS33 [get_ports transmit_Debug]
##Sch name = JA3
#set_property PACKAGE_PIN J2 [get_ports btn_Debug]					
#	set_property IOSTANDARD LVCMOS33 [get_ports btn_Debug]
##Sch name = JA4
#set_property PACKAGE_PIN G2 [get_ports clk_Debug]					
#	set_property IOSTANDARD LVCMOS33 [get_ports clk_Debug]



##USB-RS232 Interface
#set_property PACKAGE_PIN B18 [get_ports RsRx]						
	#set_property IOSTANDARD LVCMOS33 [get_ports RsRx]
set_property PACKAGE_PIN A18 [get_ports Txd]						
	set_property IOSTANDARD LVCMOS33 [get_ports Txd]



Constraints for Receiver

# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk_fpga]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk_fpga]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_fpga]
 
# Switches
#set_property PACKAGE_PIN V17 [get_ports {data[0]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {data[0]}]

## UART RX pin (from FTDI USB-UART bridge, Basys3 uses pin V11)
set_property PACKAGE_PIN B18 [get_ports rxd]
set_property IOSTANDARD LVCMOS33 [get_ports rxd] 

## LEDs
set_property PACKAGE_PIN U16 [get_ports {rxdata[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {rxdata[0]}]
set_property PACKAGE_PIN E19 [get_ports {rxdata[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {rxdata[1]}]
set_property PACKAGE_PIN U19 [get_ports {rxdata[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {rxdata[2]}]
set_property PACKAGE_PIN V19 [get_ports {rxdata[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {rxdata[3]}]
set_property PACKAGE_PIN W18 [get_ports {rxdata[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {rxdata[4]}]
set_property PACKAGE_PIN U15 [get_ports {rxdata[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {rxdata[5]}]
set_property PACKAGE_PIN U14 [get_ports {rxdata[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {rxdata[6]}]
set_property PACKAGE_PIN V14 [get_ports {rxdata[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {rxdata[7]}]
#set_property PACKAGE_PIN V13 [get_ports {LED[8]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {LED[8]}]
#set_property PACKAGE_PIN V3 [get_ports {LED[9]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {LED[9]}]
#set_property PACKAGE_PIN W3 [get_ports {LED[10]}]					

	
	


##Buttons
set_property PACKAGE_PIN U18 [get_ports rst]						
	set_property IOSTANDARD LVCMOS33 [get_ports rst]





