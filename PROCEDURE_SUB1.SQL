SET SERVEROUTPUT ON
DECLARE
X NUMBER;
Y NUMBER;
BEGIN
X:=&P;
Y:=&Q;
DBMS_OUTPUT.PUT_LINE(X||'	'||Y);
SWAP(X,Y);
DBMS_OUTPUT.PUT_LINE(X||'	'||Y);
END;
/