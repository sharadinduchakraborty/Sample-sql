set serveroutput on
declare
eno emp.empno%type;
nm emp.ename%type;
net emp.sal%type;

x number;
y number;
z number;
cursor s(v varchar) is select empno,ename,sal from emp where job=v;
e exception;
begin
x:=0;
y:=0;
open s('&u');
fetch s into eno,nm,net;
if(s%notfound) then
raise e;
end if;

dbms_output.put_line('empno'||'	'||'ename'||'	'||'sal');
dbms_output.put_line('-----------------------------------------------------');
loop
dbms_output.put_line(eno||'	'||nm||'	'||net);
x:=x+net;
y:=s%rowcount;
fetch s into eno,nm,net;
exit when s%notfound;
end loop;
dbms_output.put_line('-----------------------------------------------------');
dbms_output.put_line('total number of employee = '||y);
dbms_output.put_line('total salary = '||x);
dbms_output.put_line('-----------------------------------------------------');
close s;
exception
when e then
dbms_output.put_line(' invalid job ');
end;
/