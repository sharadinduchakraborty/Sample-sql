SET SERVEROUTPUT ON
DECLARE
E1 EMP.EMPNO%TYPE;
E2 EMP.EMPNO%TYPE;
SAL1 NUMBER;
SAL2 NUMBER;
BEGIN
E1:='&U';
E2:='&V';
SAL1:=SALSTATUS(E1,E2);
DBMS_OUTPUT.PUT_LINE('SALARY1=' || SAL1);
END;
/