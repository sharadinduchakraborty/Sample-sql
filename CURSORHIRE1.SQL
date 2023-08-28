SET SERVEROUTPUT ON

DECLARE
X NUMBER;
Y NUMBER;
CURSOR S IS SELECT EMPNO,ENAME,SAL FROM EMP WHERE TO_CHAR(HIREDATE,'YYYY')='&D';
E EXCEPTION;

BEGIN
X:=0;
Y:=0;

DBMS_OUTPUT.PUT_LINE('EMPNO'||'		'||'ENAME'||'	'||'SAL');
DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------------');

FOR I IN S
LOOP
DBMS_OUTPUT.PUT_LINE(I.EMPNO||'		'||I.ENAME||'	        '||I.SAL);

X:=X+I.SAL;
Y:=S%ROWCOUNT;
END LOOP;

IF (Y=0) THEN
RAISE E;
END IF;

DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------------');
DBMS_OUTPUT.PUT_LINE('TOTAL NUMBER OF EMPLOYEE =  '||Y);
DBMS_OUTPUT.PUT_LINE('TOTAL SALARY=  '||X);
DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------------');

EXCEPTION
WHEN E THEN
DBMS_OUTPUT.PUT_LINE('INVALID YEAR');

END ;
/