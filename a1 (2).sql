set serveroutput on
r item.rate%type;
create or replace procedure bill_cal(z in supply icode%type)
is
tq number;
ta number;
begin
select rate into tq from item where icode=z;
select quantity,amount from supply where icode=z;
select distinct rate from item;
ta=rate*quantity;
dbms_output.put_line();
end;
/
