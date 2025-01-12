module tesla_autopilot(
    input [3:0] sensor_input, // Entrada com 4 bits
    output reg [2:0] rest     // Saída com 3 bits
);

    // Calcula o resto da divisao por 5 e atribui o resto
    always @(*) begin
        case(sensor_input)
            4'b0000: rest = 3'b000; // 0 % 5 = 0
            4'b0001: rest = 3'b001; // 1 % 5 = 1
            4'b0010: rest = 3'b010; // 2 % 5 = 2
            4'b0011: rest = 3'b011; // 3 % 5 = 3
            4'b0100: rest = 3'b100; // 4 % 5 = 4
            4'b0101: rest = 3'b000; // 5 % 5 = 0
            4'b0110: rest = 3'b001; // 6 % 5 = 1
            4'b0111: rest = 3'b010; // 7 % 5 = 2
            4'b1000: rest = 3'b011; // 8 % 5 = 3
            4'b1001: rest = 3'b100; // 9 % 5 = 4
            4'b1010: rest = 3'b000; // 10 % 5 = 0
            4'b1011: rest = 3'b001; // 11 % 5 = 1
            4'b1100: rest = 3'b010; // 12 % 5 = 2
            4'b1101: rest = 3'b011; // 13 % 5 = 3
            4'b1110: rest = 3'b100; // 14 % 5 = 4
            4'b1111: rest = 3'b000; // 15 % 5 = 0

            // retorna 0 quando o sensor_input nao esta no intervalo
            default: rest = 3'b000;
        endcase
    end
endmodule
