// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Fri Dec  8 17:01:25 2017
// Host        : T460p running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/thomas/Documents/school/master/semester_4/master/code/pendulum_full/pendulum_full.srcs/sources_1/bd/design_1/ip/design_1_zybo_cart_counter_v1_0_0_0/design_1_zybo_cart_counter_v1_0_0_0_sim_netlist.v
// Design      : design_1_zybo_cart_counter_v1_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_zybo_cart_counter_v1_0_0_0,zybo_cart_counter_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "zybo_cart_counter_v1_0,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module design_1_zybo_cart_counter_v1_0_0_0
   (clk,
    A,
    B,
    Z,
    emend,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  input A;
  input B;
  input Z;
  input emend;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire A;
  wire B;
  wire Z;
  wire clk;
  wire emend;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_zybo_cart_counter_v1_0_0_0_zybo_cart_counter_v1_0 U0
       (.A(A),
        .B(B),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .Z(Z),
        .clk(clk),
        .emend(emend),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "cart_counter" *) 
module design_1_zybo_cart_counter_v1_0_0_0_cart_counter
   (dir,
    Q,
    cal_i,
    B,
    clk,
    A,
    Z,
    emend);
  output dir;
  output [31:0]Q;
  output cal_i;
  input B;
  input clk;
  input A;
  input Z;
  input emend;

  wire A;
  wire B;
  wire [31:0]Q;
  wire T;
  wire Z;
  wire cal_i;
  wire clk;
  wire dir;
  wire emend;
  wire incr_quad_inst_n_2;
  wire last_tick_i;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__0_n_4;
  wire minusOp_carry__0_n_5;
  wire minusOp_carry__0_n_6;
  wire minusOp_carry__0_n_7;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__1_n_4;
  wire minusOp_carry__1_n_5;
  wire minusOp_carry__1_n_6;
  wire minusOp_carry__1_n_7;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_i_3_n_0;
  wire minusOp_carry__2_i_4_n_0;
  wire minusOp_carry__2_n_0;
  wire minusOp_carry__2_n_1;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__2_n_4;
  wire minusOp_carry__2_n_5;
  wire minusOp_carry__2_n_6;
  wire minusOp_carry__2_n_7;
  wire minusOp_carry__3_i_1_n_0;
  wire minusOp_carry__3_i_2_n_0;
  wire minusOp_carry__3_i_3_n_0;
  wire minusOp_carry__3_i_4_n_0;
  wire minusOp_carry__3_n_0;
  wire minusOp_carry__3_n_1;
  wire minusOp_carry__3_n_2;
  wire minusOp_carry__3_n_3;
  wire minusOp_carry__3_n_4;
  wire minusOp_carry__3_n_5;
  wire minusOp_carry__3_n_6;
  wire minusOp_carry__3_n_7;
  wire minusOp_carry__4_i_1_n_0;
  wire minusOp_carry__4_i_2_n_0;
  wire minusOp_carry__4_i_3_n_0;
  wire minusOp_carry__4_i_4_n_0;
  wire minusOp_carry__4_n_0;
  wire minusOp_carry__4_n_1;
  wire minusOp_carry__4_n_2;
  wire minusOp_carry__4_n_3;
  wire minusOp_carry__4_n_4;
  wire minusOp_carry__4_n_5;
  wire minusOp_carry__4_n_6;
  wire minusOp_carry__4_n_7;
  wire minusOp_carry__5_i_1_n_0;
  wire minusOp_carry__5_i_2_n_0;
  wire minusOp_carry__5_i_3_n_0;
  wire minusOp_carry__5_i_4_n_0;
  wire minusOp_carry__5_n_0;
  wire minusOp_carry__5_n_1;
  wire minusOp_carry__5_n_2;
  wire minusOp_carry__5_n_3;
  wire minusOp_carry__5_n_4;
  wire minusOp_carry__5_n_5;
  wire minusOp_carry__5_n_6;
  wire minusOp_carry__5_n_7;
  wire minusOp_carry__6_i_1_n_0;
  wire minusOp_carry__6_i_2_n_0;
  wire minusOp_carry__6_i_3_n_0;
  wire minusOp_carry__6_i_4_n_0;
  wire minusOp_carry__6_n_1;
  wire minusOp_carry__6_n_2;
  wire minusOp_carry__6_n_3;
  wire minusOp_carry__6_n_4;
  wire minusOp_carry__6_n_5;
  wire minusOp_carry__6_n_6;
  wire minusOp_carry__6_n_7;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_i_5_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire minusOp_carry_n_4;
  wire minusOp_carry_n_5;
  wire minusOp_carry_n_6;
  wire minusOp_carry_n_7;
  wire [31:0]next_pos_i;
  wire \next_pos_i_reg[31]_i_1_n_0 ;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire [3:3]NLW_minusOp_carry__6_CO_UNCONNECTED;

  FDSE #(
    .INIT(1'b0)) 
    cal_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(cal_i),
        .Q(cal_i),
        .S(\state[1]_i_1_n_0 ));
  design_1_zybo_cart_counter_v1_0_0_0_incremental_quadrature incr_quad_inst
       (.A(A),
        .B(B),
        .T(T),
        .Z(Z),
        .clk(clk),
        .dir(dir),
        .emend(emend),
        .last_tick_i(last_tick_i),
        .last_tick_i_reg(incr_quad_inst_n_2));
  FDRE #(
    .INIT(1'b0)) 
    last_tick_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(incr_quad_inst_n_2),
        .Q(last_tick_i),
        .R(1'b0));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Q[2],minusOp_carry_i_1_n_0,Q[1:0]}),
        .O({minusOp_carry_n_4,minusOp_carry_n_5,minusOp_carry_n_6,minusOp_carry_n_7}),
        .S({minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4_n_0,minusOp_carry_i_5_n_0}));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[6:3]),
        .O({minusOp_carry__0_n_4,minusOp_carry__0_n_5,minusOp_carry__0_n_6,minusOp_carry__0_n_7}),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_1
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(minusOp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_2
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(minusOp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_3
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(minusOp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_4
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(minusOp_carry__0_i_4_n_0));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[10:7]),
        .O({minusOp_carry__1_n_4,minusOp_carry__1_n_5,minusOp_carry__1_n_6,minusOp_carry__1_n_7}),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_1
       (.I0(Q[10]),
        .I1(Q[11]),
        .O(minusOp_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_2
       (.I0(Q[9]),
        .I1(Q[10]),
        .O(minusOp_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_3
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(minusOp_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_4
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(minusOp_carry__1_i_4_n_0));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({minusOp_carry__2_n_0,minusOp_carry__2_n_1,minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[14:11]),
        .O({minusOp_carry__2_n_4,minusOp_carry__2_n_5,minusOp_carry__2_n_6,minusOp_carry__2_n_7}),
        .S({minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0,minusOp_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__2_i_1
       (.I0(Q[14]),
        .I1(Q[15]),
        .O(minusOp_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__2_i_2
       (.I0(Q[13]),
        .I1(Q[14]),
        .O(minusOp_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__2_i_3
       (.I0(Q[12]),
        .I1(Q[13]),
        .O(minusOp_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__2_i_4
       (.I0(Q[11]),
        .I1(Q[12]),
        .O(minusOp_carry__2_i_4_n_0));
  CARRY4 minusOp_carry__3
       (.CI(minusOp_carry__2_n_0),
        .CO({minusOp_carry__3_n_0,minusOp_carry__3_n_1,minusOp_carry__3_n_2,minusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[18:15]),
        .O({minusOp_carry__3_n_4,minusOp_carry__3_n_5,minusOp_carry__3_n_6,minusOp_carry__3_n_7}),
        .S({minusOp_carry__3_i_1_n_0,minusOp_carry__3_i_2_n_0,minusOp_carry__3_i_3_n_0,minusOp_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__3_i_1
       (.I0(Q[18]),
        .I1(Q[19]),
        .O(minusOp_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__3_i_2
       (.I0(Q[17]),
        .I1(Q[18]),
        .O(minusOp_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__3_i_3
       (.I0(Q[16]),
        .I1(Q[17]),
        .O(minusOp_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__3_i_4
       (.I0(Q[15]),
        .I1(Q[16]),
        .O(minusOp_carry__3_i_4_n_0));
  CARRY4 minusOp_carry__4
       (.CI(minusOp_carry__3_n_0),
        .CO({minusOp_carry__4_n_0,minusOp_carry__4_n_1,minusOp_carry__4_n_2,minusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[22:19]),
        .O({minusOp_carry__4_n_4,minusOp_carry__4_n_5,minusOp_carry__4_n_6,minusOp_carry__4_n_7}),
        .S({minusOp_carry__4_i_1_n_0,minusOp_carry__4_i_2_n_0,minusOp_carry__4_i_3_n_0,minusOp_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__4_i_1
       (.I0(Q[22]),
        .I1(Q[23]),
        .O(minusOp_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__4_i_2
       (.I0(Q[21]),
        .I1(Q[22]),
        .O(minusOp_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__4_i_3
       (.I0(Q[20]),
        .I1(Q[21]),
        .O(minusOp_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__4_i_4
       (.I0(Q[19]),
        .I1(Q[20]),
        .O(minusOp_carry__4_i_4_n_0));
  CARRY4 minusOp_carry__5
       (.CI(minusOp_carry__4_n_0),
        .CO({minusOp_carry__5_n_0,minusOp_carry__5_n_1,minusOp_carry__5_n_2,minusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[26:23]),
        .O({minusOp_carry__5_n_4,minusOp_carry__5_n_5,minusOp_carry__5_n_6,minusOp_carry__5_n_7}),
        .S({minusOp_carry__5_i_1_n_0,minusOp_carry__5_i_2_n_0,minusOp_carry__5_i_3_n_0,minusOp_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__5_i_1
       (.I0(Q[26]),
        .I1(Q[27]),
        .O(minusOp_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__5_i_2
       (.I0(Q[25]),
        .I1(Q[26]),
        .O(minusOp_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__5_i_3
       (.I0(Q[24]),
        .I1(Q[25]),
        .O(minusOp_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__5_i_4
       (.I0(Q[23]),
        .I1(Q[24]),
        .O(minusOp_carry__5_i_4_n_0));
  CARRY4 minusOp_carry__6
       (.CI(minusOp_carry__5_n_0),
        .CO({NLW_minusOp_carry__6_CO_UNCONNECTED[3],minusOp_carry__6_n_1,minusOp_carry__6_n_2,minusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[29:27]}),
        .O({minusOp_carry__6_n_4,minusOp_carry__6_n_5,minusOp_carry__6_n_6,minusOp_carry__6_n_7}),
        .S({minusOp_carry__6_i_1_n_0,minusOp_carry__6_i_2_n_0,minusOp_carry__6_i_3_n_0,minusOp_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__6_i_1
       (.I0(Q[30]),
        .I1(Q[31]),
        .O(minusOp_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__6_i_2
       (.I0(Q[29]),
        .I1(Q[30]),
        .O(minusOp_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__6_i_3
       (.I0(Q[28]),
        .I1(Q[29]),
        .O(minusOp_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__6_i_4
       (.I0(Q[27]),
        .I1(Q[28]),
        .O(minusOp_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    minusOp_carry_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .O(minusOp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_2
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(minusOp_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    minusOp_carry_i_3
       (.I0(state[0]),
        .I1(state[1]),
        .I2(Q[2]),
        .O(minusOp_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    minusOp_carry_i_4
       (.I0(state[0]),
        .I1(state[1]),
        .I2(Q[1]),
        .O(minusOp_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    minusOp_carry_i_5
       (.I0(Q[0]),
        .I1(state[1]),
        .I2(state[0]),
        .O(minusOp_carry_i_5_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[0] 
       (.CLR(1'b0),
        .D(minusOp_carry_n_7),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[10] 
       (.CLR(1'b0),
        .D(minusOp_carry__1_n_5),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[11] 
       (.CLR(1'b0),
        .D(minusOp_carry__1_n_4),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[12] 
       (.CLR(1'b0),
        .D(minusOp_carry__2_n_7),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[13] 
       (.CLR(1'b0),
        .D(minusOp_carry__2_n_6),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[14] 
       (.CLR(1'b0),
        .D(minusOp_carry__2_n_5),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[15] 
       (.CLR(1'b0),
        .D(minusOp_carry__2_n_4),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[16] 
       (.CLR(1'b0),
        .D(minusOp_carry__3_n_7),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[17] 
       (.CLR(1'b0),
        .D(minusOp_carry__3_n_6),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[18] 
       (.CLR(1'b0),
        .D(minusOp_carry__3_n_5),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[19] 
       (.CLR(1'b0),
        .D(minusOp_carry__3_n_4),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[1] 
       (.CLR(1'b0),
        .D(minusOp_carry_n_6),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[20] 
       (.CLR(1'b0),
        .D(minusOp_carry__4_n_7),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[21] 
       (.CLR(1'b0),
        .D(minusOp_carry__4_n_6),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[22] 
       (.CLR(1'b0),
        .D(minusOp_carry__4_n_5),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[23] 
       (.CLR(1'b0),
        .D(minusOp_carry__4_n_4),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[24] 
       (.CLR(1'b0),
        .D(minusOp_carry__5_n_7),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[25] 
       (.CLR(1'b0),
        .D(minusOp_carry__5_n_6),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[26] 
       (.CLR(1'b0),
        .D(minusOp_carry__5_n_5),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[27] 
       (.CLR(1'b0),
        .D(minusOp_carry__5_n_4),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[28] 
       (.CLR(1'b0),
        .D(minusOp_carry__6_n_7),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[29] 
       (.CLR(1'b0),
        .D(minusOp_carry__6_n_6),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[2] 
       (.CLR(1'b0),
        .D(minusOp_carry_n_5),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[30] 
       (.CLR(1'b0),
        .D(minusOp_carry__6_n_5),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[31] 
       (.CLR(1'b0),
        .D(minusOp_carry__6_n_4),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[31]));
  LUT2 #(
    .INIT(4'h7)) 
    \next_pos_i_reg[31]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\next_pos_i_reg[31]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[3] 
       (.CLR(1'b0),
        .D(minusOp_carry_n_4),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[4] 
       (.CLR(1'b0),
        .D(minusOp_carry__0_n_7),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[5] 
       (.CLR(1'b0),
        .D(minusOp_carry__0_n_6),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[6] 
       (.CLR(1'b0),
        .D(minusOp_carry__0_n_5),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[7] 
       (.CLR(1'b0),
        .D(minusOp_carry__0_n_4),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[8] 
       (.CLR(1'b0),
        .D(minusOp_carry__1_n_7),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_pos_i_reg[9] 
       (.CLR(1'b0),
        .D(minusOp_carry__1_n_6),
        .G(\next_pos_i_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_pos_i[9]));
  FDRE \pos_i_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[0]),
        .Q(Q[0]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[10]),
        .Q(Q[10]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[11]),
        .Q(Q[11]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[12]),
        .Q(Q[12]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[13]),
        .Q(Q[13]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[14]),
        .Q(Q[14]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[15]),
        .Q(Q[15]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[16]),
        .Q(Q[16]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[17]),
        .Q(Q[17]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[18]),
        .Q(Q[18]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[19]),
        .Q(Q[19]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[1]),
        .Q(Q[1]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[20]),
        .Q(Q[20]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[21]),
        .Q(Q[21]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[22]),
        .Q(Q[22]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[23]),
        .Q(Q[23]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[24]),
        .Q(Q[24]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[25]),
        .Q(Q[25]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[26]),
        .Q(Q[26]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[27]),
        .Q(Q[27]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[28]),
        .Q(Q[28]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[29]),
        .Q(Q[29]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[2]),
        .Q(Q[2]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[30]),
        .Q(Q[30]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[31]),
        .Q(Q[31]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[3]),
        .Q(Q[3]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[4]),
        .Q(Q[4]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[5]),
        .Q(Q[5]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[6]),
        .Q(Q[6]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[7]),
        .Q(Q[7]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[8]),
        .Q(Q[8]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \pos_i_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(next_pos_i[9]),
        .Q(Q[9]),
        .R(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000003030303)) 
    \state[0]_i_1 
       (.I0(dir),
        .I1(state[1]),
        .I2(state[0]),
        .I3(last_tick_i),
        .I4(T),
        .I5(emend),
        .O(\state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \state[1]_i_1 
       (.I0(emend),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000003030303)) 
    \state[1]_i_2 
       (.I0(dir),
        .I1(state[1]),
        .I2(state[0]),
        .I3(last_tick_i),
        .I4(T),
        .I5(emend),
        .O(\state[1]_i_2_n_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(\state[1]_i_1_n_0 ));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_2_n_0 ),
        .Q(state[1]),
        .R(\state[1]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "incremental_quadrature" *) 
module design_1_zybo_cart_counter_v1_0_0_0_incremental_quadrature
   (dir,
    T,
    last_tick_i_reg,
    B,
    clk,
    A,
    Z,
    emend,
    last_tick_i);
  output dir;
  output T;
  output last_tick_i_reg;
  input B;
  input clk;
  input A;
  input Z;
  input emend;
  input last_tick_i;

  wire A;
  wire A_i;
  wire B;
  wire B_i;
  wire D_i;
  wire D_i_reg_i_2_n_0;
  wire T;
  wire T_i_reg_i_1_n_0;
  wire T_i_reg_i_2_n_0;
  wire T_i_reg_i_3_n_0;
  wire Z;
  wire Z_i;
  wire clk;
  wire dir;
  wire emend;
  wire last_A_i;
  wire last_B_i;
  wire last_Z_i;
  wire [2:0]last_phase;
  wire last_tick_i;
  wire last_tick_i_reg;
  wire [2:0]next_last_phase;
  wire \next_last_phase_reg[2]_i_1_n_0 ;
  wire \next_last_phase_reg[2]_i_2_n_0 ;
  wire [2:0]phase;
  wire \phase_reg[0]_i_1_n_0 ;
  wire \phase_reg[1]_i_1_n_0 ;
  wire \phase_reg[2]_i_1_n_0 ;
  wire \phase_reg[2]_i_2_n_0 ;
  wire [2:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2__0_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state_reg[2]_i_3_n_0 ;

  FDRE #(
    .INIT(1'b0)) 
    A_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(A),
        .Q(A_i),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    B_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(B),
        .Q(B_i),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    D_i_reg
       (.CLR(D_i_reg_i_2_n_0),
        .D(1'b1),
        .G(D_i),
        .GE(1'b1),
        .Q(dir));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    D_i_reg_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(D_i));
  LUT3 #(
    .INIT(8'h10)) 
    D_i_reg_i_2
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(D_i_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    T_i_reg
       (.CLR(T_i_reg_i_3_n_0),
        .D(T_i_reg_i_1_n_0),
        .G(T_i_reg_i_2_n_0),
        .GE(1'b1),
        .Q(T));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h42)) 
    T_i_reg_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(T_i_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    T_i_reg_i_2
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(T_i_reg_i_2_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    T_i_reg_i_3
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(T_i_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Z_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(Z),
        .Q(Z_i),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    last_A_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(A_i),
        .Q(last_A_i),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    last_B_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(B_i),
        .Q(last_B_i),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    last_Z_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(Z_i),
        .Q(last_Z_i),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_phase_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(next_last_phase[0]),
        .Q(last_phase[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_phase_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(next_last_phase[1]),
        .Q(last_phase[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_phase_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(next_last_phase[2]),
        .Q(last_phase[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    last_tick_i_i_1
       (.I0(T),
        .I1(emend),
        .I2(last_tick_i),
        .O(last_tick_i_reg));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_last_phase_reg[0] 
       (.CLR(1'b0),
        .D(phase[0]),
        .G(\next_last_phase_reg[2]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_last_phase[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_last_phase_reg[1] 
       (.CLR(1'b0),
        .D(phase[1]),
        .G(\next_last_phase_reg[2]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_last_phase[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_last_phase_reg[2] 
       (.CLR(1'b0),
        .D(phase[2]),
        .G(\next_last_phase_reg[2]_i_1_n_0 ),
        .GE(1'b1),
        .Q(next_last_phase[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \next_last_phase_reg[2]_i_1 
       (.I0(state[0]),
        .I1(\next_last_phase_reg[2]_i_2_n_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .O(\next_last_phase_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555F6666666F)) 
    \next_last_phase_reg[2]_i_2 
       (.I0(phase[2]),
        .I1(phase[1]),
        .I2(last_phase[1]),
        .I3(last_phase[2]),
        .I4(last_phase[0]),
        .I5(phase[0]),
        .O(\next_last_phase_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \phase_reg[0] 
       (.CLR(1'b0),
        .D(\phase_reg[0]_i_1_n_0 ),
        .G(\phase_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(phase[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_reg[0]_i_1 
       (.I0(A),
        .I1(B),
        .O(\phase_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \phase_reg[1] 
       (.CLR(1'b0),
        .D(\phase_reg[1]_i_1_n_0 ),
        .G(\phase_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(phase[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_reg[1]_i_1 
       (.I0(B),
        .O(\phase_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \phase_reg[2] 
       (.CLR(1'b0),
        .D(\phase_reg[2]_i_1_n_0 ),
        .G(\phase_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(phase[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_reg[2]_i_1 
       (.I0(B),
        .I1(A),
        .O(\phase_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \phase_reg[2]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\phase_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000050DD5000)) 
    \state[0]_i_1 
       (.I0(state[1]),
        .I1(\state[0]_i_2_n_0 ),
        .I2(Z),
        .I3(state[0]),
        .I4(\state_reg[2]_i_3_n_0 ),
        .I5(state[2]),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFEF00BF4000)) 
    \state[0]_i_2 
       (.I0(phase[2]),
        .I1(phase[0]),
        .I2(phase[1]),
        .I3(last_phase[2]),
        .I4(last_phase[1]),
        .I5(last_phase[0]),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000A0F00003030)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2__0_n_0 ),
        .I1(Z),
        .I2(state[0]),
        .I3(\state_reg[2]_i_3_n_0 ),
        .I4(state[2]),
        .I5(state[1]),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFF710000008)) 
    \state[1]_i_2__0 
       (.I0(phase[2]),
        .I1(last_phase[0]),
        .I2(last_phase[2]),
        .I3(phase[0]),
        .I4(phase[1]),
        .I5(last_phase[1]),
        .O(\state[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000050885000)) 
    \state[2]_i_1 
       (.I0(state[1]),
        .I1(\state[2]_i_2_n_0 ),
        .I2(Z),
        .I3(state[0]),
        .I4(\state_reg[2]_i_3_n_0 ),
        .I5(state[2]),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF01402000)) 
    \state[2]_i_2 
       (.I0(phase[2]),
        .I1(phase[0]),
        .I2(last_phase[1]),
        .I3(last_phase[0]),
        .I4(phase[1]),
        .I5(last_phase[2]),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \state[2]_i_4 
       (.I0(last_B_i),
        .I1(B_i),
        .I2(last_A_i),
        .I3(A_i),
        .I4(Z_i),
        .I5(last_Z_i),
        .O(\state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000606005050FF)) 
    \state[2]_i_5 
       (.I0(phase[2]),
        .I1(phase[1]),
        .I2(phase[0]),
        .I3(last_phase[1]),
        .I4(last_phase[2]),
        .I5(last_phase[0]),
        .O(\state[2]_i_5_n_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  FDRE \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  MUXF7 \state_reg[2]_i_3 
       (.I0(\state[2]_i_4_n_0 ),
        .I1(\state[2]_i_5_n_0 ),
        .O(\state_reg[2]_i_3_n_0 ),
        .S(state[1]));
endmodule

(* ORIG_REF_NAME = "zybo_cart_counter_v1_0" *) 
module design_1_zybo_cart_counter_v1_0_0_0_zybo_cart_counter_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rvalid,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    B,
    A,
    clk,
    Z,
    emend,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output s00_axi_rvalid;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input B;
  input A;
  input clk;
  input Z;
  input emend;
  input s00_axi_aclk;
  input [1:0]s00_axi_araddr;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire A;
  wire B;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire Z;
  wire clk;
  wire emend;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  design_1_zybo_cart_counter_v1_0_0_0_zybo_cart_counter_v1_0_S00_AXI zybo_cart_counter_v1_0_S00_AXI_inst
       (.A(A),
        .B(B),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .Z(Z),
        .clk(clk),
        .emend(emend),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "zybo_cart_counter_v1_0_S00_AXI" *) 
module design_1_zybo_cart_counter_v1_0_0_0_zybo_cart_counter_v1_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rvalid,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    B,
    A,
    clk,
    Z,
    emend,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output s00_axi_rvalid;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input B;
  input A;
  input clk;
  input Z;
  input emend;
  input s00_axi_aclk;
  input [1:0]s00_axi_araddr;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire A;
  wire B;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire Z;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire cal_i;
  wire clk;
  wire dir;
  wire emend;
  wire [31:7]p_1_in;
  wire [31:0]pos_i;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg3;
  wire slv_reg_wren__2;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(S_AXI_AWREADY),
        .I4(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(S_AXI_AWREADY),
        .I4(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_WREADY),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg3[0]),
        .I1(pos_i[0]),
        .I2(axi_araddr[2]),
        .I3(dir),
        .I4(axi_araddr[3]),
        .O(reg_data_out[0]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[10]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[10]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[10]),
        .O(reg_data_out[10]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[11]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[11]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[11]),
        .O(reg_data_out[11]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[12]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[12]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[12]),
        .O(reg_data_out[12]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[13]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[13]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[13]),
        .O(reg_data_out[13]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[14]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[14]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[14]),
        .O(reg_data_out[14]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[15]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[15]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[15]),
        .O(reg_data_out[15]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[16]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[16]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[16]),
        .O(reg_data_out[16]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[17]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[17]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[17]),
        .O(reg_data_out[17]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[18]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[18]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[18]),
        .O(reg_data_out[18]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[19]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[19]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[19]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg3[1]),
        .I1(pos_i[1]),
        .I2(axi_araddr[2]),
        .I3(cal_i),
        .I4(axi_araddr[3]),
        .O(reg_data_out[1]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[20]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[20]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[20]),
        .O(reg_data_out[20]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[21]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[21]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[21]),
        .O(reg_data_out[21]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[22]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[22]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[22]),
        .O(reg_data_out[22]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[23]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[23]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[23]),
        .O(reg_data_out[23]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[24]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[24]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[24]),
        .O(reg_data_out[24]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[25]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[25]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[25]),
        .O(reg_data_out[25]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[26]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[26]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[26]),
        .O(reg_data_out[26]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[27]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[27]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[27]),
        .O(reg_data_out[27]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[28]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[28]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[28]),
        .O(reg_data_out[28]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[29]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[29]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[29]),
        .O(reg_data_out[29]));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg3[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(pos_i[2]),
        .O(reg_data_out[2]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[30]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[30]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[30]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[31]_i_2 
       (.I0(axi_araddr[2]),
        .I1(pos_i[31]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[31]),
        .O(reg_data_out[31]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[3]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[3]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[3]),
        .O(reg_data_out[3]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[4]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[4]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[4]),
        .O(reg_data_out[4]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[5]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[5]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[5]),
        .O(reg_data_out[5]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[6]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[6]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[6]),
        .O(reg_data_out[6]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[7]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[7]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[7]),
        .O(reg_data_out[7]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[8]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[8]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[8]),
        .O(reg_data_out[8]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[9]_i_1 
       (.I0(axi_araddr[2]),
        .I1(pos_i[9]),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  design_1_zybo_cart_counter_v1_0_0_0_cart_counter cart_counter_inst
       (.A(A),
        .B(B),
        .Q(pos_i),
        .Z(Z),
        .cal_i(cal_i),
        .clk(clk),
        .dir(dir),
        .emend(emend));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_awvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
