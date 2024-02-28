--Habilitando saída de dados no ambiente
set serveroutput on

--Desabilitando repetição de código nas mensagens
set verify off

DECLARE
    sexo varchar2(15) := upper('&Sexo');
    
BEGIN
    if sexo = 'M' then
        dbms_output.put_line('O sexo do cliente é masculino');
    elsif sexo = 'F' then
        dbms_output.put_line('O sexo do cliente é feminino');
    else
        dbms_output.put_line('O sexo do cliente é outro');
    end if;
END;


DECLARE
    valor1 number(8,2) := '&valor';
    valor2 number(8,2) := '&valor';
    
BEGIN
    if valor1 > valor2 then
        dbms_output.put_line('O valor 1 é maior');
    else
        dbms_output.put_line('O valor 2 é maior');
    end if;
END;
/

DECLARE
    anoNasc number(4) := '&ano';
    maioridade number(4) := 2008;
BEGIN
    if anoNasc >= maioridade then
        dbms_output.put_line('Você poderá votar este ano');
    else
        dbms_output.put_line('Você não tem idade o suficiente para votar este ano');
    end if;
END;
/

DECLARE
    senha number(4) := '&senha';
    
BEGIN
    if senha = 1234 then
        dbms_output.put_line('ACESSO PERMITIDO');
    else
        dbms_output.put_line('ACESSO NEGADO');
    end if;
END;
/

DECLARE
    maca number(6) := '&maca';
    
BEGIN
    if maca >= 12 then
        dbms_output.put_line('O valor das suas ' || maca || ' maçãs será de R$' ||maca*0.25);
    else
        dbms_output.put_line('O valor das suas ' || maca || ' maçãs será de R$' ||maca*0.30);
    end if;
END;
/

