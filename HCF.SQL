CREATE OR REPLACE FUNCTION HCF(X IN NUMBER,Y IN NUMBER) RETURN NUMBER IS 
A NUMBER;
B NUMBER;
C NUMBER;
BEGIN
A:=X;
B:=Y;
C:=MOD(A,B);
WHILE C<>0
LOOP
A:=B;
B:=C;
C:=MOD(A,B);
END LOOP;
RETURN B;
END;
/