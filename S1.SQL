SET SERVEROUTPUT ON
DECLARE
ENO1 EMP.EMPNO%TYPE;
NM1 EMP.ENAME%TYPE;
S1 NUMBER;
R NUMBER;

ENO2 EMP.EMPNO%TYPE;
NM2 EMP.ENAME%TYPE;
S2 NUMBER;

BEGIN
SELECT EMPNO,ENAME,SAL INTO ENO1, NM1, S1 FROM EMP WHERE EMPNO='&A';
SELECT EMPNO, ENAME, SAL INTO ENO2, NM2, S2 FROM EMP WHERE EMPNO='&B';
IF (S1>S2) THEN
R:=1;
ELSIF(S1=S1) THEN
R:=0;
ELSE
R:=-1;
END IF;
DBMS_OUTPUT.PUT_LINE('RESULT:'||R);

EXCEPTION
WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('INVALID EMPNO');
END;
/