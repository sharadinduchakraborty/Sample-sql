SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE SHOW(M IN NUMBER,N OUT NUMBER,S OUT NUMBER)
IS
A NUMBER;
B NUMBER;
CURSOR S1(K NUMBER) IS SELECT ENAME,EMPNO,SAL FROM EMP WHERE MGR=K;
BEGIN
A:=0;
B:=0;
DBMS_OUTPUT.PUT_LINE('EMPNO'||'   '||'ENAME'||'	'||'SAL');
FOR I IN S1(M)
LOOP
DBMS_OUTPUT.PUT_LINE(I.EMPNO||'   '||I.ENAME||'	'||I.SAL);
A:=A+I.SAL;
B:=B+1;
END LOOP;
N:=B;
S:=A;
END;
/