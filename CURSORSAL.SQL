SET SERVEROUTPUT ON
DECLARE
 Y NUMBER;
 J EMP.JOB% TYPE;
 ENO EMP.EMPNO% TYPE;
 NM  EMP.ENAME%TYPE;
 V EMP.SAL% TYPE;

CURSOR S(D VARCHAR) IS SELECT EMPNO,ENAME,SAL FROM EMP WHERE SAL=D;
E EXCEPTION;

BEGIN
V:='&U';
OPEN S(V);
Y:=0;
FETCH S INTO ENO,NM;
IF(S%NOTFOUND) THEN 
RAISE E;
END IF;
DBMS_OUTPUT.PUT_LINE('EMPNO'||'		'||'ENAME'||'	'||'SAL');
DBMS_OUTPUT.PUT_LINE('------------------------------------');
LOOP
DBMS_OUTPUT.PUT_LINE(ENO||'		'||NM||'		'||V);
Y:=S%ROWCOUNT;
FETCH S INTO ENO,NM,V;
EXIT WHEN S%NOTFOUND;
END LOOP;
EXCEPTION
WHEN E THEN
DBMS_OUTPUT.PUT_LINE('INVALID JOB');
END;
/