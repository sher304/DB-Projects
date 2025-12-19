INSERT INTO Country (id, Country, address) VALUES
(1, 'USA', 'LA street 23');

INSERT INTO Country (id, Country, address) VALUES
(2, 'Canada', 'Groove str 232');

INSERT INTO Country (id, Country, address) VALUES
(3, 'Poland', 'Green str 1332');

INSERT INTO Country (id, Country, address) VALUES
(4, 'Uganda', 'Blue str 1332');

INSERT INTO Country (id, Country, address) VALUES
(5, 'France', 'Grey str 1332');

INSERT INTO Country (id, Country, address) VALUES
(6, 'Italy', 'White str 1332');

INSERT INTO Country (id, Country, address) VALUES
(7, 'Turkey', 'Orange str 1332');


select * from COUNTRY;


-- Insert data into Abstract_Person
INSERT INTO Abstract_Person (id, name, surname, date_of_birth, email, address, postalcode, phone, Country_id) VALUES
(1, 'Bernar', 'Arno', DATE '1980-05-15', 'bob@example.com', '123 Main St', '12345', '555-1234', 1);
INSERT INTO Abstract_Person (id, name, surname, date_of_birth, email, address, postalcode, phone, Country_id) VALUES
(2, 'Sam', 'Smith', DATE '1990-07-25', 'sam@example.com', '456 Oak St', '67890', '555-5678', 2);
INSERT INTO Abstract_Person (id, name, surname, date_of_birth, email, address, postalcode, phone, Country_id) VALUES
(3, 'Alice', 'Morgan', DATE '2003-07-25', 'alice@example.com', '156 Oak St', '27890', '255-5678', 7);
INSERT INTO Abstract_Person (id, name, surname, date_of_birth, email, address, postalcode, phone, Country_id) VALUES
(4, 'Bob', 'Morgan', DATE '2002-07-25', 'bob@example.com', '156 Oak St', '27890', '235-5178', 7);
INSERT INTO Abstract_Person (id, name, surname, date_of_birth, email, address, postalcode, phone, Country_id) VALUES
(5, 'Donald', 'Trump', DATE '2002-07-25', 'djtrump@example.com', '16 Oak St', '270', '235-517', 1);
INSERT INTO Abstract_Person (id, name, surname, date_of_birth, email, address, postalcode, phone, Country_id) VALUES
(6, 'Elon', 'Musk>', DATE '2002-07-25', 'elon@example.com', '16 Oak St', '270', '235-517', 1);
INSERT INTO Abstract_Person (id, name, surname, date_of_birth, email, address, postalcode, phone, Country_id) VALUES
(7, 'Elon', 'Bob', DATE '2002-07-25', 'ebob@example.com', '16 Oak St', '270', '235-517', 2);
INSERT INTO Abstract_Person (id, name, surname, date_of_birth, email, address, postalcode, phone, Country_id) VALUES
(8, 'Speed', 'Bob', DATE '2002-07-25', 'speed@example.com', '16 Oak St', '270', '235-517', 2);
INSERT INTO Abstract_Person (id, name, surname, date_of_birth, email, address, postalcode, phone, Country_id) VALUES
(9, 'Ksi', 'Bob', DATE '2002-07-25', 'ksi@example.com', '16 Oak St', '270', '235-517', 2);

select * from ABSTRACT_PERSON;

