-- FINDING THE PRODUCT THAT IS STORED HIGHEST NUMBER

SET SERVEROUTPUT ON

DECLARE 
    max_quantity Product.Quantity%TYPE;
    max_quantity_name Product.PName%TYPE;

BEGIN
    SELECT MAX(Quantity) into max_quantity
    FROM Product;
    SELECT PName INTO max_quantity_name
    FROM Product
    WHERE Quantity=max_quantity;
    DBMS_OUTPUT.PUT_LINE(max_quantity_name || ' HAS THE HIGHEST ' || max_quantity || ' QUANTITY' );
    END;
/





-- AND THE FOLLOWING PL/SQL CONTAINS THE FIRST 4 SUPPLIES AND THEIR PRICE
SET SERVEROUTPUT ON

DECLARE

    CURSOR product_detail IS SELECT PName,Price FROM product;
    product_record product_detail%ROWTYPE;

BEGIN
OPEN product_detail;
    LOOP
        FETCH product_detail INTO product_record;
        EXIT WHEN product_detail%ROWCOUNT>4;
        DBMS_OUTPUT.PUT_LINE('NAME: ' || product_record.PName || ' AND IT COSTS ' || product_record.Price || ' PER PIECE');
        END LOOP;
        CLOSE product_detail;
END;
/