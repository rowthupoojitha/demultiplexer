`timescale 1ns/1ps

module demultiplexer_tb;

reg D;
reg S0, S1;
wire Y0, Y1, Y2, Y3;

// Instantiate the DUT
demultiplexer uut (
    .D(D),
    .S0(S0),
    .S1(S1),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin

    // Generate waveform
    $dumpfile("demultiplexer.vcd");
    $dumpvars(0, demultiplexer_tb);

    D = 1;

    $display("D S1 S0 | Y0 Y1 Y2 Y3");
    $display("----------------------");

    S1 = 0; S0 = 0; #10;
    $display("%b  %b  %b | %b  %b  %b  %b", D,S1,S0,Y0,Y1,Y2,Y3);

    S1 = 0; S0 = 1; #10;
    $display("%b  %b  %b | %b  %b  %b  %b", D,S1,S0,Y0,Y1,Y2,Y3);

    S1 = 1; S0 = 0; #10;
    $display("%b  %b  %b | %b  %b  %b  %b", D,S1,S0,Y0,Y1,Y2,Y3);

    S1 = 1; S0 = 1; #10;
    $display("%b  %b  %b | %b  %b  %b  %b", D,S1,S0,Y0,Y1,Y2,Y3);

    $finish;

end

endmodule