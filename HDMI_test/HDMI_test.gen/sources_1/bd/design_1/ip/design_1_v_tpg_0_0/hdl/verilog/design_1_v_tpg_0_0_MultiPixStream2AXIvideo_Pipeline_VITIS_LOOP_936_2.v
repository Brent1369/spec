// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module design_1_v_tpg_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_936_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sof,
        empty,
        width_load_cast1,
        fid_in_load,
        fid,
        fid_ap_vld,
        ovrlayYUV_dout,
        ovrlayYUV_empty_n,
        ovrlayYUV_read,
        icmp_ln975,
        m_axis_video_TDATA,
        m_axis_video_TVALID,
        m_axis_video_TREADY,
        m_axis_video_TKEEP,
        m_axis_video_TSTRB,
        m_axis_video_TUSER,
        m_axis_video_TLAST,
        m_axis_video_TID,
        m_axis_video_TDEST,
        field_id_load,
        sub_cast,
        counter_loc_1_out_i,
        counter_loc_1_out_o,
        counter_loc_1_out_o_ap_vld,
        p_phi_out,
        p_phi_out_ap_vld,
        counter,
        counter_ap_vld
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_pp0_stage0 = 4'd2;
parameter    ap_ST_fsm_state4 = 4'd4;
parameter    ap_ST_fsm_state5 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] sof;
input  [0:0] empty;
input  [12:0] width_load_cast1;
input  [0:0] fid_in_load;
output  [0:0] fid;
output   fid_ap_vld;
input  [23:0] ovrlayYUV_dout;
input   ovrlayYUV_empty_n;
output   ovrlayYUV_read;
input  [0:0] icmp_ln975;
output  [23:0] m_axis_video_TDATA;
output   m_axis_video_TVALID;
input   m_axis_video_TREADY;
output  [2:0] m_axis_video_TKEEP;
output  [2:0] m_axis_video_TSTRB;
output  [0:0] m_axis_video_TUSER;
output  [0:0] m_axis_video_TLAST;
output  [0:0] m_axis_video_TID;
output  [0:0] m_axis_video_TDEST;
input  [15:0] field_id_load;
input  [12:0] sub_cast;
input  [15:0] counter_loc_1_out_i;
output  [15:0] counter_loc_1_out_o;
output   counter_loc_1_out_o_ap_vld;
output  [0:0] p_phi_out;
output   p_phi_out_ap_vld;
output  [15:0] counter;
output   counter_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[0:0] fid;
reg fid_ap_vld;
reg ovrlayYUV_read;
reg m_axis_video_TVALID;
reg[15:0] counter_loc_1_out_o;
reg counter_loc_1_out_o_ap_vld;
reg p_phi_out_ap_vld;
reg counter_ap_vld;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ovrlayYUV_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln936_reg_396;
reg    m_axis_video_TDATA_blk_n;
reg   [0:0] tmp_user_V_reg_198;
reg   [0:0] p_phi_reg_210;
wire   [15:0] field_id_load_read_read_fu_118_p2;
wire  signed [13:0] sub_cast_cast_fu_241_p1;
wire   [0:0] icmp_ln936_fu_257_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_last_V_fu_268_p2;
reg   [0:0] tmp_last_V_reg_400;
reg    ap_enable_reg_pp0_iter0;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg   [0:0] ap_phi_mux_tmp_user_V_phi_fu_202_p4;
reg   [0:0] ap_phi_mux_empty_134_phi_fu_226_p10;
wire   [0:0] ap_phi_reg_pp0_iter0_empty_134_reg_220;
reg   [0:0] ap_phi_reg_pp0_iter1_empty_134_reg_220;
wire   [0:0] fid_toggle_fu_304_p1;
wire   [0:0] fid_toggle_1_fu_340_p2;
wire   [15:0] add_ln960_fu_277_p2;
wire    ap_CS_fsm_state4;
reg   [12:0] j_fu_108;
wire   [12:0] j_2_fu_262_p2;
reg    ap_block_pp0_stage0_01001;
wire   [13:0] zext_ln936_fu_253_p1;
wire   [7:0] pix_444_V_fu_310_p1;
wire   [15:0] tmp_fu_314_p4;
wire   [23:0] p_Result_1_fu_324_p3;
wire    ap_CS_fsm_state5;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_160;
reg    ap_condition_137;
reg    ap_condition_284;
reg    ap_condition_287;
reg    ap_condition_290;
reg    ap_condition_293;
reg    ap_condition_296;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_137)) begin
        if ((1'b1 == ap_condition_160)) begin
            ap_phi_reg_pp0_iter1_empty_134_reg_220 <= fid_in_load;
        end else if (((icmp_ln936_fu_257_p2 == 1'd0) & (field_id_load_read_read_fu_118_p2 == 16'd2))) begin
            ap_phi_reg_pp0_iter1_empty_134_reg_220 <= 1'd1;
        end else if (((icmp_ln936_fu_257_p2 == 1'd0) & (field_id_load_read_read_fu_118_p2 == 16'd0))) begin
            ap_phi_reg_pp0_iter1_empty_134_reg_220 <= 1'd0;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_empty_134_reg_220 <= ap_phi_reg_pp0_iter0_empty_134_reg_220;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        j_fu_108 <= 13'd0;
    end else if (((icmp_ln936_fu_257_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        j_fu_108 <= j_2_fu_262_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_phi_reg_210 <= empty;
    end else if (((icmp_ln936_reg_396 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi_reg_210 <= ap_phi_mux_empty_134_phi_fu_226_p10;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_user_V_reg_198 <= sof;
    end else if (((icmp_ln936_reg_396 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_user_V_reg_198 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln936_reg_396 <= icmp_ln936_fu_257_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln936_fu_257_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_last_V_reg_400 <= tmp_last_V_fu_268_p2;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((icmp_ln936_fu_257_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln936_reg_396 == 1'd0)) begin
        if ((field_id_load_read_read_fu_118_p2 == 16'd3)) begin
            ap_phi_mux_empty_134_phi_fu_226_p10 = fid_toggle_1_fu_340_p2;
        end else if ((field_id_load_read_read_fu_118_p2 == 16'd1)) begin
            ap_phi_mux_empty_134_phi_fu_226_p10 = fid_toggle_fu_304_p1;
        end else begin
            ap_phi_mux_empty_134_phi_fu_226_p10 = ap_phi_reg_pp0_iter1_empty_134_reg_220;
        end
    end else begin
        ap_phi_mux_empty_134_phi_fu_226_p10 = ap_phi_reg_pp0_iter1_empty_134_reg_220;
    end
end

always @ (*) begin
    if (((icmp_ln936_reg_396 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_tmp_user_V_phi_fu_202_p4 = 1'd0;
    end else begin
        ap_phi_mux_tmp_user_V_phi_fu_202_p4 = tmp_user_V_reg_198;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln936_fu_257_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_phi_mux_tmp_user_V_phi_fu_202_p4 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        counter_ap_vld = 1'b1;
    end else begin
        counter_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln936_fu_257_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_phi_mux_tmp_user_V_phi_fu_202_p4 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        counter_loc_1_out_o = add_ln960_fu_277_p2;
    end else begin
        counter_loc_1_out_o = counter_loc_1_out_i;
    end
end

always @ (*) begin
    if (((icmp_ln936_fu_257_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_phi_mux_tmp_user_V_phi_fu_202_p4 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        counter_loc_1_out_o_ap_vld = 1'b1;
    end else begin
        counter_loc_1_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((1'b1 == ap_condition_296)) begin
            fid = fid_toggle_fu_304_p1;
        end else if ((1'b1 == ap_condition_293)) begin
            fid = fid_toggle_1_fu_340_p2;
        end else if ((1'b1 == ap_condition_290)) begin
            fid = fid_in_load;
        end else if ((1'b1 == ap_condition_287)) begin
            fid = 1'd0;
        end else if ((1'b1 == ap_condition_284)) begin
            fid = 1'd1;
        end else begin
            fid = 'bx;
        end
    end else begin
        fid = 'bx;
    end
end

always @ (*) begin
    if (((~(field_id_load_read_read_fu_118_p2 == 16'd3) & ~(field_id_load_read_read_fu_118_p2 == 16'd2) & ~(field_id_load_read_read_fu_118_p2 == 16'd1) & ~(field_id_load_read_read_fu_118_p2 == 16'd0) & (icmp_ln936_fu_257_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((field_id_load_read_read_fu_118_p2 == 16'd3) & (icmp_ln936_reg_396 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((field_id_load_read_read_fu_118_p2 == 16'd1) & (icmp_ln936_reg_396 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln936_fu_257_p2 == 1'd0) & (field_id_load_read_read_fu_118_p2 == 16'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln936_fu_257_p2 == 1'd0) & (field_id_load_read_read_fu_118_p2 == 16'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        fid_ap_vld = 1'b1;
    end else begin
        fid_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln936_reg_396 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axis_video_TDATA_blk_n = m_axis_video_TREADY;
    end else begin
        m_axis_video_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln936_reg_396 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axis_video_TVALID = 1'b1;
    end else begin
        m_axis_video_TVALID = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln936_reg_396 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ovrlayYUV_blk_n = ovrlayYUV_empty_n;
    end else begin
        ovrlayYUV_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln936_reg_396 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ovrlayYUV_read = 1'b1;
    end else begin
        ovrlayYUV_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_phi_out_ap_vld = 1'b1;
    end else begin
        p_phi_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((icmp_ln936_fu_257_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln936_fu_257_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln960_fu_277_p2 = (counter_loc_1_out_i + 16'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln936_reg_396 == 1'd0) & (m_axis_video_TREADY == 1'b0)) | ((icmp_ln936_reg_396 == 1'd0) & (ovrlayYUV_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((icmp_ln936_reg_396 == 1'd0) & (m_axis_video_TREADY == 1'b0)) | ((icmp_ln936_reg_396 == 1'd0) & (ovrlayYUV_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((icmp_ln936_reg_396 == 1'd0) & (m_axis_video_TREADY == 1'b0)) | ((icmp_ln936_reg_396 == 1'd0) & (ovrlayYUV_empty_n == 1'b0))));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = ((icmp_ln936_reg_396 == 1'd0) & (m_axis_video_TREADY == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = (((icmp_ln936_reg_396 == 1'd0) & (m_axis_video_TREADY == 1'b0)) | ((icmp_ln936_reg_396 == 1'd0) & (ovrlayYUV_empty_n == 1'b0)));
end

always @ (*) begin
    ap_condition_137 = ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_condition_160 = (~(field_id_load_read_read_fu_118_p2 == 16'd3) & ~(field_id_load_read_read_fu_118_p2 == 16'd2) & ~(field_id_load_read_read_fu_118_p2 == 16'd1) & ~(field_id_load_read_read_fu_118_p2 == 16'd0) & (icmp_ln936_fu_257_p2 == 1'd0));
end

always @ (*) begin
    ap_condition_284 = ((icmp_ln936_fu_257_p2 == 1'd0) & (field_id_load_read_read_fu_118_p2 == 16'd2) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_condition_287 = ((icmp_ln936_fu_257_p2 == 1'd0) & (field_id_load_read_read_fu_118_p2 == 16'd0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_condition_290 = (~(field_id_load_read_read_fu_118_p2 == 16'd3) & ~(field_id_load_read_read_fu_118_p2 == 16'd2) & ~(field_id_load_read_read_fu_118_p2 == 16'd1) & ~(field_id_load_read_read_fu_118_p2 == 16'd0) & (icmp_ln936_fu_257_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_condition_293 = ((field_id_load_read_read_fu_118_p2 == 16'd3) & (icmp_ln936_reg_396 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_condition_296 = ((field_id_load_read_read_fu_118_p2 == 16'd1) & (icmp_ln936_reg_396 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_empty_134_reg_220 = 'bx;

assign counter = (counter_loc_1_out_i + 16'd1);

assign fid_toggle_1_fu_340_p2 = (fid_toggle_fu_304_p1 ^ 1'd1);

assign fid_toggle_fu_304_p1 = counter_loc_1_out_i[0:0];

assign field_id_load_read_read_fu_118_p2 = field_id_load;

assign icmp_ln936_fu_257_p2 = ((j_fu_108 == width_load_cast1) ? 1'b1 : 1'b0);

assign j_2_fu_262_p2 = (j_fu_108 + 13'd1);

assign m_axis_video_TDATA = ((icmp_ln975[0:0] == 1'b1) ? p_Result_1_fu_324_p3 : ovrlayYUV_dout);

assign m_axis_video_TDEST = 1'd0;

assign m_axis_video_TID = 1'd0;

assign m_axis_video_TKEEP = 3'd7;

assign m_axis_video_TLAST = tmp_last_V_reg_400;

assign m_axis_video_TSTRB = 3'd0;

assign m_axis_video_TUSER = tmp_user_V_reg_198;

assign p_Result_1_fu_324_p3 = {{pix_444_V_fu_310_p1}, {tmp_fu_314_p4}};

assign p_phi_out = p_phi_reg_210;

assign pix_444_V_fu_310_p1 = ovrlayYUV_dout[7:0];

assign sub_cast_cast_fu_241_p1 = $signed(sub_cast);

assign tmp_fu_314_p4 = {{ovrlayYUV_dout[23:8]}};

assign tmp_last_V_fu_268_p2 = ((zext_ln936_fu_253_p1 == sub_cast_cast_fu_241_p1) ? 1'b1 : 1'b0);

assign zext_ln936_fu_253_p1 = j_fu_108;

endmodule //design_1_v_tpg_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_936_2