`timescale 1ns / 1ps

module lab_05(
    input [3:0] num,
    input [2:0] sel,
    output logic An_0, An_1, An_2, An_3, An_4, An_5, An_6, An_7,
    output logic seg_A, seg_B, seg_C, seg_D, seg_E, seg_F, seg_G,
    output logic dp
);

    logic a, b, c;
    logic A, B, C, D;

    always_comb begin
        a = sel[0];
        b = sel[1];
        c = sel[2];
    end

    always_comb begin
        A = num[0];
        B = num[1];
        C = num[2];
        D = num[3];
    end

    always_comb begin
        case ({a, b, c})
            3'b000: {An_0, An_1, An_2, An_3, An_4, An_5, An_6, An_7} = 8'b00000001;
            3'b001: {An_0, An_1, An_2, An_3, An_4, An_5, An_6, An_7} = 8'b00000010;
            3'b010: {An_0, An_1, An_2, An_3, An_4, An_5, An_6, An_7} = 8'b00000100;
            3'b011: {An_0, An_1, An_2, An_3, An_4, An_5, An_6, An_7} = 8'b00001000;
            3'b100: {An_0, An_1, An_2, An_3, An_4, An_5, An_6, An_7} = 8'b00010000;
            3'b101: {An_0, An_1, An_2, An_3, An_4, An_5, An_6, An_7} = 8'b00100000;
            3'b110: {An_0, An_1, An_2, An_3, An_4, An_5, An_6, An_7} = 8'b01000000;
            3'b111: {An_0, An_1, An_2, An_3, An_4, An_5, An_6, An_7} = 8'b10000000;
            default: {An_0, An_1, An_2, An_3, An_4, An_5, An_6, An_7} = 8'b11111111;
        endcase
    end

    always_comb begin
        case (num)
            4'b0000: {seg_A, seg_B, seg_C, seg_D, seg_E, seg_F, seg_G} = 7'b0000001;
            4'b0001: {seg_A, seg_B, seg_C, seg_D, seg_E, seg_F, seg_G} = 7'b1001111;
            4'b0010: {seg_A, seg_B, seg_C, seg_D, seg_E, seg_F, seg_G} = 7'b0010010;
            4'b0011: {seg_A, seg_B, seg_C, seg_D, seg_E, seg_F, seg_G} = 7'b0000110;
            4'b0100: {seg_A, seg_B, seg_C, seg_D, seg_E, seg_F, seg_G} = 7'b1001100;
            4'b0101: {seg_A, seg_B, seg_C, seg_D, seg_E, seg_F, seg_G} = 7'b0100100;
            4'b0110: {seg_A, seg_B, seg_C, seg_D, seg_E, seg_F, seg_G} = 7'b0100000;
            4'b0111: {seg_A, seg_B, seg_C, seg_D, seg_E, seg_F, seg_G} = 7'b0001111;
            4'b1000: {seg_A, seg_B, seg_C, seg_D, seg_E, seg_F, seg_G} = 7'b0000000;
            4'b1001: {seg_A, seg_B, seg_C, seg_D, seg_E, seg_F, seg_G} = 7'b0000100;
            default: {seg_A, seg_B, seg_C, seg_D, seg_E, seg_F, seg_G} = 7'b1111111;
        endcase
    end

    always_comb begin
        dp = 1'b1;
    end

endmodule
