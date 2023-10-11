// Copyright (C) Microsoft Corporation. All rights reserved.

// Autogenerated Code Do not edit

module msftDvIp_riscv_cheri_debug_rom #(
    parameter DATA_WIDTH=32,
    parameter ROM_SIZE=256
  ) (
  input           clk_i,
  input           rstn_i,
  input           debug_mode_i,

  input               en_i,
  input      [11:0]   addr_i,
  output reg [DATA_WIDTH-1:0]   rdata_o,
  output          ready_o,
  output          error_o
);

localparam ROM_WORDS = ROM_SIZE/4;
localparam ROM_BITS = $clog2(ROM_SIZE);

logic [ROM_WORDS-1:0][DATA_WIDTH-1:0]   rom;

wire [ROM_BITS-1-2:0] rom_addr = addr_i[ROM_BITS-1:2];

assign ready_o = 1'b1;
assign error_o = ~debug_mode_i;
assign rom = {
  33'h0_7B200073,
  33'h0_0390045B,
  33'h0_10802423,
  33'h0_F1402473,
  33'h0_A5DFF06F,
  33'h0_0390045B,
  33'h0_10002223,
  33'h0_B19FF06F,
  33'h0_0390045B,
  33'h0_10002223,
  33'h0_B05FF06F,
  33'h0_0390045B,
  33'h0_10002223,
  33'h0_B01FF06F,
  33'h0_0390045B,
  33'h0_10002223,
  33'h0_00100073,
  33'h0_0390045B,
  33'h0_10002623,
  33'h0_FADFF06F,
  33'h0_02041663,
  33'h0_01047413,
  33'h0_40044403,
  33'h0_F1402473,
  33'h0_02041863,
  33'h0_00847413,
  33'h0_40044403,
  33'h0_F1402473,
  33'h0_02041A63,
  33'h0_00447413,
  33'h0_40044403,
  33'h0_F1402473,
  33'h0_FC0418E3,
  33'h0_00247413,
  33'h0_40044403,
  33'h0_F1402473,
  33'h0_06041C63,
  33'h0_00147413,
  33'h0_40044403,
  33'h0_10802023,
  33'h0_F1402473,
  33'h0_0394005B,
  33'h0_0FF0000F,
  33'h0_0640006F,
  33'h0_0A40006F,
  33'h0_00C0006F
};

always @(posedge clk_i or negedge rstn_i)
begin
  if(~rstn_i) begin
    rdata_o <= 33'h0_0000_0000;
  end else begin
    if(en_i) begin
      rdata_o <= rom[rom_addr];
    end else begin
      rdata_o <= 33'h0_0000_0000;
    end
  end
end

endmodule
