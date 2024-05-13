set serveroutput on

set verify off

--Praticando PL/SQL

-- Exerc�cio de revis�o 1
DECLARE
    nome VARCHAR2(10) :='Mateus';
    idade_v1 NUMBER(2) := 20;
    idade_v2 idade_v1%type;
    
BEGIN

idade_v2 := idade_v1 + 20;
dbms_output.put_line('Meu nome � ' || nome || ' e tenho ' || idade_v1 || ' anos de idade, por�m daqui h� 20 anos terei ' || idade_v2 || ' anos de idade');

END;
/

-- Exerc�cio de revis�o 2
DECLARE

 salario_antigo Number(6,2) := 1250.00;
 salario_atual salario_antigo%type;
 
BEGIN
 
 salario_atual := salario_antigo * 1.50;
 dbms_output.put_line('Meu sal�rio antes de ser promovido era de R$' || salario_antigo || '. Por�m meu s�lario atual est� no valor de R$' || salario_atual);
 
 END;
 /
 
 ---- Exerc�cio de revis�o 3
 
DECLARE
    preco_jogo NUMBER(6,2) := 250.00;
    preco_parcelado preco_jogo%type;
BEGIN
    preco_parcelado := preco_jogo / 2;
    dbms_output.put_line('Parcelando o jogo em 2 vezes, o valor de cada parcela ser� de R$' || preco_parcelado);
    
    preco_parcelado := preco_jogo / 4;
    dbms_output.put_line('Parcelando o jogo em 4 vezes, o valor de cada parcela ser� de R$' || preco_parcelado);
    
    preco_parcelado := preco_jogo / 6;
    dbms_output.put_line('Parcelando o jogo em 6 vezes, o valor de cada parcela ser� de R$' || preco_parcelado);
END;
/

-- Estruturas de decis�o
-- if, then, elsif, then, else, end if]

DECLARE
v_num NUMBER(6):= '&numero';

BEGIN

IF(v_num)= 30 THEN
    dbms_output.put_line('Voc� acertou o n�mero da sorte!');
ELSIF(v_num)> 30 THEN
    dbms_output.put_line('Voc� errou o n�mero, chute mais baixo!');
ELSE
    dbms_output.put_line('Voc� errou o n�mero, chute mais alto!');
END IF;

END;
/
