module testbench;

    reg [3:0] sensor_input;     // Entrada com 4 bits
    wire [2:0] rest;            // Saida com 3 bits

    // Instancia o modulo tesla_autopilot
    tesla_autopilot dut (
        .sensor_input(sensor_input),
        .rest(rest)
    );

    initial begin
        /* Controla a geracao de arquivo e 
        salva as variaveis no arquivo de saida */
        $dumpfile("test.vcd");
        $dumpvars(0, testbench);

        // Testa os sensores fornecidos (com diretiva de atraso temporal)
        sensor_input = 4'b0110; #10; // Sensor 1: 0110 - 6 % 5 = 1
        $display("Entrada: %b, Rest: %b", sensor_input, rest);

        sensor_input = 4'b1101; #10; // Sensor 2: 1101 - 13 % 5 = 3
        $display("Entrada: %b, Rest: %b", sensor_input, rest);

        sensor_input = 4'b1010; #10; // Sensor 3: 1010 - 10 % 5 = 0
        $display("Entrada: %b, Rest: %b", sensor_input, rest);

        sensor_input = 4'b0011; #10; // Sensor 4: 0011 - 3 % 5 = 3
        $display("Entrada: %b, Rest: %b", sensor_input, rest);

        sensor_input = 4'b1001; #10; // Sensor 5: 1001 - 9 % 5 = 4
        $display("Entrada: %b, Rest: %b", sensor_input, rest);

        // Casos de teste adicionais:
        sensor_input = 4'b0000; #10; // Sensor 6: 0000 - 0 % 5 = 0
        $display("Entrada: %b, Rest: %b", sensor_input, rest);

        sensor_input = 4'b0001; #10; // Sensor 7: 0001 - 1 % 5 = 1
        $display("Entrada: %b, Rest: %b", sensor_input, rest);

        sensor_input = 4'b0111; #10; // Sensor 8: 0111 - 7 % 5 = 2
        $display("Entrada: %b, Rest: %b", sensor_input, rest);

        sensor_input = 4'b1111; #10; // Sensor 9: 1111 - 15 % 5 = 0
        $display("Entrada: %b, Rest: %b", sensor_input, rest);

        sensor_input = 4'b0101; #10; // Sensor 10: 0101 - 5 % 5 = 0
        $display("Entrada: %b, Rest: %b", sensor_input, rest);

        sensor_input = 4'b1000; #10; // Sensor 11: 1000 - 8 % 5 = 3
        $display("Entrada: %b, Rest: %b", sensor_input, rest);

        $finish;
    end
endmodule


