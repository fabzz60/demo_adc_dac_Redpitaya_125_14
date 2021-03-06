
`timescale 1 ns / 1 ps

	module axi_reg_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 7,
		
		parameter integer reg_in_enabled = 1,
		parameter integer port_width_reg_in_00 = 32,
		parameter integer port_width_reg_in_01 = 32,
		parameter integer port_width_reg_in_02 = 32,
		parameter integer port_width_reg_in_03 = 32,
		parameter integer port_width_reg_in_04 = 32,
		parameter integer port_width_reg_in_05 = 32,
		parameter integer port_width_reg_in_06 = 32,
		parameter integer port_width_reg_in_07 = 32,
		parameter integer port_width_reg_in_08 = 32,
		parameter integer port_width_reg_in_09 = 32,
		parameter integer port_width_reg_in_10 = 32,
		parameter integer port_width_reg_in_11 = 32,
		parameter integer port_width_reg_in_12 = 32,
		parameter integer port_width_reg_in_13 = 32,
		parameter integer port_width_reg_in_14 = 32,
		parameter integer port_width_reg_in_15 = 32,
		
		parameter integer reg_out_enabled = 1,
		parameter integer port_width_reg_out_00 = 32,
		parameter integer port_width_reg_out_01 = 32,
		parameter integer port_width_reg_out_02 = 32,
		parameter integer port_width_reg_out_03 = 32,
		parameter integer port_width_reg_out_04 = 32,
		parameter integer port_width_reg_out_05 = 32,
		parameter integer port_width_reg_out_06 = 32,
		parameter integer port_width_reg_out_07 = 32,
		parameter integer port_width_reg_out_08 = 32,
		parameter integer port_width_reg_out_09 = 32,
		parameter integer port_width_reg_out_10 = 32,
		parameter integer port_width_reg_out_11 = 32,
		parameter integer port_width_reg_out_12 = 32,
		parameter integer port_width_reg_out_13 = 32,
		parameter integer port_width_reg_out_14 = 32,
		parameter integer port_width_reg_out_15 = 32
	)
	(
		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready,
		
		input wire [port_width_reg_in_00 - 1 : 0] regIn00,
		input wire [port_width_reg_in_01 - 1 : 0] regIn01,
		input wire [port_width_reg_in_02 - 1 : 0] regIn02,
		input wire [port_width_reg_in_03 - 1 : 0] regIn03,
		input wire [port_width_reg_in_04 - 1 : 0] regIn04,
		input wire [port_width_reg_in_05 - 1 : 0] regIn05,
		input wire [port_width_reg_in_06 - 1 : 0] regIn06,
		input wire [port_width_reg_in_07 - 1 : 0] regIn07,
		input wire [port_width_reg_in_08 - 1 : 0] regIn08,
		input wire [port_width_reg_in_09 - 1 : 0] regIn09,
		input wire [port_width_reg_in_10 - 1 : 0] regIn10,
		input wire [port_width_reg_in_11 - 1 : 0] regIn11, 
		input wire [port_width_reg_in_12 - 1 : 0] regIn12,
		input wire [port_width_reg_in_13 - 1 : 0] regIn13,
		input wire [port_width_reg_in_14 - 1 : 0] regIn14,
		input wire [port_width_reg_in_15 - 1 : 0] regIn15,
		
		output wire [port_width_reg_out_00 - 1 : 0] regOut00,
		output wire [port_width_reg_out_01 - 1 : 0] regOut01,
		output wire [port_width_reg_out_02 - 1 : 0] regOut02,
		output wire [port_width_reg_out_03 - 1 : 0] regOut03,
		output wire [port_width_reg_out_04 - 1 : 0] regOut04,
		output wire [port_width_reg_out_05 - 1 : 0] regOut05,
		output wire [port_width_reg_out_06 - 1 : 0] regOut06,
		output wire [port_width_reg_out_07 - 1 : 0] regOut07,
		output wire [port_width_reg_out_08 - 1 : 0] regOut08,
		output wire [port_width_reg_out_09 - 1 : 0] regOut09,
		output wire [port_width_reg_out_10 - 1 : 0] regOut10,
		output wire [port_width_reg_out_11 - 1 : 0] regOut11,
		output wire [port_width_reg_out_12 - 1 : 0] regOut12,
		output wire [port_width_reg_out_13 - 1 : 0] regOut13,
		output wire [port_width_reg_out_14 - 1 : 0] regOut14,
		output wire [port_width_reg_out_15 - 1 : 0] regOut15
	);
// Instantiation of Axi Bus Interface S00_AXI
	axi_reg_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH),

		.reg_in_enabled(reg_in_enabled),
		.port_width_reg_in_00(port_width_reg_in_00),
		.port_width_reg_in_01(port_width_reg_in_01),
		.port_width_reg_in_02(port_width_reg_in_02),
		.port_width_reg_in_03(port_width_reg_in_03),
		.port_width_reg_in_04(port_width_reg_in_04),
		.port_width_reg_in_05(port_width_reg_in_05),
		.port_width_reg_in_06(port_width_reg_in_06),
		.port_width_reg_in_07(port_width_reg_in_07),
		.port_width_reg_in_08(port_width_reg_in_08),
		.port_width_reg_in_09(port_width_reg_in_09),
		.port_width_reg_in_10(port_width_reg_in_10),
		.port_width_reg_in_11(port_width_reg_in_11),
		.port_width_reg_in_12(port_width_reg_in_12),
		.port_width_reg_in_13(port_width_reg_in_13),
		.port_width_reg_in_14(port_width_reg_in_14),
		.port_width_reg_in_15(port_width_reg_in_15),
		
		.reg_out_enabled(reg_out_enabled),
		.port_width_reg_out_00(port_width_reg_out_00),
		.port_width_reg_out_01(port_width_reg_out_01),
		.port_width_reg_out_02(port_width_reg_out_02),
		.port_width_reg_out_03(port_width_reg_out_03),
		.port_width_reg_out_04(port_width_reg_out_04),
		.port_width_reg_out_05(port_width_reg_out_05),
		.port_width_reg_out_06(port_width_reg_out_06),
		.port_width_reg_out_07(port_width_reg_out_07),
		.port_width_reg_out_08(port_width_reg_out_08),
		.port_width_reg_out_09(port_width_reg_out_09),
		.port_width_reg_out_10(port_width_reg_out_10),
		.port_width_reg_out_11(port_width_reg_out_11),
		.port_width_reg_out_12(port_width_reg_out_12),
		.port_width_reg_out_13(port_width_reg_out_13),
		.port_width_reg_out_14(port_width_reg_out_14),
		.port_width_reg_out_15(port_width_reg_out_15)
		
	) axi_reg_v1_0_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
		
		.regIn00(regIn00),
		.regIn01(regIn01),
		.regIn02(regIn02),
		.regIn03(regIn03),
		.regIn04(regIn04),
		.regIn05(regIn05),
		.regIn06(regIn06),
		.regIn07(regIn07),
		.regIn08(regIn08),
		.regIn09(regIn09),
		.regIn10(regIn10),
		.regIn11(regIn11),
		.regIn12(regIn12),
		.regIn13(regIn13),
		.regIn14(regIn14),
		.regIn15(regIn15),
		
		.regOut00(regOut00),
		.regOut01(regOut01),
		.regOut02(regOut02),
		.regOut03(regOut03),
		.regOut04(regOut04),
		.regOut05(regOut05),
		.regOut06(regOut06),
		.regOut07(regOut07),
		.regOut08(regOut08),
		.regOut09(regOut09),
		.regOut10(regOut10),
		.regOut11(regOut11),
		.regOut12(regOut12),
		.regOut13(regOut13),
		.regOut14(regOut14),
		.regOut15(regOut15)
	);

	// Add user logic here

	// User logic ends

	endmodule
