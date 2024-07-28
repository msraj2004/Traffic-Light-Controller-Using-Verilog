`timescale 1ns/1ps
`include "traffic_controller.v"
module  traffic_light_controller_tb;
reg clk;
reg rst;
reg [3:0]count ;
    reg [2:0] ps ;
wire [2:0]light_M1 ;
wire [2:0]light_s ;
wire [2:0]light_MT ;
wire [2:0]light_M2 ;
traffic_light_controller uut( clk,rst,light_M1,light_s,light_MT,light_M2);
 initial begin
    $dumpfile("light_tb.vcd");
    $dumpvars(0,traffic_light_controller_tb);
     $monitor ($time,"clk=%b,rst=%b,count=%b,ps=%b",clk,rst,count,ps);
   
        
    
     clk=1'b0;
     forever #5 clk =~clk;
   
 end
 initial begin
   
    
   
     rst=0;
        #5 rst=1;
        #5 rst=0;
        #200;
        $finish;
    end

   
 
endmodule