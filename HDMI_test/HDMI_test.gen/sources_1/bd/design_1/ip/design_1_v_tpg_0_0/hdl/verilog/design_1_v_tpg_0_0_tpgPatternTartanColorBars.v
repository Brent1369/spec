// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module design_1_v_tpg_0_0_tpgPatternTartanColorBars (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        y,
        x,
        width,
        height,
        color,
        ap_return_0,
        ap_return_1,
        ap_return_2
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
input  [15:0] y;
input  [15:0] x;
input  [13:0] width;
input  [13:0] height;
input  [7:0] color;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output  [7:0] ap_return_2;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_subdone;
reg   [2:0] vBarSel;
reg   [9:0] yCount_V;
reg   [2:0] hBarSel;
reg   [9:0] xCount_V;
wire   [5:0] tpgTartanBarArray_address0;
reg    tpgTartanBarArray_ce0;
wire   [2:0] tpgTartanBarArray_q0;
wire   [2:0] tpgBarSelRgb_r16_address0;
reg    tpgBarSelRgb_r16_ce0;
wire   [1:0] tpgBarSelRgb_r16_q0;
wire   [2:0] tpgBarSelRgb_g14_address0;
reg    tpgBarSelRgb_g14_ce0;
wire   [1:0] tpgBarSelRgb_g14_q0;
wire   [2:0] tpgBarSelRgb_b12_address0;
reg    tpgBarSelRgb_b12_ce0;
wire   [1:0] tpgBarSelRgb_b12_q0;
wire   [2:0] tpgBarSelYuv_y22_address0;
reg    tpgBarSelYuv_y22_ce0;
wire   [7:0] tpgBarSelYuv_y22_q0;
wire   [2:0] tpgBarSelYuv_v20_address0;
reg    tpgBarSelYuv_v20_ce0;
wire   [7:0] tpgBarSelYuv_v20_q0;
wire   [2:0] tpgBarSelYuv_u18_address0;
reg    tpgBarSelYuv_u18_ce0;
wire   [7:0] tpgBarSelYuv_u18_q0;
wire   [0:0] icmp_ln1336_fu_255_p2;
reg   [0:0] icmp_ln1336_reg_559;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln1336_1_fu_267_p2;
reg   [0:0] icmp_ln1336_1_reg_564;
wire   [9:0] tmp_fu_273_p4;
wire   [0:0] cmp50_fu_283_p2;
wire   [2:0] add_ln1367_fu_321_p2;
wire   [0:0] icmp_ln1072_1_fu_303_p2;
wire   [0:0] and_ln1379_1_fu_369_p2;
reg   [0:0] and_ln1379_1_reg_593;
reg   [0:0] and_ln1379_1_reg_593_pp0_iter1_reg;
reg   [0:0] and_ln1379_1_reg_593_pp0_iter2_reg;
reg   [2:0] ap_phi_mux_vBarSel_loc_2_phi_fu_199_p8;
wire   [2:0] ap_phi_reg_pp0_iter0_vBarSel_loc_2_reg_195;
reg   [2:0] ap_phi_reg_pp0_iter1_vBarSel_loc_2_reg_195;
wire   [0:0] and_ln1341_fu_404_p2;
wire   [2:0] add_ln1348_fu_415_p2;
wire   [2:0] ap_phi_reg_pp0_iter0_hBarSel_loc_1_reg_210;
reg   [2:0] ap_phi_reg_pp0_iter1_hBarSel_loc_1_reg_210;
wire   [63:0] zext_ln1374_fu_472_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1374_1_fu_477_p1;
wire   [9:0] add_ln885_fu_428_p2;
wire   [9:0] sub_ln886_fu_309_p2;
wire   [9:0] add_ln885_1_fu_333_p2;
wire   [13:0] add_ln1328_fu_227_p2;
wire   [9:0] trunc_ln1_fu_233_p4;
wire   [15:0] or_ln1336_fu_261_p2;
wire   [13:0] add_ln1329_fu_249_p2;
wire   [9:0] barWidthMinSamples_fu_243_p2;
wire   [0:0] trunc_ln1324_fu_223_p1;
wire   [0:0] sel_tmp1_fu_357_p2;
wire   [0:0] and_ln1379_fu_363_p2;
wire   [0:0] cmp71_fu_289_p2;
wire   [10:0] zext_ln1541_fu_385_p1;
wire   [10:0] zext_ln1072_fu_394_p1;
wire   [10:0] ret_fu_388_p2;
wire   [0:0] icmp_ln1072_fu_398_p2;
wire   [5:0] or_ln_fu_452_p3;
wire   [7:0] zext_ln1370_fu_460_p1;
wire   [10:0] tmp_1_fu_464_p3;
wire  signed [7:0] sext_ln320_fu_491_p1;
wire   [7:0] sel_tmp_fu_499_p3;
wire  signed [7:0] tpgBarSelRgb_r_load_cast_fu_487_p1;
wire   [7:0] sel_tmp4_fu_513_p3;
wire  signed [7:0] tpgBarSelRgb_b_load_cast_fu_495_p1;
wire   [7:0] sel_tmp8_fu_527_p3;
wire   [7:0] pix_val_V_fu_520_p3;
wire   [7:0] pix_val_V_1_fu_506_p3;
wire   [7:0] pix_val_V_2_fu_534_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to2;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_178;
reg    ap_condition_195;
reg    ap_condition_184;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 vBarSel = 3'd0;
#0 yCount_V = 10'd0;
#0 hBarSel = 3'd0;
#0 xCount_V = 10'd0;
end

