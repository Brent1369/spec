// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Apr 22 14:57:35 2022
// Host        : PF2BDT9B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_auto_pc_1 -prefix
//               design_1_auto_pc_1_ design_1_auto_pc_1_sim_netlist.v
// Design      : design_1_auto_pc_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_auto_pc_1_axi_data_fifo_v2_1_24_axic_fifo
   (empty,
    SR,
    din,
    m_axi_rready,
    s_axi_rvalid,
    s_axi_rlast,
    S_AXI_AREADY_I_reg,
    command_ongoing_reg,
    aresetn_0,
    E,
    m_axi_arvalid,
    aclk,
    rd_en,
    s_axi_rready,
    m_axi_rvalid,
    m_axi_rlast,
    command_ongoing_reg_0,
    S_AXI_AREADY_I_reg_0,
    s_axi_arvalid,
    aresetn,
    command_ongoing,
    command_ongoing_reg_1,
    m_axi_arready,
    cmd_push_block,
    need_to_split_q,
    Q,
    split_ongoing_reg,
    access_is_incr_q);
  output empty;
  output [0:0]SR;
  output [0:0]din;
  output m_axi_rready;
  output s_axi_rvalid;
  output s_axi_rlast;
  output S_AXI_AREADY_I_reg;
  output command_ongoing_reg;
  output aresetn_0;
  output [0:0]E;
  output m_axi_arvalid;
  input aclk;
  input rd_en;
  input s_axi_rready;
  input m_axi_rvalid;
  input m_axi_rlast;
  input command_ongoing_reg_0;
  input S_AXI_AREADY_I_reg_0;
  input s_axi_arvalid;
  input aresetn;
  input command_ongoing;
  input command_ongoing_reg_1;
  input m_axi_arready;
  input cmd_push_block;
  input need_to_split_q;
  input [3:0]Q;
  input [3:0]split_ongoing_reg;
  input access_is_incr_q;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_reg;
  wire S_AXI_AREADY_I_reg_0;
  wire access_is_incr_q;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push_block;
  wire command_ongoing;
  wire command_ongoing_reg;
  wire command_ongoing_reg_0;
  wire command_ongoing_reg_1;
  wire [0:0]din;
  wire empty;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire need_to_split_q;
  wire rd_en;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [3:0]split_ongoing_reg;

  design_1_auto_pc_1_axi_data_fifo_v2_1_24_fifo_gen inst
       (.E(E),
        .Q(Q),
        .SR(SR),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .S_AXI_AREADY_I_reg_0(S_AXI_AREADY_I_reg_0),
        .access_is_incr_q(access_is_incr_q),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .cmd_push_block(cmd_push_block),
        .command_ongoing(command_ongoing),
        .command_ongoing_reg(command_ongoing_reg),
        .command_ongoing_reg_0(command_ongoing_reg_0),
        .command_ongoing_reg_1(command_ongoing_reg_1),
        .din(din),
        .empty(empty),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .need_to_split_q(need_to_split_q),
        .rd_en(rd_en),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .split_ongoing_reg(split_ongoing_reg));
endmodule

