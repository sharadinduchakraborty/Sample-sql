SET SERVEROUTPUT ON 

DECLARE 
ENO EMP.EMPNO%TYPE;
NM    EMP.ENAME%TYPE;

R  VARCHAR(4);
Y NUMBER;
CURSOR S (V VARCHAR) IS SELECT EMPNO,ENAME FROM EMP WHERE TO_CHAR(HIREDATE,'YYYY')=V;
E EXCEPTION;

BEGIN
Y:=0;
R:='&Z';

OPEN S(R);
FETCH S INTO ENO,NM;
IF (S%NOTFOUND) THEN 
RAISE E;
END IF;
DBMS_OUTPUT.PUT_LINE('************'||R||'****************');
DBMS_OUTPUT.PUT_LINE('EMPNO'||'          '||'ENAME');
DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------');
LOOP
DBMS_OUTPUT.PUT_LINE(ENO||'          '||NM);
Y:=S%ROWCOUNT;
FETCH S INTO ENO,NM;
EXIT WHEN S%NOTFOUND;
END LOOP;
DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------');
DBMS_OUTPUT.PUT_LINE('TOTAL NUMBER OF EMPLOYEE=   '||Y);
DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------');
CLOSE S;


EXCEPTION
WHEN E THEN
DBMS_OUTPUT.PUT_LINE('INVALID YEAR');
END;
/