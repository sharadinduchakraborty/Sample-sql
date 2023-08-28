set serveroutput on
declare
a number;
n number;
b number;
p exception;
begin
n:='&y';
a=2
while(a<=n/2)
loop
b=mod(n,a)
if(a=0) then
c:=1;
exit;
end if;
a:=a+1;
end loop;
if (c=0) then
dbms_output.put_line('prime='||n);
else
dbms_output.put_line('not prime='||n);
exception
when no_data_found then
dbms_output.put_line('invalid input');
end;
/