-- --
insert into EMPLOYEE (ABSTRACT_PERSON_ID, DATE_EMP, LEAVE_DATE, EMPLOYEE_TYPE_ID, MERCHANDISE_SHOP_ID) VALUES
(1, date '2020-04-04', null, 4, 1);
insert into EMPLOYEE (ABSTRACT_PERSON_ID, DATE_EMP, LEAVE_DATE, EMPLOYEE_TYPE_ID, MERCHANDISE_SHOP_ID) VALUES
(2, date '2023-04-04', date '2024-02-04', 2, 1);
insert into EMPLOYEE (ABSTRACT_PERSON_ID, DATE_EMP, LEAVE_DATE, EMPLOYEE_TYPE_ID, MERCHANDISE_SHOP_ID) VALUES
(3, date '1990-04-04', date '1992-02-04', 2, 1);
insert into EMPLOYEE (ABSTRACT_PERSON_ID, DATE_EMP, LEAVE_DATE, EMPLOYEE_TYPE_ID, MERCHANDISE_SHOP_ID) VALUES
(4, date '2000-04-04', date '2024-02-04', 5, 2);
insert into EMPLOYEE (ABSTRACT_PERSON_ID, DATE_EMP, LEAVE_DATE, EMPLOYEE_TYPE_ID, MERCHANDISE_SHOP_ID) VALUES
(5, date '2000-04-04', date '2012-02-04', 4, 2);
insert into EMPLOYEE (ABSTRACT_PERSON_ID, DATE_EMP, LEAVE_DATE, EMPLOYEE_TYPE_ID, MERCHANDISE_SHOP_ID) VALUES
(6, date '2023-04-04', null, 2, 2);
insert into EMPLOYEE (ABSTRACT_PERSON_ID, DATE_EMP, LEAVE_DATE, EMPLOYEE_TYPE_ID, MERCHANDISE_SHOP_ID) VALUES
(7, date '2023-04-04', null, 2, 1);

-- -- Insert data into Customer
INSERT INTO Customer (Abstract_Person_id) VALUES (1);
INSERT INTO Customer (Abstract_Person_id) VALUES (2);
INSERT INTO Customer (Abstract_Person_id) VALUES (8);
INSERT INTO Customer (Abstract_Person_id) VALUES (9);
select * from CUSTOMER;
-- -- Insert data into Employee_type
INSERT INTO Employee_type (id, status, role) VALUES
(1, 1, 'Manager');
INSERT INTO Employee_type (id, status, role) VALUES
(2, 2, 'Staff');
INSERT INTO Employee_type (id, status, role) VALUES
(5, 5, 'CEO');
INSERT INTO Employee_type (id, status, role) VALUES
(4, 4, 'Owner');
--
select * from EMPLOYEE_TYPE;
-- -- Insert data into Finance
INSERT INTO Finance (id, daily_income, daily_expenses, monthly_income, monthly_expenses, annual_turnover) VALUES
(1, 1000, 500, 30000, 15000, 360000);
INSERT INTO Finance (id, daily_income, daily_expenses, monthly_income, monthly_expenses, annual_turnover) VALUES
(2, 1200, 600, 36000, 18000, 432000);

select * from FINANCE;
-- -- Insert data into MainStore
INSERT INTO MainStore (id, title, started, closed) VALUES
(1, 'Zara', DATE '2020-01-01', NULL);
INSERT INTO MainStore (id, title, started, closed) VALUES
(2, 'Uniqlo', DATE '2021-06-15', DATE '2023-12-31');

