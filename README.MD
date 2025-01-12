Está tudo detalhado na documentação!


Implementacao do circuito:


Foi criado o módulo “tesla_autopilot” implementado em Verilog que visa calcular o
resto da divisão por 5 de valores fornecidos em binários de 4 bits. Nesse sentido, foi feito
utilizando bloco always para avaliar qualquer sinal de entrada quando a variável de entrada
definida for alterada. Desse modo, foram usadas estruturas “case” que mapearam os
valores de forma clara para cada entrada respectiva de seu resto. Dessa maneira, esse
modelo proporciona um código enxuto, simples e com um tempo de resposta curto para
atender as necessidades que o módulo precisa possuir.
A abordagem foi feita de forma que atenda a lógica combinacional assegurando que
a saída (que no caso é o resto por 5) seja atualizada de maneira automática sem atrasos
quando ocorrer a mudança nos sinais da entrada. Em relação a eficiência da
implementação, o código ficou com um bom desempenho, simples e determinístico. Assim,
foi definido o resto para cada caso da divisão por 5, implementando com baixa
complexidade e com fácil entendimento do código. No caso, é retornado o resto da divisão
por 5 em um formato de 3 bits.
O caso de teste definido por “testbench”, visa simular o módulo “tesla_autopilot” para
verificar o comportamento do módulo de cada valor por 5 com a saída de 3 bits. Desse
modo, foram cobertos todos os exemplos descritos na documentação e mais alguns
exemplos adicionais para garantir um código assertivo. Ademais, foi configurado o uso de
um arquivo de forma de onda para fazer uma análise gráfico.