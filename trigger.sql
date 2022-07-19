CREATE OR REPLACE TRIGGER check_price BEFORE INSERT OR UPDATE ON PRODUCT

FOR EACH ROW
DECLARE
    p_min constant number(8,2) := 2;
    p_max constant number(8,2) := 500000;

BEGIN
    IF :new.Price> p_max OR :new.Price<p_min then
    RAISE_APPLICATION_ERROR(-20001,'PRICE IS NOT VALID');
    END IF;
END;
/


INSERT INTO PRODUCT VALUES(13,500082,25,'Roast Chicken',1934543231,11380320);
