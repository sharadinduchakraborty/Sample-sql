SET SERVEROUTPUT ON
CREATE OR REPLACE FUNCTION GROSSAMOUNT(I IN ITEM.ICODE%TYPE) RETURN NUMBER
IS
R NUMBER;
P NUMBER;
BEGIN
SELECT RATE INTO R FROM ITEM WHERE ICODE=I;
P:=R+(R*0.05);
RETURN P;
END;
/
