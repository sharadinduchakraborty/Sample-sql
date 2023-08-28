set serveroutput on
declare 
x number;
y number;
z number;
begin
x:=&p;
show(x,y,z);
dbms_output.put_line('total salary'||'	'||'total no');
dbms_output.put_line(x||' 		    '||y);
end;
/