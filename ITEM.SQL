CREATE OR REPLACE FUNCTION GAMOUNT(I IN ITEM_83.ICODE%TYPE)  RETURN NUMBER IS 
P NUMBER;
R NUMBER;
V NUMBER;
BEGIN 
SELECT RATE INTO R FROM ITEM_83 WHERE ICODE=I;
V:=R*0.05;
P:=R+V;
RETURN P;
END;
/