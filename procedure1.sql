-- ADDING NEW RECORDS WITH THE HELP OF PROCEDURE


CREATE OR REPLACE PROCEDURE ADD_RECORD(
    supplierid Supplier.SupplierId%TYPE,
    suppliername Supplier.SupplierName%TYPE,
    sphonenumber Supplier.PNumber%TYPE) IS

BEGIN
    INSERT INTO Supplier VALUES(supplierid, suppliername, sphonenumber);

END ADD_RECORD;
/
SHOW ERRORS;


SET SERVEROUTPUT ON;
BEGIN ADD_RECORD(1113452389,'Alex',01965437548);
END;
/