select * from MAINSTORE;
-- Insert data into Product_category
INSERT INTO Product_category (id, title) VALUES (1, 'Clothing');
INSERT INTO Product_category (id, title) VALUES (2, 'Accessories');
--
select * from PRODUCT_CATEGORY;
-- Insert data into Product
INSERT INTO Product (id, title, isbn, Product_category_id, price, amount, avalible, description) VALUES
(1, 'T-shirt', '1234567890', 1, 20, 100, 1, 'Cotton T-shirt');
INSERT INTO Product (id, title, isbn, Product_category_id, price, amount, avalible, description) VALUES
(2, 'Hat', '0987654321', 2, 15, 50, 1, 'Stylish hat');
--
select * from PRODUCT;
-- Insert data into Order_type
INSERT INTO Order_type (id, title, location, Country_id, status) VALUES (1, 'Online', 1, 1, 1);
INSERT INTO Order_type (id, title, location, Country_id, status) VALUES (2, 'In-store', 2, 2, 2);
--
select * from ORDER_TYPE;
-- Insert data into "Order"
INSERT INTO "Order" (id, date_of_order, totla_amount, price, Order_type_id) VALUES (1, Date '2025-01-10', 2, 40, 1);
INSERT INTO "Order" (id, date_of_order, totla_amount, price, Order_type_id) VALUES (2, DAte '2025-01-11', 1, 15, 2);
--
select * from "Order";
-- Insert data into Order_detials
INSERT INTO Order_detials (id, Product_id, Order_id, Quantity, TotalPrice) VALUES (1, 1, 1, 2, 40);
INSERT INTO Order_detials (id, Product_id, Order_id, Quantity, TotalPrice) VALUES (2, 2, 2, 1, 15);
--
select * from ORDER_DETIALS;
-- Insert data into Promotion
INSERT INTO Promotion (id, discount_percentage, start_date, end_date) VALUES (1, 10, DATE '2025-01-01', DATE '2025-01-31');
INSERT INTO Promotion (id, discount_percentage, start_date, end_date) VALUES (2, 15, DATE '2025-02-01', DATE '2025-02-28');
--
select * from PROMOTION;
-- Insert data into Merchandise_shop
INSERT INTO Merchandise_shop (id, Country_id, Finance_id, number_of_shop, Promotion_id, MainStore_id) VALUES
(1, 1, 1, 3, 1, 1);
INSERT INTO Merchandise_shop (id, Country_id, Finance_id, number_of_shop, Promotion_id, MainStore_id) VALUES
(2, 2, 2, 2, 2, 2);
--
select * from MERCHANDISE_SHOP;
--
-- Insert data into Week
INSERT INTO Week (id, title, holiday, workin_hours) VALUES (1, 'Monday', 1, 8);
INSERT INTO Week (id, title, holiday, workin_hours) VALUES (2, 'Tuesday', 1, 8);
INSERT INTO Week (id, title, holiday, workin_hours) VALUES (3, 'Wednesday', 1, 8);
INSERT INTO Week (id, title, holiday, workin_hours) VALUES (4, 'Thursday', 1, 8);
INSERT INTO Week (id, title, holiday, workin_hours) VALUES (5, 'Friday', 1, 8);
INSERT INTO Week (id, title, holiday, workin_hours) VALUES (6, 'Saturday', 1, 8);
INSERT INTO Week (id, title, holiday, workin_hours) VALUES (7, 'Sunday', 0, 0);
--
select * from WEEK;
-- Insert data into Working_days
INSERT INTO Working_days (Employee_Abstract_Person_id, Week_id) VALUES (1, 1);
INSERT INTO Working_days (Employee_Abstract_Person_id, Week_id) VALUES (2, 2);
--
select * from WORKING_DAYS;
-- Insert data into history
INSERT INTO history (id, Customer_id, "order") VALUES  (1, 1, 1);
INSERT INTO history (id, Customer_id, "order") VALUES (2, 2, 2);
--
select * from HISTORY;
-- Insert data into Inventory
INSERT INTO INVENTORY (ID, TITLE, ISBN, AMOUNT) VALUES
(1, 'Table', '01223', 5);
INSERT INTO INVENTORY (ID, TITLE, ISBN, AMOUNT) VALUES
(2, 'Lamp', '01221', 10);
--
select * from INVENTORY;
-- Insert data into Shop_inventory
INSERT INTO Shop_inventory (id, Merchandise_shop_id, Inventory_id) VALUES (1, 1, 1);
INSERT INTO Shop_inventory (id, Merchandise_shop_id, Inventory_id) VALUES (2, 2, 2);
--
select * from SHOP_INVENTORY;

-- // Procedure to calculate daily incomes, included daily expenses.
CREATE OR REPLACE PROCEDURE CalculateTotalDailyIncome
AS
    CURSOR shop_cursor IS
        SELECT ms.id AS shop_id, f.daily_income, f.daily_expenses
        FROM Merchandise_shop ms
        JOIN Finance f ON ms.Finance_id = f.id;

    v_shop_id NUMBER;
    v_daily_income NUMBER;
    v_daily_expenses NUMBER;
    v_total_income NUMBER;
