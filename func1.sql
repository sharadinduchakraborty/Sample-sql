create or replace function checksal(n1 in emp.empno%type,n2 in emp.empno%type) return number
is
s1 number;
s2 number;
begin
select  sal into s1 from emp where empno=n1;
select  sal into s2 from emp where empno=n2;
if(s1>s2) then
	return(1);
elsif( s1=s2) then
	return(0);
else
	return(-1);
end if;
end;
/