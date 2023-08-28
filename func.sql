set serveroutput on
declare
m number;
k number;
begin
m:='&u';
k:=factorial(m);
dbms_output.put_line('factorial='||k);


end;
/