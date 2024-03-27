// ( ° ?? °)

SET SERVEROUTPUT ON

CREATE TABLE tbl_funcionario(
    CD_FUN INTEGER GENERATED ALWAYS AS IDENTITY,
    NM_FUN VARCHAR2(30),
    SALARIO NUMBER(10,2),
    DT_ADM DATE
);
BEGIN
    INSERT INTO tbl_funcionario (NM_FUN, SALARIO, DT_ADM) VALUES ('Marcel', 10000, TO_DATE('17/04/2000', 'dd/mm/yyyy'));
    INSERT INTO tbl_funcionario (NM_FUN, SALARIO, DT_ADM) VALUES ('Claudia', 16000, TO_DATE('02/10/1998', 'dd/mm/yyyy'));
    INSERT INTO tbl_funcionario (NM_FUN, SALARIO, DT_ADM) VALUES ('Joaquim', 5500, TO_DATE('10/07/2010', 'dd/mm/yyyy'));
    INSERT INTO tbl_funcionario (NM_FUN, SALARIO, DT_ADM) VALUES ('Valéria', 7300, TO_DATE('08/06/2015', 'dd/mm/yyyy'));
END;
COMMIT;
/
// SELECT * FROM tbl_funcionario;

//Criar um bloco pl usando cursores para mostrar o nome do funcionário e seu sálario

DECLARE
    CURSOR v_cursor IS SELECT cd_fun FROM tbl_funcionario;
    myvar v_cursor%ROWTYPE;
    v_nome VARCHAR2(15);
    v_salario NUMBER(10,2);
    v_data DATE;
BEGIN
    FOR myvar IN v_cursor LOOP
        SELECT nm_fun, salario, dt_adm INTO v_nome, v_salario, v_data FROM tbl_funcionario WHERE cd_fun = myvar.cd_fun;
        DBMS_OUTPUT.PUT_LINE('-Nome: ' || v_nome || ' -Salario: ' || v_salario || ' -Data: ' || v_data);
    END LOOP;
END;
/