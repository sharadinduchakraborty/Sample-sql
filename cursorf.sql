SET SERVEROUTPUT ON
DECLARE
X number;
Y number;
j emp.job% type;
eno emp.empno%type;
nm emp.ename%ype;
v emp.sal%type;
cursor s(d varchar) is select empno,ename,sal from emp where job='d';
e exception;
begin
j:='&u';
open s(j);
x:=0;
y:=0;
fetch s into  eno,nm,v;
if(s% notfound)then
raise e;
end if;
dbms_output.put_line('empno'||' '||'ename'||' '||'sal');
dbms_output.put_line('---------------------------------');
loop
dbms_output.put_line(eno||' '||' '||v);
x:=x+v;
y:=y+1;
fetch s into eno,nm,v;
exit when s%notfound;
end loop;
dbms_output.put_line('------------------------------------');
dbms_output.put_line('total number of employee='||y);
dbms_output.put_line('total salary='||x);
dbms_output.put_line('--------------------------------------');
close s;
exception 
when e then
dbms_output.put_line('invalid job');
end;
/