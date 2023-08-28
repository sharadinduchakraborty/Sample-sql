SET SERVEROUTPUT ON
DECLARE
X NUMBER;
Y NUMBER;
CURSOR S IS SELECT EMP NO,ENAME,SAL FROM EMP WHERE JOB='&D';
E EXCEPTION;
BEGIN
X:=0;
Y:=0;
DBMS_OUTPUT.PUT_LINE('EMPNO'||' '||'ENAME'||' '||'SAL');
DBMS_OUTPUT.PUT_LINE('----------------------------------------------');
FOR i in s
LOOP
DBMS_OUTPUT.PUT_LINE('i.empno'||' '||'ename'||' '||'sal');
x:=x+i.sal;
y:=s% rowcount;
end loop;
if(y=0)then
raise e;
end if;
DBMS_OUTPUT.PUT_LINE('------------------------------------------------');
DBMS_OUTPUT.PUT_LINE('total number of employee='||y);
DBMS_OUTPUT.PUT_LINE('total salary='||x);
DBMS_OUTPUT.PUT_LINE('------------------------------------------------');
EXCEPTION
WHEN E THEN
DBMS_OUTPUT.PUT_LINE('INVALID JOB');
END;
/


 