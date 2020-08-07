//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sun Dec  1 23:36:56 2019
//Host        : DESKTOP-LJUAI2B running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top
   (
  inout [14:0]  DDR_addr         ,
  inout [2:0]   DDR_ba           ,
  inout         DDR_cas_n        ,
  inout         DDR_ck_n         ,
  inout         DDR_ck_p         ,
  inout         DDR_cke          ,
  inout         DDR_cs_n         ,
  inout [3:0]   DDR_dm           ,
  inout [31:0]  DDR_dq           ,
  inout [3:0]   DDR_dqs_n        ,
  inout [3:0]   DDR_dqs_p        ,
  inout         DDR_odt          ,
  inout         DDR_ras_n        ,
  inout         DDR_reset_n      ,
  inout         DDR_we_n         ,
  inout         FIXED_IO_ddr_vrn ,
  inout         FIXED_IO_ddr_vrp ,
  inout [53:0]  FIXED_IO_mio     ,
  inout         FIXED_IO_ps_clk  ,
  inout         FIXED_IO_ps_porb ,
  inout         FIXED_IO_ps_srstb,
  output        O_led_green      ,
  output        O_led_red        
);


  wire [14:0]DDR_addr;
  wire [2:0] DDR_ba;
  wire       DDR_cas_n;
  wire       DDR_ck_n;
  wire       DDR_ck_p;
  wire       DDR_cke;
  wire       DDR_cs_n;
  wire [3:0] DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0] DDR_dqs_n;
  wire [3:0] DDR_dqs_p;
  wire       DDR_odt;
  wire       DDR_ras_n;
  wire       DDR_reset_n;
  wire       DDR_we_n;
  wire       FCLK_CLK0_0;
  wire       aresetn;
  wire       FIXED_IO_ddr_vrn;
  wire       FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire       FIXED_IO_ps_clk;
  wire       FIXED_IO_ps_porb;
  wire       FIXED_IO_ps_srstb;
  
  wire [31:0]M00_AXI_0_araddr;
  wire [2:0] M00_AXI_0_arprot;
  wire       M00_AXI_0_arready;
  wire       M00_AXI_0_arvalid;
  wire [31:0]M00_AXI_0_awaddr;
  wire [2:0] M00_AXI_0_awprot;
  wire       M00_AXI_0_awready;
  wire       M00_AXI_0_awvalid;
  wire       M00_AXI_0_bready;
  wire [1:0] M00_AXI_0_bresp;
  wire       M00_AXI_0_bvalid;
  wire [31:0]M00_AXI_0_rdata;
  wire       M00_AXI_0_rready;
  wire [1:0] M00_AXI_0_rresp;
  wire       M00_AXI_0_rvalid;
  wire [31:0]M00_AXI_0_wdata;
  wire       M00_AXI_0_wready;
  wire [3:0] M00_AXI_0_wstrb;
  wire       M00_AXI_0_wvalid;
  
  wire S_emio_led;
  wire [31:0] S_reg1;

  design_1 design_1_i
       (
        //DDR
        .DDR_addr         (DDR_addr),
        .DDR_ba           (DDR_ba),
        .DDR_cas_n        (DDR_cas_n),
        .DDR_ck_n         (DDR_ck_n),
        .DDR_ck_p         (DDR_ck_p),
        .DDR_cke          (DDR_cke),
        .DDR_cs_n         (DDR_cs_n),
        .DDR_dm           (DDR_dm),
        .DDR_dq           (DDR_dq),
        .DDR_dqs_n        (DDR_dqs_n),
        .DDR_dqs_p        (DDR_dqs_p),
        .DDR_odt          (DDR_odt),
        .DDR_ras_n        (DDR_ras_n),
        .DDR_reset_n      (DDR_reset_n),
        .DDR_we_n         (DDR_we_n),
        //CLK
        .FCLK_CLK0_0      (FCLK_CLK0_0),
        .aresetn          (aresetn),
        //FIXED_IO
        .FIXED_IO_ddr_vrn (FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp (FIXED_IO_ddr_vrp),
        .FIXED_IO_mio     (FIXED_IO_mio),
        .FIXED_IO_ps_clk  (FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb (FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        //EMIO
        .GPIO_O_0         (S_emio_led),
        //AXI
        .M00_AXI_0_araddr (M00_AXI_0_araddr ),
        .M00_AXI_0_arprot (M00_AXI_0_arprot ),
        .M00_AXI_0_arready(M00_AXI_0_arready),
        .M00_AXI_0_arvalid(M00_AXI_0_arvalid),
        .M00_AXI_0_awaddr (M00_AXI_0_awaddr ),
        .M00_AXI_0_awprot (M00_AXI_0_awprot ),
        .M00_AXI_0_awready(M00_AXI_0_awready),
        .M00_AXI_0_awvalid(M00_AXI_0_awvalid),
        .M00_AXI_0_bready (M00_AXI_0_bready ),
        .M00_AXI_0_bresp  (M00_AXI_0_bresp  ),
        .M00_AXI_0_bvalid (M00_AXI_0_bvalid ),
        .M00_AXI_0_rdata  (M00_AXI_0_rdata  ),
        .M00_AXI_0_rready (M00_AXI_0_rready ),
        .M00_AXI_0_rresp  (M00_AXI_0_rresp  ),
        .M00_AXI_0_rvalid (M00_AXI_0_rvalid ),
        .M00_AXI_0_wdata  (M00_AXI_0_wdata  ),
        .M00_AXI_0_wready (M00_AXI_0_wready ),
        .M00_AXI_0_wstrb  (M00_AXI_0_wstrb  ),
        .M00_AXI_0_wvalid (M00_AXI_0_wvalid )
    );

led U_led
(
    .I_10m_clk(FCLK_CLK0_0),
    .O_led_out(O_led_green)
);

// Instantiation of Axi Bus Interface S00_AXI
	axi_reg_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(32),
		.C_S_AXI_ADDR_WIDTH(4)
	) axi_reg_v1_0_S00_AXI_inst 
    (
		.S_AXI_ACLK     (FCLK_CLK0_0           ),
		.S_AXI_ARESETN  (aresetn               ),
        
		.S_AXI_AWADDR   (M00_AXI_0_awaddr      ),
		.S_AXI_AWPROT   (M00_AXI_0_awprot      ),
		.S_AXI_AWVALID  (M00_AXI_0_awvalid     ),
		.S_AXI_AWREADY  (M00_AXI_0_awready     ),
		.S_AXI_WDATA    (M00_AXI_0_wdata       ),
		.S_AXI_WSTRB    (M00_AXI_0_wstrb       ),
		.S_AXI_WVALID   (M00_AXI_0_wvalid      ),
		.S_AXI_WREADY   (M00_AXI_0_wready      ),
		.S_AXI_BRESP    (M00_AXI_0_bresp       ),
		.S_AXI_BVALID   (M00_AXI_0_bvalid      ),
		.S_AXI_BREADY   (M00_AXI_0_bready      ),
		.S_AXI_ARADDR   (M00_AXI_0_araddr      ),
		.S_AXI_ARPROT   (M00_AXI_0_arprot      ),
		.S_AXI_ARVALID  (M00_AXI_0_arvalid     ),
		.S_AXI_ARREADY  (M00_AXI_0_arready     ),
		.S_AXI_RDATA    (M00_AXI_0_rdata       ),
		.S_AXI_RRESP    (M00_AXI_0_rresp       ),
		.S_AXI_RVALID   (M00_AXI_0_rvalid      ),
		.S_AXI_RREADY   (M00_AXI_0_rready      ),
        
		.O_reg1         (S_reg1[31:0]      )
	);

assign O_led_red = S_reg1[0];
endmodule
