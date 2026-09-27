Clock Test — Verilog e SystemVerilog

Um exemplo simples de clock e flip-flop desenvolvido para estudar os conceitos básicos de HDL.

O projeto contém a implementação em Verilog e uma versão equivalente em SystemVerilog.

Conceitos

- "reg"
- "logic"
- "always"
- "always_ff"
- "@"
- "posedge"
- Non-blocking assignment ("<=")
- Clock
- Flip-flop
- Simulação com atraso ("#")
- "$display"
- "`timescale"

Verilog

`timescale 1ns/1ps

module clk_test();
  reg clk = 0;
  reg q = 0;

  always begin
    #5;
    clk = ~clk;
    $display("clk: %b", clk);
  end

  always @(posedge clk) begin
    q <= ~q;
    $display("q: %b", q);
  end
endmodule

SystemVerilog

A mesma lógica pode ser escrita usando recursos do SystemVerilog:

`timescale 1ns/1ps

module clk_test();
  logic clk = 0;
  logic q = 0;

  always #5 begin
    clk = ~clk;
    $display("clk: %b", clk);
  end

  always_ff @(posedge clk) begin
    q <= ~q;
    $display("q: %b", q);
  end
endmodule

Funcionamento

O "clk" alterna entre "0" e "1" a cada "5 ns".

Quando ocorre uma borda de subida ("posedge") do clock, "q" alterna seu valor:

q = 0 → 1 → 0 → 1 → 0 ...

O "@" indica que o bloco deve reagir a um evento. Portanto:

always @(posedge clk)

significa que o bloco é executado sempre que o "clk" passar de "0" para "1".

Objetivo

Projeto criado para praticar Verilog, SystemVerilog, lógica sequencial, clock e flip-flops, comparando a sintaxe tradicional do Verilog com a do SystemVerilog.
