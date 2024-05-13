set serveroutput on

set verify off

--Praticando PL/SQL

-- Exercício de revisão 1
DECLARE
    nome VARCHAR2(10) :='Mateus';
    idade_v1 NUMBER(2) := 20;
    idade_v2 idade_v1%type;
    
BEGIN

idade_v2 := idade_v1 + 20;
dbms_output.put_line('Meu nome é ' || nome || ' e tenho ' || idade_v1 || ' anos de idade, porém daqui há 20 anos terei ' || idade_v2 || ' anos de idade');

END;
/

-- Exercício de revisão 2
DECLARE

 salario_antigo Number(6,2) := 1250.00;
 salario_atual salario_antigo%type;
 
BEGIN
 
 salario_atual := salario_antigo * 1.50;
 dbms_output.put_line('Meu salário antes de ser promovido era de R$' || salario_antigo || '. Porém meu sálario atual está no valor de R$' || salario_atual);
 
 END;
 /
 
 ---- Exercício de revisão 3
 
DECLARE
    preco_jogo NUMBER(6,2) := 250.00;
    preco_parcelado preco_jogo%type;
BEGIN
    preco_parcelado := preco_jogo / 2;
    dbms_output.put_line('Parcelando o jogo em 2 vezes, o valor de cada parcela será de R$' || preco_parcelado);
    
    preco_parcelado := preco_jogo / 4;
    dbms_output.put_line('Parcelando o jogo em 4 vezes, o valor de cada parcela será de R$' || preco_parcelado);
    
    preco_parcelado := preco_jogo / 6;
    dbms_output.put_line('Parcelando o jogo em 6 vezes, o valor de cada parcela será de R$' || preco_parcelado);
END;
/

-- Estruturas de decisão
-- if, then, elsif, then, else, end if
-- Exercício 1

DECLARE
v_num NUMBER(6):= '&numero';

BEGIN

IF(v_num)= 30 THEN
    dbms_output.put_line('Você acertou o número da sorte!');
ELSIF(v_num)> 30 THEN
    dbms_output.put_line('Você errou o número, chute mais baixo!');
ELSE
    dbms_output.put_line('Você errou o número, chute mais alto!');
END IF;

END;
/

-- Exercício 2

DECLARE

v_nome VARCHAR2(25):= '&nome';
v_idade NUMBER(6,2):= '&idade';

BEGIN

IF(v_idade < 18) THEN
    dbms_output.put_line( v_nome ||' você tem ' || v_idade || ' portanto não está apto á servir ao exército');
ELSE
    dbms_output.put_line( v_nome ||' você tem ' || v_idade || ' portanto você está apto á servir ao exército, continue seu cadastro para passar para as próximas fases');
END IF;
END;
/

