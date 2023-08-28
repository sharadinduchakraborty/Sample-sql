create or replace function factorial(n in number) return number
is
i number;
f number;
begin
f:=1;
for i in 1..n
loop
 f:=f*i;
end loop;
return f;
end;
/