design_1_v_tpg_0_0_tpgPatternTartanColorBars_tpgTartanBarArray_ROM_AUTO_1R #(
    .DataWidth( 3 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
tpgTartanBarArray_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgTartanBarArray_address0),
    .ce0(tpgTartanBarArray_ce0),
    .q0(tpgTartanBarArray_q0)
);

design_1_v_tpg_0_0_tpgPatternDPColorSquare_DPtpgBarSelRgb_VESA_r_ROM_AUTO_1R #(
    .DataWidth( 2 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
tpgBarSelRgb_r16_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgBarSelRgb_r16_address0),
    .ce0(tpgBarSelRgb_r16_ce0),
    .q0(tpgBarSelRgb_r16_q0)
);

design_1_v_tpg_0_0_tpgPatternDPColorSquare_DPtpgBarSelRgb_VESA_g_ROM_AUTO_1R #(
    .DataWidth( 2 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
tpgBarSelRgb_g14_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgBarSelRgb_g14_address0),
    .ce0(tpgBarSelRgb_g14_ce0),
    .q0(tpgBarSelRgb_g14_q0)
);

design_1_v_tpg_0_0_tpgPatternDPColorSquare_DPtpgBarSelRgb_VESA_b_ROM_AUTO_1R #(
    .DataWidth( 2 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
tpgBarSelRgb_b12_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgBarSelRgb_b12_address0),
    .ce0(tpgBarSelRgb_b12_ce0),
    .q0(tpgBarSelRgb_b12_q0)
);

design_1_v_tpg_0_0_tpgPatternCheckerBoard_tpgBarSelYuv_y21_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
tpgBarSelYuv_y22_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgBarSelYuv_y22_address0),
    .ce0(tpgBarSelYuv_y22_ce0),
    .q0(tpgBarSelYuv_y22_q0)
);

design_1_v_tpg_0_0_tpgPatternCheckerBoard_tpgBarSelYuv_v19_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
tpgBarSelYuv_v20_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgBarSelYuv_v20_address0),
    .ce0(tpgBarSelYuv_v20_ce0),
    .q0(tpgBarSelYuv_v20_q0)
);

