SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE DISCOUNT IS
    CURSOR bill_cursor IS SELECT BillMethod, AMOUNT, CName, BillDate FROM Bill;
    no_of_record NUMBER(9);
    bill_record bill_cursor%ROWTYPE;


BEGIN
    SELECT COUNT(AMOUNT) INTO no_of_record FROM Bill;
    OPEN bill_cursor;
        LOOP
            FETCH bill_cursor INTO bill_record;
            EXIT WHEN bill_cursor%ROWCOUNT>no_of_record;
            IF bill_record.BillMethod = 'Cash' then
                DBMS_OUTPUT.PUT_LINE('THE PRICE AFTER DISCOUNT: ' || bill_record.AMOUNT*0.88);
            ELSE
                DBMS_OUTPUT.PUT_LINE('THE PRICE AFTER DISCOUNT: '|| bill_record.AMOUNT);
            END IF;
        END LOOP;




END DISCOUNT;
/
SHOW ERRORS;




SET SERVEROUTPUT ON;
BEGIN
    DISCOUNT;
END;
/