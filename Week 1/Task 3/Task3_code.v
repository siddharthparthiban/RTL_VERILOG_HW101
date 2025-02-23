# If Statement (Always if)
module top_module(
  input a,
  input b,
  input sel_b1,
  input sel_b2,
  output wire out_assign,
  output reg out_always   ); 
  assign out_assign=(sel_b1 && sel_b2)? b:a;
  always @(*)
    begin
    if (sel_b1&&sel_b2)
      out_always=b;
      else
      out_always=a;
    end
endmodule

#If Statement latches 
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1;
        else
            shut_off_computer = 10;
    end

    always @(*) begin
        if (~arrived && ~gas_tank_empty )
           keep_driving = ~gas_tank_empty;
        else
            keep_driving = 0;
    end

endmodule

#Case Statements
module top_module ( 
    input [2:0] sel, 
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    output reg [3:0] out   );

    always@(*) begin  
        case(sel)
            3'b000:out=data0;
            3'b001:out=data1;
            3'b010:out=data2;
            3'b011:out=data3;
            3'b100:out=data4;
            3'b101:out=data5;
            default:out=3'b000;
        endcase
      end
endmodule

#Priority Encoder
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    always@(*)
        casez(in)
            default:pos=2'b00;
            
            4'bzzz1:pos=2'b00;
            4'bzz1z:pos=2'b01;
            4'bz1zz:pos=2'b10;
            4'b1zzz:pos=2'b11;
        endcase
endmodule

#Priority encoder with Casez
module top_module (
    input [7:0] in,
    output reg [2:0] pos );
    always @(*) begin
        casez (in[7:0])
             8'bzzzzzzz1: pos = 0;  
             8'bzzzzzz10: pos = 1;
             8'bzzzzz100: pos = 2;
             8'bzzzz1000: pos = 3;
             8'bzzz10000: pos = 4;
             8'bzz100000: pos = 5;
             8'bz1000000: pos = 6;
             8'b10000000: pos = 7;
        default: pos = 0;
    endcase
end
endmodule

#Avoiding Latches
module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 
    always@(*)
        begin
            up=1'b0;down=1'b0;left=1'b0;right=1'b0;
            case(scancode)
                16'he06b:left=1'b1;
                16'he072:down=1'b1;
                16'he074:right=1'b1;
                16'he075:up=1'b1;
            endcase
        end
endmodule
                
              
  