design_1_v_tpg_0_0_tpgPatternCheckerBoard_tpgBarSelYuv_u17_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
tpgBarSelYuv_u18_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgBarSelYuv_u18_address0),
    .ce0(tpgBarSelYuv_u18_ce0),
    .q0(tpgBarSelYuv_u18_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_178)) begin
        if (((icmp_ln1072_1_fu_303_p2 == 1'd0) & (icmp_ln1336_fu_255_p2 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_hBarSel_loc_1_reg_210 <= add_ln1367_fu_321_p2;
        end else if (((icmp_ln1072_1_fu_303_p2 == 1'd1) & (icmp_ln1336_fu_255_p2 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_hBarSel_loc_1_reg_210 <= hBarSel;
        end else if ((icmp_ln1336_fu_255_p2 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_hBarSel_loc_1_reg_210 <= 3'd0;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_hBarSel_loc_1_reg_210 <= ap_phi_reg_pp0_iter0_hBarSel_loc_1_reg_210;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_178)) begin
        if ((icmp_ln1336_1_fu_267_p2 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_vBarSel_loc_2_reg_195 <= 3'd0;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_vBarSel_loc_2_reg_195 <= ap_phi_reg_pp0_iter0_vBarSel_loc_2_reg_195;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_178)) begin
        if ((icmp_ln1336_fu_255_p2 == 1'd1)) begin
            hBarSel <= 3'd0;
        end else if (((icmp_ln1072_1_fu_303_p2 == 1'd0) & (icmp_ln1336_fu_255_p2 == 1'd0))) begin
            hBarSel <= add_ln1367_fu_321_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_184)) begin
        if ((icmp_ln1336_1_reg_564 == 1'd1)) begin
            vBarSel <= 3'd0;
        end else if ((1'b1 == ap_condition_195)) begin
            vBarSel <= add_ln1348_fu_415_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_178)) begin
        if ((icmp_ln1336_fu_255_p2 == 1'd1)) begin
            xCount_V <= 10'd0;
        end else if (((icmp_ln1072_1_fu_303_p2 == 1'd1) & (icmp_ln1336_fu_255_p2 == 1'd0))) begin
            xCount_V <= add_ln885_1_fu_333_p2;
        end else if (((icmp_ln1072_1_fu_303_p2 == 1'd0) & (icmp_ln1336_fu_255_p2 == 1'd0))) begin
            xCount_V <= sub_ln886_fu_309_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_184)) begin
        if ((icmp_ln1336_1_reg_564 == 1'd1)) begin
            yCount_V <= 10'd0;
        end else if (((1'd1 == and_ln1341_fu_404_p2) & (icmp_ln1336_1_reg_564 == 1'd0))) begin
            yCount_V <= add_ln885_fu_428_p2;
        end else if ((1'b1 == ap_condition_195)) begin
            yCount_V <= 10'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln1379_1_reg_593 <= and_ln1379_1_fu_369_p2;
        and_ln1379_1_reg_593_pp0_iter1_reg <= and_ln1379_1_reg_593;
        icmp_ln1336_1_reg_564 <= icmp_ln1336_1_fu_267_p2;
        icmp_ln1336_reg_559 <= icmp_ln1336_fu_255_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        and_ln1379_1_reg_593_pp0_iter2_reg <= and_ln1379_1_reg_593_pp0_iter1_reg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln1341_fu_404_p2) & (icmp_ln1336_1_reg_564 == 1'd0) & (icmp_ln1336_reg_559 == 1'd1))) begin
        ap_phi_mux_vBarSel_loc_2_phi_fu_199_p8 = add_ln1348_fu_415_p2;
    end else if ((((1'd0 == and_ln1341_fu_404_p2) & (icmp_ln1336_1_reg_564 == 1'd0) & (icmp_ln1336_reg_559 == 1'd0)) | ((1'd1 == and_ln1341_fu_404_p2) & (icmp_ln1336_1_reg_564 == 1'd0)))) begin
        ap_phi_mux_vBarSel_loc_2_phi_fu_199_p8 = vBarSel;
    end else begin
        ap_phi_mux_vBarSel_loc_2_phi_fu_199_p8 = ap_phi_reg_pp0_iter1_vBarSel_loc_2_reg_195;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce))) begin
        tpgBarSelRgb_b12_ce0 = 1'b1;
    end else begin
        tpgBarSelRgb_b12_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce))) begin
        tpgBarSelRgb_g14_ce0 = 1'b1;
    end else begin
        tpgBarSelRgb_g14_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce))) begin
        tpgBarSelRgb_r16_ce0 = 1'b1;
    end else begin
        tpgBarSelRgb_r16_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce))) begin
        tpgBarSelYuv_u18_ce0 = 1'b1;
    end else begin
        tpgBarSelYuv_u18_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce))) begin
        tpgBarSelYuv_v20_ce0 = 1'b1;
    end else begin
        tpgBarSelYuv_v20_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce))) begin
        tpgBarSelYuv_y22_ce0 = 1'b1;
    end else begin
        tpgBarSelYuv_y22_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tpgTartanBarArray_ce0 = 1'b1;
    end else begin
        tpgTartanBarArray_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1328_fu_227_p2 = (width + 14'd15);

assign add_ln1329_fu_249_p2 = (height + 14'd15);

assign add_ln1348_fu_415_p2 = (vBarSel + 3'd1);

assign add_ln1367_fu_321_p2 = (hBarSel + 3'd1);

assign add_ln885_1_fu_333_p2 = (xCount_V + 10'd1);

assign add_ln885_fu_428_p2 = (yCount_V + 10'd1);

assign and_ln1341_fu_404_p2 = (icmp_ln1336_reg_559 & icmp_ln1072_fu_398_p2);

assign and_ln1379_1_fu_369_p2 = (cmp71_fu_289_p2 & and_ln1379_fu_363_p2);

assign and_ln1379_fu_363_p2 = (trunc_ln1324_fu_223_p1 & sel_tmp1_fu_357_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_subdone = (1'b0 == ap_ce);
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_178 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_184 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_195 = ((1'd0 == and_ln1341_fu_404_p2) & (icmp_ln1336_1_reg_564 == 1'd0) & (icmp_ln1336_reg_559 == 1'd1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_hBarSel_loc_1_reg_210 = 'bx;

assign ap_phi_reg_pp0_iter0_vBarSel_loc_2_reg_195 = 'bx;

assign ap_return_0 = pix_val_V_fu_520_p3;

assign ap_return_1 = pix_val_V_1_fu_506_p3;

assign ap_return_2 = pix_val_V_2_fu_534_p3;

assign barWidthMinSamples_fu_243_p2 = ($signed(trunc_ln1_fu_233_p4) + $signed(10'd1023));

assign cmp50_fu_283_p2 = ((color == 8'd0) ? 1'b1 : 1'b0);

assign cmp71_fu_289_p2 = ((color != 8'd1) ? 1'b1 : 1'b0);

assign icmp_ln1072_1_fu_303_p2 = ((xCount_V < barWidthMinSamples_fu_243_p2) ? 1'b1 : 1'b0);

assign icmp_ln1072_fu_398_p2 = (($signed(zext_ln1072_fu_394_p1) < $signed(ret_fu_388_p2)) ? 1'b1 : 1'b0);

assign icmp_ln1336_1_fu_267_p2 = ((or_ln1336_fu_261_p2 == 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln1336_fu_255_p2 = ((x == 16'd0) ? 1'b1 : 1'b0);

assign or_ln1336_fu_261_p2 = (y | x);

assign or_ln_fu_452_p3 = {{ap_phi_mux_vBarSel_loc_2_phi_fu_199_p8}, {ap_phi_reg_pp0_iter1_hBarSel_loc_1_reg_210}};

assign pix_val_V_1_fu_506_p3 = ((and_ln1379_1_reg_593_pp0_iter2_reg[0:0] == 1'b1) ? tpgBarSelYuv_v20_q0 : sel_tmp_fu_499_p3);

assign pix_val_V_2_fu_534_p3 = ((and_ln1379_1_reg_593_pp0_iter2_reg[0:0] == 1'b1) ? tpgBarSelYuv_v20_q0 : sel_tmp8_fu_527_p3);

assign pix_val_V_fu_520_p3 = ((and_ln1379_1_reg_593_pp0_iter2_reg[0:0] == 1'b1) ? tpgBarSelYuv_y22_q0 : sel_tmp4_fu_513_p3);

assign ret_fu_388_p2 = ($signed(zext_ln1541_fu_385_p1) + $signed(11'd2047));

assign sel_tmp1_fu_357_p2 = (cmp50_fu_283_p2 ^ 1'd1);

assign sel_tmp4_fu_513_p3 = ((cmp50_fu_283_p2[0:0] == 1'b1) ? tpgBarSelRgb_r_load_cast_fu_487_p1 : tpgBarSelYuv_y22_q0);

assign sel_tmp8_fu_527_p3 = ((cmp50_fu_283_p2[0:0] == 1'b1) ? tpgBarSelRgb_b_load_cast_fu_495_p1 : tpgBarSelYuv_v20_q0);

assign sel_tmp_fu_499_p3 = ((cmp50_fu_283_p2[0:0] == 1'b1) ? sext_ln320_fu_491_p1 : tpgBarSelYuv_u18_q0);

assign sext_ln320_fu_491_p1 = $signed(tpgBarSelRgb_g14_q0);

assign sub_ln886_fu_309_p2 = (xCount_V - barWidthMinSamples_fu_243_p2);

assign tmp_1_fu_464_p3 = {{3'd0}, {zext_ln1370_fu_460_p1}};

assign tmp_fu_273_p4 = {{add_ln1329_fu_249_p2[13:4]}};

assign tpgBarSelRgb_b12_address0 = zext_ln1374_1_fu_477_p1;

assign tpgBarSelRgb_b_load_cast_fu_495_p1 = $signed(tpgBarSelRgb_b12_q0);

assign tpgBarSelRgb_g14_address0 = zext_ln1374_1_fu_477_p1;

assign tpgBarSelRgb_r16_address0 = zext_ln1374_1_fu_477_p1;

assign tpgBarSelRgb_r_load_cast_fu_487_p1 = $signed(tpgBarSelRgb_r16_q0);

assign tpgBarSelYuv_u18_address0 = zext_ln1374_1_fu_477_p1;

assign tpgBarSelYuv_v20_address0 = zext_ln1374_1_fu_477_p1;

assign tpgBarSelYuv_y22_address0 = zext_ln1374_1_fu_477_p1;

assign tpgTartanBarArray_address0 = zext_ln1374_fu_472_p1;

assign trunc_ln1324_fu_223_p1 = x[0:0];

assign trunc_ln1_fu_233_p4 = {{add_ln1328_fu_227_p2[13:4]}};

assign zext_ln1072_fu_394_p1 = yCount_V;

assign zext_ln1370_fu_460_p1 = or_ln_fu_452_p3;

assign zext_ln1374_1_fu_477_p1 = tpgTartanBarArray_q0;

assign zext_ln1374_fu_472_p1 = tmp_1_fu_464_p3;

assign zext_ln1541_fu_385_p1 = tmp_fu_273_p4;

endmodule //design_1_v_tpg_0_0_tpgPatternTartanColorBars
