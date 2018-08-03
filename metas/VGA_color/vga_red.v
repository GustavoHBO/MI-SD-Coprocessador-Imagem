module vga_red(
					clk,
					reset,
					hys,
					vys,
					rgb_r,
					rgb_g,
					rgb_b,
					vga_r0,
					vga_r1,
					vga_r2,
					vga_g0,
					vga_g1,
					vga_g2,
					vga_b0,
					vga_b1,
					vga_b2
               );
					
input clk;
input reset;

output hys;
output vys;

output rgb_r;
output rgb_g;
output rgb_b;

output vga_r0;
output vga_r1;
output vga_r2;
output vga_g0;
output vga_g1;
output vga_g2;
output vga_b0;
output vga_b1;
output vga_b2;

reg[9:0] h_cnt;
reg[9:0] v_cnt;

reg clkout_flag;// clkdiv scan
reg clkout_r;
reg clkout_r_r;
//Definindo os parametros para o monitor

reg [9:0] HMAX = 10'd800;
reg [10:0] VMAX = 11'd630;

always@(posedge clk0 or negedge reset)
	if(!reset) h_cnt<=10'd0;
	else if(h_cnt==HMAX) h_cnt<=10'd0;
	else h_cnt<=h_cnt+1'b1;

always@(posedge clk0 or negedge reset)
	if(!reset) begin
	v_cnt<=10'd0;
	end
	else if(v_cnt==VMAX)  v_cnt<=10'd0; 
	else if(h_cnt==HMAX)  v_cnt<=v_cnt+1;
	
//generate hys
reg hys_r;
always@(posedge clk0 or negedge reset)
	if(!reset) hys_r<=0;
	else if(h_cnt==10'd0) hys_r<=1'b0;
	else if(h_cnt==10'd96) hys_r<=1'b1;
	
assign hys=hys_r;

//generate vys
reg vys_r;
always@(posedge clk0 or negedge reset)
	if(!reset) vys_r<=1'b0;
	else if(v_cnt==10'd0) vys_r<=1'b0;
   else if(v_cnt==10'd34) vys_r<=1'b1;	
	
assign vys=vys_r;

wire valid;

assign valid=(v_cnt>=10'd34)&&(v_cnt<VMAX)&&(h_cnt>=10'd114)&&(h_cnt<784);	

wire shape;
assign shape=(v_cnt>=100)&&(v_cnt<400);

	
//assign rgb_r=valid?1:0;
assign rgb_g=valid?1:0;
assign rgb_b=valid?1:0;

reg test = 1'b1;

assign vga_r0 = test;
assign vga_r1 = test;
assign vga_r2 = test;
assign vga_g0 = test;
assign vga_g1 = test;
assign vga_g2 = test;
assign vga_b0 = test;
assign vga_b1 = test;
assign vga_b2 = test;

vga_pll	vga_pll_inst (
	.inclk0(clk),
	.c0(clk0)
	);

endmodule