BEGIN
    v_total_income := 0;
    FOR shop_record IN shop_cursor LOOP
        v_shop_id := shop_record.shop_id;
        v_daily_income := shop_record.daily_income;
        v_daily_expenses := shop_record.daily_expenses;
        DBMS_OUTPUT.PUT_LINE('Shop ID: ' || v_shop_id ||
                             ' Daily Income: ' || (v_daily_income - v_daily_expenses));
        v_total_income := v_total_income + (v_daily_income - v_daily_expenses);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Total Daily Income for All Shops: ' || v_total_income);
END;

DECLARE
    v_daily_income NUMBER;
BEGIN
    CalculateDailyIncome(2, v_daily_income);
    DBMS_OUTPUT.PUT_LINE('Daily Income: ' || v_daily_income);
END;


CREATE OR REPLACE PROCEDURE GenerateShopIncomeReport (
    p_shop_id IN NUMBER
)
AS
    v_daily_income NUMBER;
    v_monthly_income NUMBER;
BEGIN
    SELECT f.daily_income - f.daily_expenses, f.monthly_income - f.monthly_expenses
    INTO v_daily_income, v_monthly_income
    FROM Merchandise_shop ms
    JOIN Finance f ON ms.Finance_id = f.id
    WHERE ms.id = p_shop_id;

    DBMS_OUTPUT.PUT_LINE('Shop ID: ' || p_shop_id);
    DBMS_OUTPUT.PUT_LINE('Daily Income: ' || v_daily_income);
    DBMS_OUTPUT.PUT_LINE('Monthly Income: ' || v_monthly_income);
END;

BEGIN
    GenerateShopIncomeReport(2);
END;

CREATE OR REPLACE PROCEDURE CalculateAverageDailyIncome
AS
    v_total_income NUMBER := 0;
    v_shop_count NUMBER := 0;
    v_average_income NUMBER;
BEGIN
    SELECT SUM(f.daily_income - f.daily_expenses), COUNT(ms.id)
    INTO v_total_income, v_shop_count
    FROM Merchandise_shop ms
    JOIN Finance f ON ms.Finance_id = f.id;

    IF v_shop_count > 0 THEN
        v_average_income := v_total_income / v_shop_count;
    ELSE
        v_average_income := 0;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Total Daily Income for All Shops: ' || v_total_income);
    DBMS_OUTPUT.PUT_LINE('Number of Shops: ' || v_shop_count);
    DBMS_OUTPUT.PUT_LINE('Average Daily Income: ' || v_average_income);
END;


BEGIN
    CalculateAverageDailyIncome;
END;

CREATE OR REPLACE TRIGGER LogEmployeeHiring
AFTER INSERT ON EMPLOYEE
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('New employee added: Abstract_Person_ID = ' || :NEW.ABSTRACT_PERSON_ID ||
                         ', Employment Date = ' || :NEW.DATE_EMP);
END;

insert into EMPLOYEE (ABSTRACT_PERSON_ID, DATE_EMP, LEAVE_DATE, EMPLOYEE_TYPE_ID, MERCHANDISE_SHOP_ID) VALUES
(13, date '2020-04-04', null, 4, 1);

CREATE OR REPLACE TRIGGER PreventMainStoreDeletion
BEFORE DELETE ON MainStore
FOR EACH ROW
BEGIN
    IF :OLD.closed IS NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'Cannot delete an active main store.');
    END IF;
END;

delete from MAINSTORE
where id = 1;

select * from MainStore;

CREATE OR REPLACE TRIGGER PreventActiveEmployeeDeletion
BEFORE DELETE ON EMPLOYEE
FOR EACH ROW
BEGIN
    IF :OLD.LEAVE_DATE IS NULL THEN
        RAISE_APPLICATION_ERROR(-20002, 'Cannot delete an employee who is still actively employed.');
    END IF;
END;


delete EMPLOYEE
where ABSTRACT_PERSON_ID = 7;
