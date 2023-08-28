set serveroutput on
declare
eno emp.empno%type;
nm emp.ename%type;
hdate emp.hiredate%type;

x number;
y number;


cursor s(v varchar) is select empno,ename,hiredate from emp where to_char(hiredate,'yyyy')=v;
e exception;
begin
x:=0;
y:=0;

open s('&u');
fetch s into eno,nm,hdate;
if(s%notfound)then
raise e;
end if;
dbms_output.put_line('Emp No.'||'   '||'Ename'||'    '||'Hiredate');
dbms_output.put_line('------------------------------------------------');
loop
dbms_output.put_line(eno||'   '||nm||'    '||hdate); 
y:=s%rowcount;
fetch s into eno,nm,hdate;
exit when s%notfound;
end loop;
dbms_output.put_line('--------------------------------------------------');
dbms_output.put_line('Total Number of Employee :'||y);
dbms_output.put_line('--------------------------------------------------');
close s;
exception
when e then
dbms_output.put_line('Invalid Year');
end;
/ 
