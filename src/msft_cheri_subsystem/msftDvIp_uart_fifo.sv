//========================================================
//========================================================
// FIFO Module
//========================================================
//========================================================
module msftDvIp_uart_fifo #(
    parameter FIFO_WIDTH=8,
    parameter FIFO_DEPTH=16,
    parameter FIFO_PTR_BITS= $clog2(FIFO_DEPTH)
  )  (

  input                       clk_i,
  input                       rstn_i,
  input                       rd_i,
  input                       wr_i,
  input  [FIFO_WIDTH-1:0]     wdata_i,
  output [FIFO_WIDTH-1:0]     rdata_o,
  output                      full_o,
  output                      empty_o,
  output [FIFO_PTR_BITS:0]    cnt_o,
  output reg                  ovr_o,
  output reg                  udr_o,
  input                       ovr_clr_i,
  input                       udr_clr_i
);



reg  [FIFO_WIDTH-1:0]     fifo [FIFO_DEPTH];
reg  [FIFO_PTR_BITS:0]    hp;
reg  [FIFO_PTR_BITS:0]    tp;

wire [FIFO_PTR_BITS-1:0]  tp_addr;
wire [FIFO_PTR_BITS-1:0]  hp_addr;

assign tp_addr = tp[FIFO_PTR_BITS-1:0];
assign tp_ovf  = tp[FIFO_PTR_BITS];
assign hp_addr = hp[FIFO_PTR_BITS-1:0];
assign hp_ovf  = hp[FIFO_PTR_BITS];

assign cnt_o = hp - tp;
assign empty_o = hp == tp;
assign full_o = (tp_ovf ^ hp_ovf) & (tp_addr == hp_addr);

assign rdata_o = fifo[tp_addr]; 


//========================================================
// FIFO Error bits
//========================================================
always @(posedge clk_i or negedge rstn_i)
begin
  if(~rstn_i) begin
    ovr_o <= 1'b0;
    udr_o <= 1'b0;
  end else begin
    if(wr_i & full_o) begin
      ovr_o <= 1'b1;
    end else if(ovr_clr_i) begin
      ovr_o <= 1'b0;
    end
    if(rd_i & empty_o) begin
      udr_o <= 1'b1;
    end else if(udr_clr_i) begin
      udr_o <= 1'b0;
    end
  end
end

//========================================================
// FIFO Control
//========================================================
always @(posedge clk_i or negedge rstn_i)
begin
  if(~rstn_i) begin
    hp <= {FIFO_PTR_BITS+1{1'b0}};
    tp <= {FIFO_PTR_BITS+1{1'b0}};
  end else begin
    if(rd_i & ~empty_o) begin
      tp <= tp + 1'b1;
    end
    if(wr_i & ~full_o) begin
      hp <= hp + 1'b1;
    end
  end
end

//========================================================
// FIFO
//========================================================
always @(posedge clk_i)
begin
  if(wr_i & ~full_o) begin
    fifo[hp_addr] <= wdata_i;
  end
end

endmodule
