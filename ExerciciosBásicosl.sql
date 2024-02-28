--Habilitando saída de dados no ambiente
set serveroutput on

--Desabilitando repetição de código nas mensagens
set verify off

--Comentário de linha
/* Comentário de várias linhas */

begin
-- Saída de dados
    dbms_output.put_line('OI');
end;
/
begin
-- Saída de dados
    dbms_output.put_line('OI');
    dbms_output.put_line('Salve');
end;
/
-- Usando variáveis de memória

declare
    v_nome varchar(10) := 'FIAP';
    v_nota number(2) := 10;
begin
    dbms_output.put_line(v_nome);
-- pipe pipe || concatena msg estática com váriavel de memória
    dbms_output.put_line('Mostrando conteúdo: '||v_nome||' - Nota: '||v_nota);
end;
/

-- Entrada de dados via teclado
declare
    v_nome varchar(10) := '&Nome';
    v_nota number(2) := &valor_nota;
begin
    dbms_output.put_line(v_nome);
-- pipe pipe || concatena msg estática com váriavel de memória
    dbms_output.put_line('Mostrando conteúdo: '||v_nome||' - Nota: '||v_nota);
end;
/

-- Processamento

declare
    v_1 number(4,2) := &Valor1;
    v_2 v_1%type := &Valor2;
    v_res v_1%type;
begin
    v_res :=v_1 + v_2;
-- pipe pipe || concatena msg estática com váriavel de memória
    dbms_output.put_line('Soma de '||v_1||' com '||v_2||' = '||v_res);
end;
/
/* EXERCÍCIO 1 (Criar um bloco PL-SQL para calcular o valor do novo 
salário mínimo que deverá ser de 25% em cima do atual, que é de R$
???)*/
declare
    v_salario number(6,2) := &Valor1;
    v_NSal v_salario%type;
begin
    v_NSal :=v_salario * 1.25;
     dbms_output.put_line('O sálario com aumento de 25% ficou no valor de '||v_NSal);
end;
/

/* Exercício 2 (– Criar um bloco PL-SQL para calcular o valor em 
REAIS de 45 dólares, sendo que o valor do câmbio a ser considerado 
é de R$ ??? no qual estes valores deverão ser constantes dentro do 
bloco.) */

declare
    dolar number(6,2) := 45;
    cambio number(6,2) := 4.93;
    reais dolar%type;
begin
    reais := dolar*cambio;
     dbms_output.put_line('O valor em reais é de '||reais);
end;
/

/* Exercício 3 (Criar um bloco PL-SQL para converter em REAIS os 
dólares informados, sendo que o valor do Câmbio a ser considerado é 
de ????.)*/

declare
    dolar number(6,2) := &Dolares;
    cambio number(6,2) := 4.93;
    reais dolar%type;
begin
    reais := dolar*cambio;
     dbms_output.put_line('O valor em reais é de '||reais);
end;
/

/*Exercício 4 (Criar um bloco PL-SQL para calcular o valor das 
parcelas de uma compra de um carro, nas seguintes condições: 
OBSERVAÇÃO: 
1 - Parcelas para aquisição em 10 pagamentos. 
2 - O valor total dos juros é de 3% e deverá ser aplicado sobre o 
montante financiado 
3 – No final informar o valor de cada parcela)*/

declare
    valor_total number(8,2) := &ValorTotal;
    parcelas valor_total%type;
    valorT_juros valor_total%type;
begin
    valorT_juros := valor_total * 1.03;
    parcelas := valort_juros / 10;
    dbms_output.put_line('O valor de cada parcela é de ' ||parcelas||' . Valor total com juros é de ' ||valorT_juros);
end;
/