module design_1_auto_pc_1_axi_data_fifo_v2_1_24_fifo_gen
   (empty,
    SR,
    din,
    m_axi_rready,
    s_axi_rvalid,
    s_axi_rlast,
    S_AXI_AREADY_I_reg,
    command_ongoing_reg,
    aresetn_0,
    E,
    m_axi_arvalid,
    aclk,
    rd_en,
    s_axi_rready,
    m_axi_rvalid,
    m_axi_rlast,
    command_ongoing_reg_0,
    S_AXI_AREADY_I_reg_0,
    s_axi_arvalid,
    aresetn,
    command_ongoing,
    command_ongoing_reg_1,
    m_axi_arready,
    cmd_push_block,
    need_to_split_q,
    Q,
    split_ongoing_reg,
    access_is_incr_q);
  output empty;
  output [0:0]SR;
  output [0:0]din;
  output m_axi_rready;
  output s_axi_rvalid;
  output s_axi_rlast;
  output S_AXI_AREADY_I_reg;
  output command_ongoing_reg;
  output aresetn_0;
  output [0:0]E;
  output m_axi_arvalid;
  input aclk;
  input rd_en;
  input s_axi_rready;
  input m_axi_rvalid;
  input m_axi_rlast;
  input command_ongoing_reg_0;
  input S_AXI_AREADY_I_reg_0;
  input s_axi_arvalid;
  input aresetn;
  input command_ongoing;
  input command_ongoing_reg_1;
  input m_axi_arready;
  input cmd_push_block;
  input need_to_split_q;
  input [3:0]Q;
  input [3:0]split_ongoing_reg;
  input access_is_incr_q;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_i_5_n_0;
  wire S_AXI_AREADY_I_reg;
  wire S_AXI_AREADY_I_reg_0;
  wire \USE_READ.USE_SPLIT_R.rd_cmd_split ;
  wire access_is_incr_q;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push;
  wire cmd_push_block;
  wire command_ongoing;
  wire command_ongoing_reg;
  wire command_ongoing_reg_0;
  wire command_ongoing_reg_1;
  wire [0:0]din;
  wire empty;
  wire full;
  wire last_split__1;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire need_to_split_q;
  wire rd_en;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [3:0]split_ongoing_reg;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  LUT6 #(
    .INIT(64'h5575FF7500000000)) 
    S_AXI_AREADY_I_i_1
       (.I0(command_ongoing_reg_0),
        .I1(S_AXI_AREADY_I_i_3_n_0),
        .I2(last_split__1),
        .I3(S_AXI_AREADY_I_reg_0),
        .I4(s_axi_arvalid),
        .I5(aresetn),
        .O(S_AXI_AREADY_I_reg));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5DFF)) 
    S_AXI_AREADY_I_i_3
       (.I0(command_ongoing),
        .I1(full),
        .I2(cmd_push_block),
        .I3(m_axi_arready),
        .O(S_AXI_AREADY_I_i_3_n_0));
  LUT6 #(
    .INIT(64'h82000082FFFFFFFF)) 
    S_AXI_AREADY_I_i_4
       (.I0(S_AXI_AREADY_I_i_5_n_0),
        .I1(Q[2]),
        .I2(split_ongoing_reg[2]),
        .I3(Q[3]),
        .I4(split_ongoing_reg[3]),
        .I5(access_is_incr_q),
        .O(last_split__1));
  LUT4 #(
    .INIT(16'h9009)) 
    S_AXI_AREADY_I_i_5
       (.I0(Q[0]),
        .I1(split_ongoing_reg[0]),
        .I2(Q[1]),
        .I3(split_ongoing_reg[1]),
        .O(S_AXI_AREADY_I_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \S_AXI_ASIZE_Q[2]_i_1 
       (.I0(aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h2022A0A0)) 
    cmd_push_block_i_1
       (.I0(aresetn),
        .I1(m_axi_arready),
        .I2(cmd_push_block),
        .I3(full),
        .I4(command_ongoing),
        .O(aresetn_0));
  LUT6 #(
    .INIT(64'h8AFFAAAA00000000)) 
    command_ongoing_i_1
       (.I0(command_ongoing),
        .I1(S_AXI_AREADY_I_i_3_n_0),
        .I2(last_split__1),
        .I3(command_ongoing_reg_1),
        .I4(command_ongoing_reg_0),
        .I5(aresetn),
        .O(command_ongoing_reg));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "1" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "1" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_auto_pc_1_fifo_generator_v13_2_6 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout(\USE_READ.USE_SPLIT_R.rd_cmd_split ),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h2)) 
    fifo_gen_inst_i_1
       (.I0(need_to_split_q),
        .I1(last_split__1),
        .O(din));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    fifo_gen_inst_i_2
       (.I0(command_ongoing),
        .I1(full),
        .I2(cmd_push_block),
        .O(cmd_push));
  LUT3 #(
    .INIT(8'hB0)) 
    m_axi_arvalid_INST_0
       (.I0(cmd_push_block),
        .I1(full),
        .I2(command_ongoing),
        .O(m_axi_arvalid));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    m_axi_rready_INST_0
       (.I0(s_axi_rready),
        .I1(m_axi_rvalid),
        .I2(empty),
        .O(m_axi_rready));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_rlast_INST_0
       (.I0(m_axi_rlast),
        .I1(\USE_READ.USE_SPLIT_R.rd_cmd_split ),
        .O(s_axi_rlast));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_rvalid_INST_0
       (.I0(m_axi_rvalid),
        .I1(empty),
        .O(s_axi_rvalid));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8A00)) 
    split_ongoing_i_1
       (.I0(m_axi_arready),
        .I1(cmd_push_block),
        .I2(full),
        .I3(command_ongoing),
        .O(E));
endmodule

module design_1_auto_pc_1_axi_protocol_converter_v2_1_25_a_axi3_conv
   (empty,
    E,
    m_axi_rready,
    s_axi_rvalid,
    s_axi_rlast,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_araddr,
    m_axi_arvalid,
    m_axi_arlen,
    m_axi_arlock,
    aclk,
    rd_en,
    s_axi_arlock,
    s_axi_rready,
    m_axi_rvalid,
    s_axi_arsize,
    s_axi_arlen,
    m_axi_rlast,
    s_axi_arvalid,
    aresetn,
    s_axi_araddr,
    s_axi_arburst,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    m_axi_arready);
  output empty;
  output [0:0]E;
  output m_axi_rready;
  output s_axi_rvalid;
  output s_axi_rlast;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [31:0]m_axi_araddr;
  output m_axi_arvalid;
  output [3:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  input aclk;
  input rd_en;
  input [0:0]s_axi_arlock;
  input s_axi_rready;
  input m_axi_rvalid;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;
  input m_axi_rlast;
  input s_axi_arvalid;
  input aresetn;
  input [31:0]s_axi_araddr;
  input [1:0]s_axi_arburst;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input m_axi_arready;

  wire [0:0]E;
  wire M_AXI_AADDR_I1__0;
  wire [31:0]S_AXI_AADDR_Q;
  wire [3:0]S_AXI_ALEN_Q;
  wire \S_AXI_ALOCK_Q_reg_n_0_[0] ;
  wire S_AXI_AREADY_I_i_2_n_0;
  wire \USE_R_CHANNEL.cmd_queue_n_1 ;
  wire \USE_R_CHANNEL.cmd_queue_n_6 ;
  wire \USE_R_CHANNEL.cmd_queue_n_7 ;
  wire \USE_R_CHANNEL.cmd_queue_n_8 ;
  wire access_is_incr;
  wire access_is_incr_q;
  wire aclk;
  wire [11:5]addr_step;
  wire [11:5]addr_step_q;
  wire \addr_step_q[6]_i_1_n_0 ;
  wire \addr_step_q[7]_i_1_n_0 ;
  wire \addr_step_q[8]_i_1_n_0 ;
  wire \addr_step_q[9]_i_1_n_0 ;
  wire [1:0]areset_d;
  wire aresetn;
  wire cmd_push_block;
  wire cmd_split_i;
  wire command_ongoing;
  wire command_ongoing_i_2_n_0;
  wire empty;
  wire first_split__2;
  wire [11:4]first_step;
  wire [11:0]first_step_q;
  wire \first_step_q[0]_i_1_n_0 ;
  wire \first_step_q[10]_i_2_n_0 ;
  wire \first_step_q[11]_i_2_n_0 ;
  wire \first_step_q[1]_i_1_n_0 ;
  wire \first_step_q[2]_i_1_n_0 ;
  wire \first_step_q[3]_i_1_n_0 ;
  wire \first_step_q[6]_i_2_n_0 ;
  wire \first_step_q[7]_i_2_n_0 ;
  wire \first_step_q[8]_i_2_n_0 ;
  wire \first_step_q[9]_i_2_n_0 ;
  wire incr_need_to_split__0;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire need_to_split_q;
  wire [31:0]next_mi_addr;
  wire \next_mi_addr[11]_i_2_n_0 ;
  wire \next_mi_addr[11]_i_3_n_0 ;
  wire \next_mi_addr[11]_i_4_n_0 ;
  wire \next_mi_addr[11]_i_5_n_0 ;
  wire \next_mi_addr[15]_i_2_n_0 ;
  wire \next_mi_addr[15]_i_3_n_0 ;
  wire \next_mi_addr[15]_i_4_n_0 ;
  wire \next_mi_addr[15]_i_5_n_0 ;
  wire \next_mi_addr[15]_i_6_n_0 ;
  wire \next_mi_addr[15]_i_7_n_0 ;
  wire \next_mi_addr[15]_i_8_n_0 ;
  wire \next_mi_addr[15]_i_9_n_0 ;
  wire \next_mi_addr[19]_i_2_n_0 ;
  wire \next_mi_addr[19]_i_3_n_0 ;
  wire \next_mi_addr[19]_i_4_n_0 ;
  wire \next_mi_addr[19]_i_5_n_0 ;
  wire \next_mi_addr[23]_i_2_n_0 ;
  wire \next_mi_addr[23]_i_3_n_0 ;
  wire \next_mi_addr[23]_i_4_n_0 ;
  wire \next_mi_addr[23]_i_5_n_0 ;
  wire \next_mi_addr[27]_i_2_n_0 ;
  wire \next_mi_addr[27]_i_3_n_0 ;
  wire \next_mi_addr[27]_i_4_n_0 ;
  wire \next_mi_addr[27]_i_5_n_0 ;
  wire \next_mi_addr[31]_i_2_n_0 ;
  wire \next_mi_addr[31]_i_3_n_0 ;
  wire \next_mi_addr[31]_i_4_n_0 ;
  wire \next_mi_addr[31]_i_5_n_0 ;
  wire \next_mi_addr[3]_i_2_n_0 ;
  wire \next_mi_addr[3]_i_3_n_0 ;
  wire \next_mi_addr[3]_i_4_n_0 ;
  wire \next_mi_addr[3]_i_5_n_0 ;
  wire \next_mi_addr[7]_i_2_n_0 ;
  wire \next_mi_addr[7]_i_3_n_0 ;
  wire \next_mi_addr[7]_i_4_n_0 ;
  wire \next_mi_addr[7]_i_5_n_0 ;
  wire \next_mi_addr_reg[11]_i_1_n_0 ;
  wire \next_mi_addr_reg[11]_i_1_n_1 ;
  wire \next_mi_addr_reg[11]_i_1_n_2 ;
  wire \next_mi_addr_reg[11]_i_1_n_3 ;
  wire \next_mi_addr_reg[11]_i_1_n_4 ;
  wire \next_mi_addr_reg[11]_i_1_n_5 ;
  wire \next_mi_addr_reg[11]_i_1_n_6 ;
  wire \next_mi_addr_reg[11]_i_1_n_7 ;
  wire \next_mi_addr_reg[15]_i_1_n_0 ;
  wire \next_mi_addr_reg[15]_i_1_n_1 ;
  wire \next_mi_addr_reg[15]_i_1_n_2 ;
  wire \next_mi_addr_reg[15]_i_1_n_3 ;
  wire \next_mi_addr_reg[15]_i_1_n_4 ;
  wire \next_mi_addr_reg[15]_i_1_n_5 ;
  wire \next_mi_addr_reg[15]_i_1_n_6 ;
  wire \next_mi_addr_reg[15]_i_1_n_7 ;
  wire \next_mi_addr_reg[19]_i_1_n_0 ;
  wire \next_mi_addr_reg[19]_i_1_n_1 ;
  wire \next_mi_addr_reg[19]_i_1_n_2 ;
  wire \next_mi_addr_reg[19]_i_1_n_3 ;
  wire \next_mi_addr_reg[19]_i_1_n_4 ;
  wire \next_mi_addr_reg[19]_i_1_n_5 ;
  wire \next_mi_addr_reg[19]_i_1_n_6 ;
  wire \next_mi_addr_reg[19]_i_1_n_7 ;
  wire \next_mi_addr_reg[23]_i_1_n_0 ;
  wire \next_mi_addr_reg[23]_i_1_n_1 ;
  wire \next_mi_addr_reg[23]_i_1_n_2 ;
  wire \next_mi_addr_reg[23]_i_1_n_3 ;
  wire \next_mi_addr_reg[23]_i_1_n_4 ;
  wire \next_mi_addr_reg[23]_i_1_n_5 ;
  wire \next_mi_addr_reg[23]_i_1_n_6 ;
  wire \next_mi_addr_reg[23]_i_1_n_7 ;
  wire \next_mi_addr_reg[27]_i_1_n_0 ;
  wire \next_mi_addr_reg[27]_i_1_n_1 ;
  wire \next_mi_addr_reg[27]_i_1_n_2 ;
  wire \next_mi_addr_reg[27]_i_1_n_3 ;
  wire \next_mi_addr_reg[27]_i_1_n_4 ;
  wire \next_mi_addr_reg[27]_i_1_n_5 ;
  wire \next_mi_addr_reg[27]_i_1_n_6 ;
  wire \next_mi_addr_reg[27]_i_1_n_7 ;
  wire \next_mi_addr_reg[31]_i_1_n_1 ;
  wire \next_mi_addr_reg[31]_i_1_n_2 ;
  wire \next_mi_addr_reg[31]_i_1_n_3 ;
  wire \next_mi_addr_reg[31]_i_1_n_4 ;
  wire \next_mi_addr_reg[31]_i_1_n_5 ;
  wire \next_mi_addr_reg[31]_i_1_n_6 ;
  wire \next_mi_addr_reg[31]_i_1_n_7 ;
  wire \next_mi_addr_reg[3]_i_1_n_0 ;
  wire \next_mi_addr_reg[3]_i_1_n_1 ;
  wire \next_mi_addr_reg[3]_i_1_n_2 ;
  wire \next_mi_addr_reg[3]_i_1_n_3 ;
  wire \next_mi_addr_reg[3]_i_1_n_4 ;
  wire \next_mi_addr_reg[3]_i_1_n_5 ;
  wire \next_mi_addr_reg[3]_i_1_n_6 ;
  wire \next_mi_addr_reg[3]_i_1_n_7 ;
  wire \next_mi_addr_reg[7]_i_1_n_0 ;
  wire \next_mi_addr_reg[7]_i_1_n_1 ;
  wire \next_mi_addr_reg[7]_i_1_n_2 ;
  wire \next_mi_addr_reg[7]_i_1_n_3 ;
  wire \next_mi_addr_reg[7]_i_1_n_4 ;
  wire \next_mi_addr_reg[7]_i_1_n_5 ;
  wire \next_mi_addr_reg[7]_i_1_n_6 ;
  wire \next_mi_addr_reg[7]_i_1_n_7 ;
  wire [3:0]num_transactions_q;
  wire [3:0]p_0_in;
  wire \pushed_commands[3]_i_1_n_0 ;
  wire [3:0]pushed_commands_reg;
  wire pushed_new_cmd;
  wire rd_en;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [6:0]size_mask;
  wire [31:0]size_mask_q;
  wire split_ongoing;
  wire [3:3]\NLW_next_mi_addr_reg[31]_i_1_CO_UNCONNECTED ;

  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[0]),
        .Q(S_AXI_AADDR_Q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[10]),
        .Q(S_AXI_AADDR_Q[10]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[11]),
        .Q(S_AXI_AADDR_Q[11]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[12]),
        .Q(S_AXI_AADDR_Q[12]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[13]),
        .Q(S_AXI_AADDR_Q[13]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[14]),
        .Q(S_AXI_AADDR_Q[14]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[15]),
        .Q(S_AXI_AADDR_Q[15]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[16]),
        .Q(S_AXI_AADDR_Q[16]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[17]),
        .Q(S_AXI_AADDR_Q[17]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[18]),
        .Q(S_AXI_AADDR_Q[18]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[19]),
        .Q(S_AXI_AADDR_Q[19]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[1]),
        .Q(S_AXI_AADDR_Q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[20]),
        .Q(S_AXI_AADDR_Q[20]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[21]),
        .Q(S_AXI_AADDR_Q[21]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[22]),
        .Q(S_AXI_AADDR_Q[22]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[23]),
        .Q(S_AXI_AADDR_Q[23]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[24]),
        .Q(S_AXI_AADDR_Q[24]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[25]),
        .Q(S_AXI_AADDR_Q[25]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[26]),
        .Q(S_AXI_AADDR_Q[26]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[27]),
        .Q(S_AXI_AADDR_Q[27]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[28]),
        .Q(S_AXI_AADDR_Q[28]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[29]),
        .Q(S_AXI_AADDR_Q[29]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[2]),
        .Q(S_AXI_AADDR_Q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[30]),
        .Q(S_AXI_AADDR_Q[30]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[31]),
        .Q(S_AXI_AADDR_Q[31]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[3]),
        .Q(S_AXI_AADDR_Q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[4]),
        .Q(S_AXI_AADDR_Q[4]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[5]),
        .Q(S_AXI_AADDR_Q[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[6]),
        .Q(S_AXI_AADDR_Q[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[7]),
        .Q(S_AXI_AADDR_Q[7]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[8]),
        .Q(S_AXI_AADDR_Q[8]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[9]),
        .Q(S_AXI_AADDR_Q[9]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arburst[0]),
        .Q(m_axi_arburst[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arburst[1]),
        .Q(m_axi_arburst[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arcache[0]),
        .Q(m_axi_arcache[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arcache[1]),
        .Q(m_axi_arcache[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arcache[2]),
        .Q(m_axi_arcache[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arcache[3]),
        .Q(m_axi_arcache[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[0]),
        .Q(S_AXI_ALEN_Q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[1]),
        .Q(S_AXI_ALEN_Q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[2]),
        .Q(S_AXI_ALEN_Q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[3]),
        .Q(S_AXI_ALEN_Q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlock),
        .Q(\S_AXI_ALOCK_Q_reg_n_0_[0] ),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arprot[0]),
        .Q(m_axi_arprot[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arprot[1]),
        .Q(m_axi_arprot[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arprot[2]),
        .Q(m_axi_arprot[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arqos[0]),
        .Q(m_axi_arqos[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arqos[1]),
        .Q(m_axi_arqos[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arqos[2]),
        .Q(m_axi_arqos[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arqos[3]),
        .Q(m_axi_arqos[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    S_AXI_AREADY_I_i_2
       (.I0(areset_d[0]),
        .I1(areset_d[1]),
        .O(S_AXI_AREADY_I_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_AREADY_I_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_R_CHANNEL.cmd_queue_n_6 ),
        .Q(E),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arsize[0]),
        .Q(m_axi_arsize[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arsize[1]),
        .Q(m_axi_arsize[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arsize[2]),
        .Q(m_axi_arsize[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  design_1_auto_pc_1_axi_data_fifo_v2_1_24_axic_fifo \USE_R_CHANNEL.cmd_queue 
       (.E(pushed_new_cmd),
        .Q(num_transactions_q),
        .SR(\USE_R_CHANNEL.cmd_queue_n_1 ),
        .S_AXI_AREADY_I_reg(\USE_R_CHANNEL.cmd_queue_n_6 ),
        .S_AXI_AREADY_I_reg_0(E),
        .access_is_incr_q(access_is_incr_q),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(\USE_R_CHANNEL.cmd_queue_n_8 ),
        .cmd_push_block(cmd_push_block),
        .command_ongoing(command_ongoing),
        .command_ongoing_reg(\USE_R_CHANNEL.cmd_queue_n_7 ),
        .command_ongoing_reg_0(S_AXI_AREADY_I_i_2_n_0),
        .command_ongoing_reg_1(command_ongoing_i_2_n_0),
        .din(cmd_split_i),
        .empty(empty),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .need_to_split_q(need_to_split_q),
        .rd_en(rd_en),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .split_ongoing_reg(pushed_commands_reg));
  LUT2 #(
    .INIT(4'h2)) 
    access_is_incr_q_i_1
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_arburst[1]),
        .O(access_is_incr));
  FDRE #(
    .INIT(1'b0)) 
    access_is_incr_q_reg
       (.C(aclk),
        .CE(E),
        .D(access_is_incr),
        .Q(access_is_incr_q),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \addr_step_q[10]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(addr_step[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \addr_step_q[11]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .O(addr_step[11]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addr_step_q[5]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(addr_step[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addr_step_q[6]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(\addr_step_q[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \addr_step_q[7]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(\addr_step_q[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addr_step_q[8]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(\addr_step_q[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \addr_step_q[9]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(\addr_step_q[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(addr_step[10]),
        .Q(addr_step_q[10]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(addr_step[11]),
        .Q(addr_step_q[11]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(addr_step[5]),
        .Q(addr_step_q[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[6]_i_1_n_0 ),
        .Q(addr_step_q[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[7]_i_1_n_0 ),
        .Q(addr_step_q[7]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[8]_i_1_n_0 ),
        .Q(addr_step_q[8]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[9]_i_1_n_0 ),
        .Q(addr_step_q[9]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_R_CHANNEL.cmd_queue_n_1 ),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_R_CHANNEL.cmd_queue_n_8 ),
        .Q(cmd_push_block),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    command_ongoing_i_2
       (.I0(s_axi_arvalid),
        .I1(E),
        .O(command_ongoing_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    command_ongoing_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_R_CHANNEL.cmd_queue_n_7 ),
        .Q(command_ongoing),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \first_step_q[0]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arsize[2]),
        .O(\first_step_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[10]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(\first_step_q[10]_i_2_n_0 ),
        .O(first_step[10]));
  LUT6 #(
    .INIT(64'h2AAA800080000000)) 
    \first_step_q[10]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[3]),
        .I5(s_axi_arsize[0]),
        .O(\first_step_q[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[11]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(\first_step_q[11]_i_2_n_0 ),
        .O(first_step[11]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \first_step_q[11]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[2]),
        .I5(s_axi_arsize[0]),
        .O(\first_step_q[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000514)) 
    \first_step_q[1]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arsize[2]),
        .O(\first_step_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000F3C6A)) 
    \first_step_q[2]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arsize[2]),
        .O(\first_step_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \first_step_q[3]_i_1 
       (.I0(\first_step_q[7]_i_2_n_0 ),
        .I1(s_axi_arsize[2]),
        .O(\first_step_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h01FF0100)) 
    \first_step_q[4]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .I4(\first_step_q[8]_i_2_n_0 ),
        .O(first_step[4]));
  LUT6 #(
    .INIT(64'h0036FFFF00360000)) 
    \first_step_q[5]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[2]),
        .I5(\first_step_q[9]_i_2_n_0 ),
        .O(first_step[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \first_step_q[6]_i_1 
       (.I0(\first_step_q[6]_i_2_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(\first_step_q[10]_i_2_n_0 ),
        .O(first_step[6]));
  LUT5 #(
    .INIT(32'h07531642)) 
    \first_step_q[6]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[2]),
        .O(\first_step_q[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \first_step_q[7]_i_1 
       (.I0(\first_step_q[7]_i_2_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(\first_step_q[11]_i_2_n_0 ),
        .O(first_step[7]));
  LUT6 #(
    .INIT(64'h07FD53B916EC42A8)) 
    \first_step_q[7]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[2]),
        .I5(s_axi_arlen[3]),
        .O(\first_step_q[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[8]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(\first_step_q[8]_i_2_n_0 ),
        .O(first_step[8]));
  LUT6 #(
    .INIT(64'h14EAEA6262C8C840)) 
    \first_step_q[8]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[3]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[0]),
        .I5(s_axi_arlen[2]),
        .O(\first_step_q[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[9]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(\first_step_q[9]_i_2_n_0 ),
        .O(first_step[9]));
  LUT6 #(
    .INIT(64'h4AA2A2A228808080)) 
    \first_step_q[9]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[2]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[1]),
        .I5(s_axi_arlen[3]),
        .O(\first_step_q[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[0]_i_1_n_0 ),
        .Q(first_step_q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(first_step[10]),
        .Q(first_step_q[10]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(first_step[11]),
        .Q(first_step_q[11]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[1]_i_1_n_0 ),
        .Q(first_step_q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[2]_i_1_n_0 ),
        .Q(first_step_q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[3]_i_1_n_0 ),
        .Q(first_step_q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(first_step[4]),
        .Q(first_step_q[4]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(first_step[5]),
        .Q(first_step_q[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(first_step[6]),
        .Q(first_step_q[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(first_step[7]),
        .Q(first_step_q[7]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(first_step[8]),
        .Q(first_step_q[8]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(first_step[9]),
        .Q(first_step_q[9]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    incr_need_to_split
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .I2(s_axi_arlen[5]),
        .I3(s_axi_arlen[4]),
        .I4(s_axi_arlen[6]),
        .I5(s_axi_arlen[7]),
        .O(incr_need_to_split__0));
  FDRE #(
    .INIT(1'b0)) 
    incr_need_to_split_q_reg
       (.C(aclk),
        .CE(E),
        .D(incr_need_to_split__0),
        .Q(need_to_split_q),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[0]_INST_0 
       (.I0(next_mi_addr[0]),
        .I1(size_mask_q[0]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[0]),
        .O(m_axi_araddr[0]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[10]_INST_0 
       (.I0(next_mi_addr[10]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[10]),
        .O(m_axi_araddr[10]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[11]_INST_0 
       (.I0(next_mi_addr[11]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[11]),
        .O(m_axi_araddr[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[12]_INST_0 
       (.I0(next_mi_addr[12]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[12]),
        .O(m_axi_araddr[12]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[13]_INST_0 
       (.I0(next_mi_addr[13]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[13]),
        .O(m_axi_araddr[13]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[14]_INST_0 
       (.I0(next_mi_addr[14]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[14]),
        .O(m_axi_araddr[14]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[15]_INST_0 
       (.I0(next_mi_addr[15]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[15]),
        .O(m_axi_araddr[15]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[16]_INST_0 
       (.I0(next_mi_addr[16]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[16]),
        .O(m_axi_araddr[16]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[17]_INST_0 
       (.I0(next_mi_addr[17]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[17]),
        .O(m_axi_araddr[17]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[18]_INST_0 
       (.I0(next_mi_addr[18]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[18]),
        .O(m_axi_araddr[18]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[19]_INST_0 
       (.I0(next_mi_addr[19]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[19]),
        .O(m_axi_araddr[19]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[1]_INST_0 
       (.I0(next_mi_addr[1]),
        .I1(size_mask_q[1]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[1]),
        .O(m_axi_araddr[1]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[20]_INST_0 
       (.I0(next_mi_addr[20]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[20]),
        .O(m_axi_araddr[20]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[21]_INST_0 
       (.I0(next_mi_addr[21]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[21]),
        .O(m_axi_araddr[21]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[22]_INST_0 
       (.I0(next_mi_addr[22]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[22]),
        .O(m_axi_araddr[22]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[23]_INST_0 
       (.I0(next_mi_addr[23]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[23]),
        .O(m_axi_araddr[23]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[24]_INST_0 
       (.I0(next_mi_addr[24]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[24]),
        .O(m_axi_araddr[24]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[25]_INST_0 
       (.I0(next_mi_addr[25]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[25]),
        .O(m_axi_araddr[25]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[26]_INST_0 
       (.I0(next_mi_addr[26]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[26]),
        .O(m_axi_araddr[26]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[27]_INST_0 
       (.I0(next_mi_addr[27]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[27]),
        .O(m_axi_araddr[27]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[28]_INST_0 
       (.I0(next_mi_addr[28]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[28]),
        .O(m_axi_araddr[28]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[29]_INST_0 
       (.I0(next_mi_addr[29]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[29]),
        .O(m_axi_araddr[29]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[2]_INST_0 
       (.I0(next_mi_addr[2]),
        .I1(size_mask_q[2]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[2]),
        .O(m_axi_araddr[2]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[30]_INST_0 
       (.I0(next_mi_addr[30]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[30]),
        .O(m_axi_araddr[30]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[31]_INST_0 
       (.I0(next_mi_addr[31]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[31]),
        .O(m_axi_araddr[31]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[3]_INST_0 
       (.I0(next_mi_addr[3]),
        .I1(size_mask_q[3]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[3]),
        .O(m_axi_araddr[3]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[4]_INST_0 
       (.I0(next_mi_addr[4]),
        .I1(size_mask_q[4]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[4]),
        .O(m_axi_araddr[4]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[5]_INST_0 
       (.I0(next_mi_addr[5]),
        .I1(size_mask_q[5]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[5]),
        .O(m_axi_araddr[5]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[6]_INST_0 
       (.I0(next_mi_addr[6]),
        .I1(size_mask_q[6]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[6]),
        .O(m_axi_araddr[6]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[7]_INST_0 
       (.I0(next_mi_addr[7]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[7]),
        .O(m_axi_araddr[7]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[8]_INST_0 
       (.I0(next_mi_addr[8]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[8]),
        .O(m_axi_araddr[8]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[9]_INST_0 
       (.I0(next_mi_addr[9]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[9]),
        .O(m_axi_araddr[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \m_axi_arlen[0]_INST_0 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .I4(need_to_split_q),
        .I5(S_AXI_ALEN_Q[0]),
        .O(m_axi_arlen[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \m_axi_arlen[1]_INST_0 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .I4(need_to_split_q),
        .I5(S_AXI_ALEN_Q[1]),
        .O(m_axi_arlen[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \m_axi_arlen[2]_INST_0 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .I4(need_to_split_q),
        .I5(S_AXI_ALEN_Q[2]),
        .O(m_axi_arlen[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \m_axi_arlen[3]_INST_0 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .I4(need_to_split_q),
        .I5(S_AXI_ALEN_Q[3]),
        .O(m_axi_arlen[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_arlock[0]_INST_0 
       (.I0(\S_AXI_ALOCK_Q_reg_n_0_[0] ),
        .I1(need_to_split_q),
        .O(m_axi_arlock));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_2 
       (.I0(m_axi_araddr[11]),
        .I1(addr_step_q[11]),
        .I2(first_split__2),
        .I3(first_step_q[11]),
        .O(\next_mi_addr[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_3 
       (.I0(m_axi_araddr[10]),
        .I1(addr_step_q[10]),
        .I2(first_split__2),
        .I3(first_step_q[10]),
        .O(\next_mi_addr[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_4 
       (.I0(m_axi_araddr[9]),
        .I1(addr_step_q[9]),
        .I2(first_split__2),
        .I3(first_step_q[9]),
        .O(\next_mi_addr[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_5 
       (.I0(m_axi_araddr[8]),
        .I1(addr_step_q[8]),
        .I2(first_split__2),
        .I3(first_step_q[8]),
        .O(\next_mi_addr[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \next_mi_addr[11]_i_6 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .O(first_split__2));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_2 
       (.I0(next_mi_addr[15]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[15]),
        .O(\next_mi_addr[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_3 
       (.I0(next_mi_addr[14]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[14]),
        .O(\next_mi_addr[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_4 
       (.I0(next_mi_addr[13]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[13]),
        .O(\next_mi_addr[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_5 
       (.I0(next_mi_addr[12]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[12]),
        .O(\next_mi_addr[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_6 
       (.I0(next_mi_addr[15]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[15]),
        .O(\next_mi_addr[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_7 
       (.I0(next_mi_addr[14]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[14]),
        .O(\next_mi_addr[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_8 
       (.I0(next_mi_addr[13]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[13]),
        .O(\next_mi_addr[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_9 
       (.I0(next_mi_addr[12]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[12]),
        .O(\next_mi_addr[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[19]_i_2 
       (.I0(next_mi_addr[19]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[19]),
        .O(\next_mi_addr[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[19]_i_3 
       (.I0(next_mi_addr[18]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[18]),
        .O(\next_mi_addr[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[19]_i_4 
       (.I0(next_mi_addr[17]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[17]),
        .O(\next_mi_addr[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[19]_i_5 
       (.I0(next_mi_addr[16]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[16]),
        .O(\next_mi_addr[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[23]_i_2 
       (.I0(next_mi_addr[23]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[23]),
        .O(\next_mi_addr[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[23]_i_3 
       (.I0(next_mi_addr[22]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[22]),
        .O(\next_mi_addr[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[23]_i_4 
       (.I0(next_mi_addr[21]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[21]),
        .O(\next_mi_addr[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[23]_i_5 
       (.I0(next_mi_addr[20]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[20]),
        .O(\next_mi_addr[23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[27]_i_2 
       (.I0(next_mi_addr[27]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[27]),
        .O(\next_mi_addr[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[27]_i_3 
       (.I0(next_mi_addr[26]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[26]),
        .O(\next_mi_addr[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[27]_i_4 
       (.I0(next_mi_addr[25]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[25]),
        .O(\next_mi_addr[27]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[27]_i_5 
       (.I0(next_mi_addr[24]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[24]),
        .O(\next_mi_addr[27]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[31]_i_2 
       (.I0(next_mi_addr[31]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[31]),
        .O(\next_mi_addr[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[31]_i_3 
       (.I0(next_mi_addr[30]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[30]),
        .O(\next_mi_addr[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[31]_i_4 
       (.I0(next_mi_addr[29]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[29]),
        .O(\next_mi_addr[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[31]_i_5 
       (.I0(next_mi_addr[28]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[28]),
        .O(\next_mi_addr[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1DDDE222E222E222)) 
    \next_mi_addr[3]_i_2 
       (.I0(S_AXI_AADDR_Q[3]),
        .I1(M_AXI_AADDR_I1__0),
        .I2(size_mask_q[3]),
        .I3(next_mi_addr[3]),
        .I4(first_split__2),
        .I5(first_step_q[3]),
        .O(\next_mi_addr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1DDDE222E222E222)) 
    \next_mi_addr[3]_i_3 
       (.I0(S_AXI_AADDR_Q[2]),
        .I1(M_AXI_AADDR_I1__0),
        .I2(size_mask_q[2]),
        .I3(next_mi_addr[2]),
        .I4(first_split__2),
        .I5(first_step_q[2]),
        .O(\next_mi_addr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1DDDE222E222E222)) 
    \next_mi_addr[3]_i_4 
       (.I0(S_AXI_AADDR_Q[1]),
        .I1(M_AXI_AADDR_I1__0),
        .I2(size_mask_q[1]),
        .I3(next_mi_addr[1]),
        .I4(first_split__2),
        .I5(first_step_q[1]),
        .O(\next_mi_addr[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1DDDE222E222E222)) 
    \next_mi_addr[3]_i_5 
       (.I0(S_AXI_AADDR_Q[0]),
        .I1(M_AXI_AADDR_I1__0),
        .I2(size_mask_q[0]),
        .I3(next_mi_addr[0]),
        .I4(first_split__2),
        .I5(first_step_q[0]),
        .O(\next_mi_addr[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \next_mi_addr[3]_i_6 
       (.I0(split_ongoing),
        .I1(access_is_incr_q),
        .O(M_AXI_AADDR_I1__0));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_2 
       (.I0(m_axi_araddr[7]),
        .I1(addr_step_q[7]),
        .I2(first_split__2),
        .I3(first_step_q[7]),
        .O(\next_mi_addr[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_3 
       (.I0(m_axi_araddr[6]),
        .I1(addr_step_q[6]),
        .I2(first_split__2),
        .I3(first_step_q[6]),
        .O(\next_mi_addr[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_4 
       (.I0(m_axi_araddr[5]),
        .I1(addr_step_q[5]),
        .I2(first_split__2),
        .I3(first_step_q[5]),
        .O(\next_mi_addr[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_5 
       (.I0(m_axi_araddr[4]),
        .I1(size_mask_q[0]),
        .I2(first_split__2),
        .I3(first_step_q[4]),
        .O(\next_mi_addr[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[0] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_7 ),
        .Q(next_mi_addr[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[10] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_5 ),
        .Q(next_mi_addr[10]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[11] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_4 ),
        .Q(next_mi_addr[11]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[11]_i_1 
       (.CI(\next_mi_addr_reg[7]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[11]_i_1_n_0 ,\next_mi_addr_reg[11]_i_1_n_1 ,\next_mi_addr_reg[11]_i_1_n_2 ,\next_mi_addr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_axi_araddr[11:8]),
        .O({\next_mi_addr_reg[11]_i_1_n_4 ,\next_mi_addr_reg[11]_i_1_n_5 ,\next_mi_addr_reg[11]_i_1_n_6 ,\next_mi_addr_reg[11]_i_1_n_7 }),
        .S({\next_mi_addr[11]_i_2_n_0 ,\next_mi_addr[11]_i_3_n_0 ,\next_mi_addr[11]_i_4_n_0 ,\next_mi_addr[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[12] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_7 ),
        .Q(next_mi_addr[12]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[13] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_6 ),
        .Q(next_mi_addr[13]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[14] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_5 ),
        .Q(next_mi_addr[14]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[15] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_4 ),
        .Q(next_mi_addr[15]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[15]_i_1 
       (.CI(\next_mi_addr_reg[11]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[15]_i_1_n_0 ,\next_mi_addr_reg[15]_i_1_n_1 ,\next_mi_addr_reg[15]_i_1_n_2 ,\next_mi_addr_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\next_mi_addr[15]_i_2_n_0 ,\next_mi_addr[15]_i_3_n_0 ,\next_mi_addr[15]_i_4_n_0 ,\next_mi_addr[15]_i_5_n_0 }),
        .O({\next_mi_addr_reg[15]_i_1_n_4 ,\next_mi_addr_reg[15]_i_1_n_5 ,\next_mi_addr_reg[15]_i_1_n_6 ,\next_mi_addr_reg[15]_i_1_n_7 }),
        .S({\next_mi_addr[15]_i_6_n_0 ,\next_mi_addr[15]_i_7_n_0 ,\next_mi_addr[15]_i_8_n_0 ,\next_mi_addr[15]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[16] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_7 ),
        .Q(next_mi_addr[16]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[17] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_6 ),
        .Q(next_mi_addr[17]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[18] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_5 ),
        .Q(next_mi_addr[18]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[19] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_4 ),
        .Q(next_mi_addr[19]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[19]_i_1 
       (.CI(\next_mi_addr_reg[15]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[19]_i_1_n_0 ,\next_mi_addr_reg[19]_i_1_n_1 ,\next_mi_addr_reg[19]_i_1_n_2 ,\next_mi_addr_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[19]_i_1_n_4 ,\next_mi_addr_reg[19]_i_1_n_5 ,\next_mi_addr_reg[19]_i_1_n_6 ,\next_mi_addr_reg[19]_i_1_n_7 }),
        .S({\next_mi_addr[19]_i_2_n_0 ,\next_mi_addr[19]_i_3_n_0 ,\next_mi_addr[19]_i_4_n_0 ,\next_mi_addr[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[1] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_6 ),
        .Q(next_mi_addr[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[20] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_7 ),
        .Q(next_mi_addr[20]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[21] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_6 ),
        .Q(next_mi_addr[21]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[22] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_5 ),
        .Q(next_mi_addr[22]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[23] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_4 ),
        .Q(next_mi_addr[23]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[23]_i_1 
       (.CI(\next_mi_addr_reg[19]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[23]_i_1_n_0 ,\next_mi_addr_reg[23]_i_1_n_1 ,\next_mi_addr_reg[23]_i_1_n_2 ,\next_mi_addr_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[23]_i_1_n_4 ,\next_mi_addr_reg[23]_i_1_n_5 ,\next_mi_addr_reg[23]_i_1_n_6 ,\next_mi_addr_reg[23]_i_1_n_7 }),
        .S({\next_mi_addr[23]_i_2_n_0 ,\next_mi_addr[23]_i_3_n_0 ,\next_mi_addr[23]_i_4_n_0 ,\next_mi_addr[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[24] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_7 ),
        .Q(next_mi_addr[24]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[25] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_6 ),
        .Q(next_mi_addr[25]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[26] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_5 ),
        .Q(next_mi_addr[26]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[27] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_4 ),
        .Q(next_mi_addr[27]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[27]_i_1 
       (.CI(\next_mi_addr_reg[23]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[27]_i_1_n_0 ,\next_mi_addr_reg[27]_i_1_n_1 ,\next_mi_addr_reg[27]_i_1_n_2 ,\next_mi_addr_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[27]_i_1_n_4 ,\next_mi_addr_reg[27]_i_1_n_5 ,\next_mi_addr_reg[27]_i_1_n_6 ,\next_mi_addr_reg[27]_i_1_n_7 }),
        .S({\next_mi_addr[27]_i_2_n_0 ,\next_mi_addr[27]_i_3_n_0 ,\next_mi_addr[27]_i_4_n_0 ,\next_mi_addr[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[28] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_7 ),
        .Q(next_mi_addr[28]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[29] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_6 ),
        .Q(next_mi_addr[29]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[2] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_5 ),
        .Q(next_mi_addr[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[30] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_5 ),
        .Q(next_mi_addr[30]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[31] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_4 ),
        .Q(next_mi_addr[31]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[31]_i_1 
       (.CI(\next_mi_addr_reg[27]_i_1_n_0 ),
        .CO({\NLW_next_mi_addr_reg[31]_i_1_CO_UNCONNECTED [3],\next_mi_addr_reg[31]_i_1_n_1 ,\next_mi_addr_reg[31]_i_1_n_2 ,\next_mi_addr_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[31]_i_1_n_4 ,\next_mi_addr_reg[31]_i_1_n_5 ,\next_mi_addr_reg[31]_i_1_n_6 ,\next_mi_addr_reg[31]_i_1_n_7 }),
        .S({\next_mi_addr[31]_i_2_n_0 ,\next_mi_addr[31]_i_3_n_0 ,\next_mi_addr[31]_i_4_n_0 ,\next_mi_addr[31]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[3] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_4 ),
        .Q(next_mi_addr[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\next_mi_addr_reg[3]_i_1_n_0 ,\next_mi_addr_reg[3]_i_1_n_1 ,\next_mi_addr_reg[3]_i_1_n_2 ,\next_mi_addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_axi_araddr[3:0]),
        .O({\next_mi_addr_reg[3]_i_1_n_4 ,\next_mi_addr_reg[3]_i_1_n_5 ,\next_mi_addr_reg[3]_i_1_n_6 ,\next_mi_addr_reg[3]_i_1_n_7 }),
        .S({\next_mi_addr[3]_i_2_n_0 ,\next_mi_addr[3]_i_3_n_0 ,\next_mi_addr[3]_i_4_n_0 ,\next_mi_addr[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[4] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_7 ),
        .Q(next_mi_addr[4]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[5] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_6 ),
        .Q(next_mi_addr[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[6] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_5 ),
        .Q(next_mi_addr[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[7] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_4 ),
        .Q(next_mi_addr[7]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[7]_i_1 
       (.CI(\next_mi_addr_reg[3]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[7]_i_1_n_0 ,\next_mi_addr_reg[7]_i_1_n_1 ,\next_mi_addr_reg[7]_i_1_n_2 ,\next_mi_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_axi_araddr[7:4]),
        .O({\next_mi_addr_reg[7]_i_1_n_4 ,\next_mi_addr_reg[7]_i_1_n_5 ,\next_mi_addr_reg[7]_i_1_n_6 ,\next_mi_addr_reg[7]_i_1_n_7 }),
        .S({\next_mi_addr[7]_i_2_n_0 ,\next_mi_addr[7]_i_3_n_0 ,\next_mi_addr[7]_i_4_n_0 ,\next_mi_addr[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[8] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_7 ),
        .Q(next_mi_addr[8]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[9] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_6 ),
        .Q(next_mi_addr[9]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[4]),
        .Q(num_transactions_q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[5]),
        .Q(num_transactions_q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[6]),
        .Q(num_transactions_q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[7]),
        .Q(num_transactions_q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pushed_commands[0]_i_1 
       (.I0(pushed_commands_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pushed_commands[1]_i_1 
       (.I0(pushed_commands_reg[0]),
        .I1(pushed_commands_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pushed_commands[2]_i_1 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[2]),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \pushed_commands[3]_i_1 
       (.I0(E),
        .I1(aresetn),
        .O(\pushed_commands[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pushed_commands[3]_i_2 
       (.I0(pushed_commands_reg[2]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[1]),
        .I3(pushed_commands_reg[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[0] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[0]),
        .Q(pushed_commands_reg[0]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[1] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[1]),
        .Q(pushed_commands_reg[1]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[2] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[2]),
        .Q(pushed_commands_reg[2]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[3] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[3]),
        .Q(pushed_commands_reg[3]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \size_mask_q[0]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(size_mask[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \size_mask_q[1]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .O(size_mask[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \size_mask_q[2]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(size_mask[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \size_mask_q[3]_i_1 
       (.I0(s_axi_arsize[2]),
        .O(size_mask[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \size_mask_q[4]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(size_mask[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \size_mask_q[5]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .O(size_mask[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \size_mask_q[6]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(size_mask[6]));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[0]),
        .Q(size_mask_q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[1]),
        .Q(size_mask_q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[2]),
        .Q(size_mask_q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(1'b1),
        .Q(size_mask_q[31]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[3]),
        .Q(size_mask_q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[4]),
        .Q(size_mask_q[4]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[5]),
        .Q(size_mask_q[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[6]),
        .Q(size_mask_q[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    split_ongoing_reg
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(cmd_split_i),
        .Q(split_ongoing),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
endmodule

module design_1_auto_pc_1_axi_protocol_converter_v2_1_25_axi3_conv
   (m_axi_rready,
    s_axi_rvalid,
    S_AXI_AREADY_I_reg,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_araddr,
    m_axi_arvalid,
    m_axi_arlen,
    m_axi_arlock,
    s_axi_rlast,
    s_axi_rready,
    m_axi_rvalid,
    s_axi_arsize,
    s_axi_arlen,
    aclk,
    s_axi_araddr,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    aresetn,
    m_axi_arready,
    m_axi_rlast);
  output m_axi_rready;
  output s_axi_rvalid;
  output S_AXI_AREADY_I_reg;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [31:0]m_axi_araddr;
  output m_axi_arvalid;
  output [3:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  output s_axi_rlast;
  input s_axi_rready;
  input m_axi_rvalid;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;
  input aclk;
  input [31:0]s_axi_araddr;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  input aresetn;
  input m_axi_arready;
  input m_axi_rlast;

  wire S_AXI_AREADY_I_reg;
  wire \USE_READ.USE_SPLIT_R.rd_cmd_ready ;
  wire \USE_R_CHANNEL.cmd_queue/inst/empty ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;

  design_1_auto_pc_1_axi_protocol_converter_v2_1_25_a_axi3_conv \USE_READ.USE_SPLIT_R.read_addr_inst 
       (.E(S_AXI_AREADY_I_reg),
        .aclk(aclk),
        .aresetn(aresetn),
        .empty(\USE_R_CHANNEL.cmd_queue/inst/empty ),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .rd_en(\USE_READ.USE_SPLIT_R.rd_cmd_ready ),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
  design_1_auto_pc_1_axi_protocol_converter_v2_1_25_r_axi3_conv \USE_READ.USE_SPLIT_R.read_data_inst 
       (.empty(\USE_R_CHANNEL.cmd_queue/inst/empty ),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rvalid(m_axi_rvalid),
        .rd_en(\USE_READ.USE_SPLIT_R.rd_cmd_ready ),
        .s_axi_rready(s_axi_rready));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "0" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "1" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "2" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b011" *) 
(* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) (* P_INCR = "2'b01" *) 
(* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module design_1_auto_pc_1_axi_protocol_converter_v2_1_25_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;

  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63:0] = m_axi_rdata;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rresp[1:0] = m_axi_rresp;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_wready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_auto_pc_1_axi_protocol_converter_v2_1_25_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
       (.S_AXI_AREADY_I_reg(s_axi_arready),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(\^m_axi_arlock ),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
endmodule

module design_1_auto_pc_1_axi_protocol_converter_v2_1_25_r_axi3_conv
   (rd_en,
    m_axi_rlast,
    s_axi_rready,
    m_axi_rvalid,
    empty);
  output rd_en;
  input m_axi_rlast;
  input s_axi_rready;
  input m_axi_rvalid;
  input empty;

  wire empty;
  wire m_axi_rlast;
  wire m_axi_rvalid;
  wire rd_en;
  wire s_axi_rready;

  LUT4 #(
    .INIT(16'h0080)) 
    cmd_ready_i
       (.I0(m_axi_rlast),
        .I1(s_axi_rready),
        .I2(m_axi_rvalid),
        .I3(empty),
        .O(rd_en));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_auto_pc_1,axi_protocol_converter_v2_1_25_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_25_axi_protocol_converter,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_auto_pc_1
   (aclk,
    aresetn,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 142857132, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 142857132, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 8, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [3:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 142857132, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [63:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire NLW_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_axi_bready_UNCONNECTED;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_inst_s_axi_awready_UNCONNECTED;
  wire NLW_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_inst_s_axi_wready_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_inst_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "1" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "2" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b011" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_auto_pc_1_axi_protocol_converter_v2_1_25_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock({NLW_inst_m_axi_arlock_UNCONNECTED[1],\^m_axi_arlock }),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(NLW_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[3:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(NLW_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_inst_m_axi_wvalid_UNCONNECTED),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b1}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b1),
        .s_axi_wready(NLW_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_pc_1_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYvhEjj3nb5oH8uSNLeXMIy7nJYVR9CgwYrS2YsK1wH0yG7GgJF3h7LWVAsRpUASOB7rHmuPVhb5
Ot5CFu1eFeE97Zpvi2xwlrFd2yOm/xOs4mKX3gkTIBIJmAKj42AUYk/LR9j6mOwXFIQmoZqYXHak
Pq2yC2ljr0hY1gwTFtI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z+2GQWpqmewONlHVkL658DHQ1gOkrvPjxsrm0NDcBmt2DgE1WctRC0/WtmZNRR2P9xNPEc1AnD3g
x2bmQ9ClncBm4tJJUerktYV7SZWaAFXLpL0mImalEctnoiL1emAUpqT2xWqYmc7/Up4fedi3U63/
6fZpFkfLPe1f/3mRlu+DKs00gVRP+t6V+01C1oWFsyvdyS5tDx/D7YWjpI8AZn7PAxGanwdNWWSB
/kAFPcC2bUzb0T91+nSe2x7K7ugumFrWpHW6iiuiY86OlLeqrAD5SZsqHhPT9GqJmSzj5PdAcMm2
1N7wj661ojPTxlfvw7ydkwisxeQEZRQ1H8LwwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NWkv++1uc4OUvmLLmKamw2rSfdpVbwBET7oFkV2XGR6y3sZCnAwLR/UY8EXqGYSYtRzQMSec4n13
l7DB/8txjOrwXvZKfRBpPdz4pIT7HDh50CC1gJaraDaEr18dxcLyq6t0fo14o+JyrAxZm7/nDg78
7/uEhQnwCkDeOEnusng=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RPz1UvQF5/1bAGbmkE93ADh5aKEj2NdkJKJJhSjosDEbYcFH8ZSL5Ew53E1CBLn7KjAnpfOLAKVf
fX9beeVP5C5vU0n7ZMu9ISDuX947ttq4eCcbaV78UxB5l1Lj8hlouzML1BQecqW1z0mUCgW7CBoO
kvS93cLpph/VpfSwuTwO3q41V7Gxeshrw2U3zfZGHMUL2TI8fX+U+qCt5oG7UGDkIiE+SZRN8eQK
SY18ZEkuzeSrAbp1xn25WHjeUYF1dwHmcNf4wRKiww67b89Lqk9DBKAL9rsw0KWuua8qjESM8t3w
D+f6RYj2AciBO842MNa2LlXNkWM+oLq1CtukmQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcQzkZp4Sch9TwvI82NYHoYu7Fu4A68g8HQ0GQQvhgP0VPOA5fVtIXlGeuCjshtvB9SbR/JdhJVW
H0AcjAKKgHxZK+en5z2azbfr9d1BbF03MjLpFIxdwUacvQfXpyvYKYFtjplThociLLWtOUmXj84s
4nP0l8PXdvTblIHap6SfZL6Dhv1jlcCTvUTUGoULVvQRU16E+vFCep9sJnLwhCCldBnB5vBZ5TCu
AXnNJpF2Gx4Y+BC9c7XyNRkVfKm11TUyI3pc5OcNWX+42CRvLbMSKG711f5VO+yZsWi9YEWqMTjN
RN18y3FwbJ9g/6K9ZswbGNgjRnn7l2PRbFrMKg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ic0gE1G8ZymuhdpWjbURYCva14oPCOYHWxeY1WbqEo4fRdhM6YimsmNp3RyJRpeG6TFY0iDQtGg1
f5g5G1LTD2KIG+dBZyfKNnTE/ZOWrLJOblPxV8gmBtOye+53NJXzi8+oEuZceCLJxPBg1t44/kD6
M9x687RC58J0HT1/+RsMdCvAGIhlkdNOkb4+dhOoGEPVtNJhV6u4ccNdcnLz1ZaIW6yGByR8UXna
8XH9yb/yWXZzxveULhlxfYe5edpqYlF99QdUnueTFFmCXxIYP4G0xwFM1S929iLWZUS13jbam+X4
5SLDsqw5epDM/DVK5Cv0VD4JajhRoM+fGT/I4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W34Gq4IReWdH4guFD03wBoHFTA+s1wgkA3uEFz/xWEihtgcet7BzSoGE0K8FQKLVs+D+mR8yPD8Z
vuUkN7L+imyxs7FeoUUpCBNbo0z5XahETBApULQzISBGdsC2f/p8wwDdoHY5E0UjcHOTr+Pah6x+
Kb/OiJAA3/B3geutymFuXHhdGJVoLS30F7CpbZpHTVoZZBU1TgUTFXAySsVWu7k+NMAoSxDKr4k3
10DyqW8wuvTaTG+NdumVzlwtmHHXVSiGk0//Q/9EJmzEzH0Pi9m/wmiONCYRmb0c/K5YHCIs7xNF
nWpl/fzOUJQequCzR636PCmQz3/wSjGRil3HDQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iEsUxC8JQZnRxQOm+O4jwBmkm5PoeeMBxaBqVOvKpTXSyjvbLGMDYSb0fxpNvdSJbtZpFIPnAww+
aq3rl7doHEf1kjM2dC4rjvZWa0jWRoJIANcbomcPl6IeiRfAUGCGIDrNDxK+Y3GNvZf2de79ApcB
dTaCVwgrbloNzIJwiJkRY1og57CtPhYfZGFMkwwQ1yHtCyOiuh1DFTM1HOr7jtC54Rj43wY2EpJp
V8vuUqRPQXW8kinGG+26i34AsoOI/xAYSbvXdBHrgwQSzEVIApd8q+QxH+P/twlQ/rFGh9QkEtsf
01rrVJSI2TzVwOQBjP9yRmeHw8y91krSW2dGHHjOd+HVO8Mpbdh4nOvQiYQjNK1lqwInPGOH2bM6
kuUfNcfP9+0NlRUDVuuhbzPVr++hGny3Hvo5Aq7bQqtKrYhqiaLWIWoY6mFPGyfIoZrbVClEO/oY
G2CKj5JTQTRFxNUtusbqdXg+69YwdnuXoF9oFfaVJwpFYlKtWBm5LeRv

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YKagekiHOyMnMVPg7PmagWsOMo70GABOzboT0+MRxNHoWf+7KtPwFZmbZAZPMjbv2wgx5vSsG1VZ
GZlduGJPTey/Q2+Yx2fvgCJb2dlR/HDmPB+1X4vVosJEw5nD6m8yWJd0L+NZCG6gtRelGjAxjm68
yPC9qOiRc6jrOM91cmFC6Xi2jeY4t5FHi4zmBceasIzRWIBnat7p0fZ3CZaaY76+K02CE2jND22R
W0XlRGoYVtWNukn5s4Z4AkME8oKdQugjp9rNooVbn7sWp5td9RHT1ZxOWgINwiHb6D9MOnsOSGwz
2K1jXhGDdXe4TOnFPIn6VglS5Y05u1snfUxFlA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 72096)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
