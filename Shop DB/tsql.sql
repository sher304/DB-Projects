-- -- Created by Vertabelo (http://vertabelo.com)
-- -- Last modification date: 2025-01-19 18:37:30.154
--
-- -- tables
-- -- Table: Abstract_Person
-- CREATE TABLE Abstract_Person (
--     id int  NOT NULL,
--     name varchar(30)  NOT NULL,
--     surname varchar(50)  NOT NULL,
--     date_of_birth  NOT NULL,
--     email varchar(40)  NOT NULL,
--     address varchar(100)  NOT NULL,
--     postalcode varchar(30)  NOT NULL,
--     phone varchar(40)  NOT NULL,
--     Country_id int  NOT NULL,
--     CONSTRAINT Abstract_Person_pk PRIMARY KEY (id)
-- );
--
-- -- Table: Country
-- CREATE TABLE Country (
--     id int  NOT NULL,
--     Country varchar(30)  NOT NULL,
--     address varchar(30)  NOT NULL,
--     CONSTRAINT Country_pk PRIMARY KEY (id)
-- );
--
-- -- Table: Customer
-- CREATE TABLE Customer (
--     Abstract_Person_id int  NOT NULL,
--     CONSTRAINT Customer_pk PRIMARY KEY (Abstract_Person_id)
-- );
--
-- -- Table: Employee
-- CREATE TABLE Employee (
--     Abstract_Person_id int  NOT NULL,
--     date_emp  NOT NULL,
--     date_leave int  NOT NULL,
--     Employee_type_id int  NOT NULL,
--     Merchandise_shop_id int  NOT NULL,
--     MainStore_id int  NOT NULL,
--     CONSTRAINT Employee_pk PRIMARY KEY (Abstract_Person_id)
-- );
--

-- -- Table: Employee_type
-- CREATE TABLE Employee_type (
--     id int  NOT NULL,
--     status varchar(30)  NOT NULL,
--     role varchar(30)  NOT NULL,
--     CONSTRAINT Employee_type_pk PRIMARY KEY (id)
-- );
--
-- -- Table: Finance
-- CREATE TABLE Finance (
--     id int  NOT NULL,
--     daily_income int  NOT NULL,
--     daily_expenses int  NOT NULL,
--     monthly_income int  NOT NULL,
--     monthly_expenses int  NOT NULL,
--     annual_turnover int  NOT NULL,
--     CONSTRAINT Finance_pk PRIMARY KEY (id)
-- );
--
-- -- Table: Inventory
-- CREATE TABLE Inventory (
--     id int  NOT NULL,
--     title varchar(30)  NOT NULL,
--     isbn varchar(30)  NOT NULL,
--     amount int  NOT NULL,
--     CONSTRAINT Inventory_pk PRIMARY KEY (id)
-- );
--
-- -- Table: MainStore
-- CREATE TABLE MainStore (
--     id int  NOT NULL,
--     title varchar(30)  NOT NULL,
--     started  NOT NULL,
--     closed  NULL,
--     CONSTRAINT MainStore_pk PRIMARY KEY (id)
-- );
--
-- -- Table: Merchandise_shop
-- CREATE TABLE Merchandise_shop (
--     id int  NOT NULL,
--     Country_id int  NOT NULL,
--     Finance_id int  NOT NULL,
--     number_of_shop int  NOT NULL,
--     Promotion_id int  NOT NULL,
--     MainStore_id int  NOT NULL,
--     CONSTRAINT Merchandise_shop_pk PRIMARY KEY (id)
-- );
--
-- -- Table: Order
-- CREATE TABLE "Order" (
--     id int  NOT NULL,
--     date_of_order  NOT NULL,
--     totla_amount int  NOT NULL,
--     price int  NOT NULL,
--     Order_type_id int  NOT NULL,
--     CONSTRAINT Order_pk PRIMARY KEY (id)
-- );
--
-- -- Table: Order_detials
-- CREATE TABLE Order_detials (
--     id int  NOT NULL,
--     Product_id int  NOT NULL,
--     Order_id int  NOT NULL,
--     Quantity int  NOT NULL,
--     TotalPrice int  NOT NULL,
--     CONSTRAINT Order_detials_pk PRIMARY KEY (id)
-- );
--
-- -- Table: Order_type
-- CREATE TABLE Order_type (
--     id int  NOT NULL,
--     title varchar(30)  NOT NULL,
--     location varchar(30)  NOT NULL,
--     Country_id int  NOT NULL,
--     status varchar(30)  NOT NULL,
--     CONSTRAINT Order_type_pk PRIMARY KEY (id)
-- );
--
-- -- Table: Product
-- CREATE TABLE Product (
--     id int  NOT NULL,
--     title varchar(30)  NOT NULL,
--     isbn varchar(30)  NOT NULL,
--     Product_category_id int  NOT NULL,
--     price int  NOT NULL,
--     amount int  NOT NULL,
--     avalible int  NOT NULL,
--     description varchar(40)  NOT NULL,
--     CONSTRAINT Product_pk PRIMARY KEY (id)
-- );
--
-- -- Table: Product_category
-- CREATE TABLE Product_category (
--     id int  NOT NULL,
--     title varchar(30)  NOT NULL,
--     CONSTRAINT Product_category_pk PRIMARY KEY (id)
-- );
--
-- -- Table: Product_in_store
-- CREATE TABLE Product_in_store (
--     id int  NOT NULL,
--     Merchandise_shop_id int  NOT NULL,
--     Product_id int  NOT NULL,
--     CONSTRAINT Product_in_store_pk PRIMARY KEY (id)
-- );
--
-- -- Table: Promotion
-- CREATE TABLE Promotion (
--     id int  NOT NULL,
--     discount_percentage int  NOT NULL,
--     start_ NOT NULL,
--     end_ NOT NULL,
--     CONSTRAINT Promotion_pk PRIMARY KEY (id)
-- );
--
-- -- Table: Shop_inventory
-- CREATE TABLE Shop_inventory (
--     id int  NOT NULL,
--     Merchandise_shop_id int  NOT NULL,
--     Inventory_id int  NOT NULL,
--     CONSTRAINT Shop_inventory_pk PRIMARY KEY (id)
-- );
--
-- -- Table: Week
-- CREATE TABLE Week (
--     id int  NOT NULL,
--     title varchar(40)  NOT NULL,
--     holiday int  NOT NULL,
--     workin_hours int  NOT NULL,
--     CONSTRAINT Week_pk PRIMARY KEY (id)
-- );
--
-- -- Table: Working_days
-- CREATE TABLE Working_days (
--     Employee_Abstract_Person_id int  NOT NULL,
--     Week_id int  NOT NULL,
--     CONSTRAINT Working_days_pk PRIMARY KEY (Employee_Abstract_Person_id,Week_id)
-- );
--
-- -- Table: history
-- CREATE TABLE history (
--     id int  NOT NULL,
--     Customer_id int  NOT NULL,
--     "order" int  NOT NULL,
--     CONSTRAINT history_pk PRIMARY KEY (id)
-- );
--
-- -- foreign keys
-- -- Reference: Abstract_Person_Country (table: Abstract_Person)
-- ALTER TABLE Abstract_Person ADD CONSTRAINT Abstract_Person_Country
--     FOREIGN KEY (Country_id)
--     REFERENCES Country (id)
-- ;
--
-- -- Reference: Customer_Abstract_Person (table: Customer)
-- ALTER TABLE Customer ADD CONSTRAINT Customer_Abstract_Person
--     FOREIGN KEY (Abstract_Person_id)
--     REFERENCES Abstract_Person (id)
-- ;
--
-- -- Reference: Customer_Abstract_Person_Employee (table: Employee)
-- ALTER TABLE Employee ADD CONSTRAINT Customer_Abstract_Person_Employee
--     FOREIGN KEY (Abstract_Person_id)
--     REFERENCES Abstract_Person (id)
-- ;
--
-- -- Reference: Employee_Employee_type (table: Employee)
-- ALTER TABLE Employee ADD CONSTRAINT Employee_Employee_type
--     FOREIGN KEY (Employee_type_id)
--     REFERENCES Employee_type (id)
-- ;
--
-- -- Reference: Employee_MainStore (table: Employee)
-- ALTER TABLE Employee ADD CONSTRAINT Employee_MainStore
--     FOREIGN KEY (MainStore_id)
--     REFERENCES MainStore (id)
-- ;
--
-- -- Reference: Employee_Merchandise_shop (table: Employee)
-- ALTER TABLE Employee ADD CONSTRAINT Employee_Merchandise_shop
--     FOREIGN KEY (Merchandise_shop_id)
--     REFERENCES Merchandise_shop (id)
-- ;
--
-- -- Reference: Merchandise_shop_Country (table: Merchandise_shop)
-- ALTER TABLE Merchandise_shop ADD CONSTRAINT Merchandise_shop_Country
--     FOREIGN KEY (Country_id)
--     REFERENCES Country (id)
-- ;
--
-- -- Reference: Merchandise_shop_Finance (table: Merchandise_shop)
-- ALTER TABLE Merchandise_shop ADD CONSTRAINT Merchandise_shop_Finance
--     FOREIGN KEY (Finance_id)
--     REFERENCES Finance (id)
-- ;
--
-- -- Reference: Merchandise_shop_MainStore (table: Merchandise_shop)
-- ALTER TABLE Merchandise_shop ADD CONSTRAINT Merchandise_shop_MainStore
--     FOREIGN KEY (MainStore_id)
--     REFERENCES MainStore (id)
-- ;
--
-- -- Reference: Merchandise_shop_Promotion (table: Merchandise_shop)
-- ALTER TABLE Merchandise_shop ADD CONSTRAINT Merchandise_shop_Promotion
--     FOREIGN KEY (Promotion_id)
--     REFERENCES Promotion (id)
-- ;
--
-- -- Reference: Order_Order_type (table: Order)
-- ALTER TABLE "Order" ADD CONSTRAINT Order_Order_type
--     FOREIGN KEY (Order_type_id)
--     REFERENCES Order_type (id)
-- ;
--
-- -- Reference: Order_detials_Order (table: Order_detials)
-- ALTER TABLE Order_detials ADD CONSTRAINT Order_detials_Order
--     FOREIGN KEY (Order_id)
--     REFERENCES "Order" (id)
-- ;
--
-- -- Reference: Order_detials_Product (table: Order_detials)
-- ALTER TABLE Order_detials ADD CONSTRAINT Order_detials_Product
--     FOREIGN KEY (Product_id)
--     REFERENCES Product (id)
--
-- ;
--
-- -- Reference: Order_type_Country (table: Order_type)
-- ALTER TABLE Order_type ADD CONSTRAINT Order_type_Country
--     FOREIGN KEY (Country_id)
--     REFERENCES Country (id)
--
-- ;
--
-- -- Reference: Product_Product_category (table: Product)
-- ALTER TABLE Product ADD CONSTRAINT Product_Product_category
--     FOREIGN KEY (Product_category_id)
--     REFERENCES Product_category (id)
--
-- ;
--
-- -- Reference: Product_in_store_Merchandise_shop (table: Product_in_store)
-- ALTER TABLE Product_in_store ADD CONSTRAINT Product_in_store_Merchandise_shop
--     FOREIGN KEY (Merchandise_shop_id)
--     REFERENCES Merchandise_shop (id)
--
-- ;
--
-- -- Reference: Product_in_store_Product (table: Product_in_store)
-- ALTER TABLE Product_in_store ADD CONSTRAINT Product_in_store_Product
--     FOREIGN KEY (Product_id)
--     REFERENCES Product (id)
--
-- ;
--
-- -- Reference: Shop_inventory_Inventory (table: Shop_inventory)
-- ALTER TABLE Shop_inventory ADD CONSTRAINT Shop_inventory_Inventory
--     FOREIGN KEY (Inventory_id)
--     REFERENCES Inventory (id)
--
-- ;
--
-- -- Reference: Shop_inventory_Merchandise_shop (table: Shop_inventory)
-- ALTER TABLE Shop_inventory ADD CONSTRAINT Shop_inventory_Merchandise_shop
--     FOREIGN KEY (Merchandise_shop_id)
--     REFERENCES Merchandise_shop (id)
--
-- ;
--
-- -- Reference: Working_days_Employee (table: Working_days)
-- ALTER TABLE Working_days ADD CONSTRAINT Working_days_Employee
--     FOREIGN KEY (Employee_Abstract_Person_id)
--     REFERENCES Employee (Abstract_Person_id)
--
-- ;
--
-- -- Reference: Working_days_Week (table: Working_days)
-- ALTER TABLE Working_days ADD CONSTRAINT Working_days_Week
--     FOREIGN KEY (Week_id)
--     REFERENCES Week (id)
--
-- ;
--
-- -- Reference: history_Customer (table: history)
-- ALTER TABLE history ADD CONSTRAINT history_Customer
--     FOREIGN KEY (Customer_id)
--     REFERENCES Customer (Abstract_Person_id)
--
-- ;
--
-- -- Reference: history_Order (table: history)
-- ALTER TABLE history ADD CONSTRAINT history_Order
--     FOREIGN KEY ("order")
--     REFERENCES "Order" (id)
-- ;
--
-- -- End of file.
--

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
(1, 'Bernar', 'Arno', '1980-05-15', 'bob@example.com', '123 Main St', '12345', '555-1234', 1);
INSERT INTO Abstract_Person (id, name, surname, date_of_birth, email, address, postalcode, phone, Country_id) VALUES
(2, 'Sam', 'Smith', '1990-07-25', 'sam@example.com', '456 Oak St', '67890', '555-5678', 2);
INSERT INTO Abstract_Person (id, name, surname, date_of_birth, email, address, postalcode, phone, Country_id) VALUES
(3, 'Alice', 'Morgan', '2003-07-25', 'alice@example.com', '156 Oak St', '27890', '255-5678', 7);
INSERT INTO Abstract_Person (id, name, surname, date_of_birth, email, address, postalcode, phone, Country_id) VALUES
(4, 'Bob', 'Morgan', '2002-07-25', 'bob@example.com', '156 Oak St', '27890', '235-5178', 7);
INSERT INTO Abstract_Person (id, name, surname, date_of_birth, email, address, postalcode, phone, Country_id) VALUES
(5, 'Donald', 'Trump', '2002-07-25', 'djtrump@example.com', '16 Oak St', '270', '235-517', 1);
INSERT INTO Abstract_Person (id, name, surname, date_of_birth, email, address, postalcode, phone, Country_id) VALUES
(6, 'Elon', 'Musk>', '2002-07-25', 'elon@example.com', '16 Oak St', '270', '235-517', 1);
INSERT INTO Abstract_Person (id, name, surname, date_of_birth, email, address, postalcode, phone, Country_id) VALUES
(7, 'Elon', 'Bob', '2002-07-25', 'ebob@example.com', '16 Oak St', '270', '235-517', 2);
INSERT INTO Abstract_Person (id, name, surname, date_of_birth, email, address, postalcode, phone, Country_id) VALUES
(8, 'Speed', 'Bob', '2002-07-25', 'speed@example.com', '16 Oak St', '270', '235-517', 2);
INSERT INTO Abstract_Person (id, name, surname, date_of_birth, email, address, postalcode, phone, Country_id) VALUES
(9, 'Ksi', 'Bob', '2002-07-25', 'ksi@example.com', '16 Oak St', '270', '235-517', 2);

select * from ABSTRACT_PERSON;

select * from Employee;

alter table Employee
alter column MainStore_id int null ;

-- --

insert into EMPLOYEE (ABSTRACT_PERSON_ID, DATE_EMP, date_leave, EMPLOYEE_TYPE_ID, MERCHANDISE_SHOP_ID) VALUES
(1, '2020-04-04', null, 4, 1);
insert into EMPLOYEE (ABSTRACT_PERSON_ID, DATE_EMP, date_leave, EMPLOYEE_TYPE_ID, MERCHANDISE_SHOP_ID) VALUES
(2, '2023-04-04', '2024-02-04', 2, 1);
insert into EMPLOYEE (ABSTRACT_PERSON_ID, DATE_EMP, date_leave, EMPLOYEE_TYPE_ID, MERCHANDISE_SHOP_ID) VALUES
(3, '1990-04-04', '1992-02-04', 2, 1);
insert into EMPLOYEE (ABSTRACT_PERSON_ID, DATE_EMP, date_leave, EMPLOYEE_TYPE_ID, MERCHANDISE_SHOP_ID) VALUES
(4, '2000-04-04', '2024-02-04', 5, 2);
insert into EMPLOYEE (ABSTRACT_PERSON_ID, DATE_EMP, date_leave, EMPLOYEE_TYPE_ID, MERCHANDISE_SHOP_ID) VALUES
(5, '2000-04-04', '2012-02-04', 4, 2);
insert into EMPLOYEE (ABSTRACT_PERSON_ID, DATE_EMP, date_leave, EMPLOYEE_TYPE_ID, MERCHANDISE_SHOP_ID) VALUES
(6, '2023-04-04', null, 2, 2);
insert into EMPLOYEE (ABSTRACT_PERSON_ID, DATE_EMP, date_leave, EMPLOYEE_TYPE_ID, MERCHANDISE_SHOP_ID) VALUES
(7, '2023-04-04', null, 2, 1);

select * from Employee;
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
(1, 'Zara', '2020-01-01', NULL);
INSERT INTO MainStore (id, title, started, closed) VALUES
(2, 'Uniqlo', '2021-06-15', '2023-12-31');

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
INSERT INTO "Order" (id, date_of_order, totla_amount, price, Order_type_id) VALUES (1, '2025-01-10', 2, 40, 1);
INSERT INTO "Order" (id, date_of_order, totla_amount, price, Order_type_id) VALUES (2, '2025-01-11', 1, 15, 2);
--
select * from "Order";
-- Insert data into Order_detials
INSERT INTO Order_detials (id, Product_id, Order_id, Quantity, TotalPrice) VALUES (1, 1, 1, 2, 40);
INSERT INTO Order_detials (id, Product_id, Order_id, Quantity, TotalPrice) VALUES (2, 2, 2, 1, 15);
--
select * from ORDER_DETIALS;
-- Insert data into Promotion
INSERT INTO Promotion (id, discount_percentage, start_date, end_date) VALUES (1, 10, '2025-01-01', '2025-01-31');
INSERT INTO Promotion (id, discount_percentage, start_date, end_date) VALUES (2, 15, '2025-02-01', '2025-02-28');
--
select * from PROMOTION;
-- Insert data into Merchandise_shop
INSERT INTO Merchandise_shop (id, Country_id, Finance_id, number_of_shop, Promotion_id, MainStore_id) VALUES
(1, 1, 1, 3, 1, 1);
INSERT INTO Merchandise_shop (id, Country_id, Finance_id, number_of_shop, Promotion_id, MainStore_id) VALUES
(2, 2, 2, 2, 2, 2);
INSERT INTO Merchandise_shop (id, Country_id, Finance_id, number_of_shop, Promotion_id, MainStore_id) VALUES
(3, 1, 1, 3, 1, 1);
INSERT INTO Merchandise_shop (id, Country_id, Finance_id, number_of_shop, Promotion_id, MainStore_id) VALUES
(4, 1, 1, 3, 1, 1);
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


CREATE TRIGGER LogNewMerchandiseShop
ON Merchandise_shop
AFTER INSERT
AS
BEGIN
    INSERT INTO Merchandise_shop (id, Country_id, Finance_id, number_of_shop, Promotion_id, MainStore_id)
    SELECT
        id, GETDATE(), Mainstore_id, Country_id
    FROM inserted;

    PRINT 'New merchandise shop added and logged successfully.';
END;

INSERT INTO Merchandise_shop (id, Finance_id, Mainstore_id, Country_id, Number_of_shop, Promotion_id)
VALUES (101, 1, 10, 5, 3, 2);

SELECT * FROM Merchandise_shop;

CREATE PROCEDURE CalculateMainStoreFinanceWithCursor (
    @mainstore_id INT
)
AS
BEGIN
    DECLARE @shop_id INT;
    DECLARE @daily_income DECIMAL(10, 2);
    DECLARE @daily_expenses DECIMAL(10, 2);
    DECLARE @total_income DECIMAL(10, 2) = 0;
    DECLARE @total_expenses DECIMAL(10, 2) = 0;

    DECLARE shop_cursor CURSOR FOR
        SELECT ms.id, f.daily_income, f.daily_expenses
        FROM Merchandise_shop ms
        JOIN Finance f ON ms.Finance_id = f.id
        WHERE ms.Mainstore_id = @mainstore_id;

    OPEN shop_cursor;

    FETCH NEXT FROM shop_cursor INTO @shop_id, @daily_income, @daily_expenses;
    WHILE @@FETCH_STATUS = 0
    BEGIN
        SET @total_income = @total_income + @daily_income;
        SET @total_expenses = @total_expenses + @daily_expenses;

        PRINT 'Shop ID: ' + CAST(@shop_id AS VARCHAR) +
              ' Daily Income: ' + CAST(@daily_income AS VARCHAR) +
              ' Daily Expenses: ' + CAST(@daily_expenses AS VARCHAR);

        FETCH NEXT FROM shop_cursor INTO @shop_id, @daily_income, @daily_expenses;
    END;

    CLOSE shop_cursor;
    DEALLOCATE shop_cursor;

    PRINT 'Main Store ID: ' + CAST(@mainstore_id AS VARCHAR) +
          ' Total Income: ' + CAST(@total_income AS VARCHAR) +
          ' Total Expenses: ' + CAST(@total_expenses AS VARCHAR);
END;

EXEC CalculateMainStoreFinanceWithCursor @mainstore_id = 2;

CREATE PROCEDURE GetEmployeeDetailsForMainStore
    @MainStore_id INT
AS
BEGIN
    SELECT
        ap.name,
        ap.surname,
        e.date_emp,
        e.date_leave,
        et.role AS EmployeeRole,
        ms.id AS ShopId,
        ms.Country_id
    FROM
        Employee e
    JOIN
        Abstract_Person ap ON e.Abstract_Person_id = ap.id
    JOIN
        Employee_type et ON e.Employee_type_id = et.id
    JOIN
        Merchandise_shop ms ON e.Merchandise_shop_id = ms.id
    WHERE
        ms.MainStore_id = @MainStore_id;
END;

EXEC GetEmployeeDetailsForMainStore @MainStore_id = 2;


CREATE TRIGGER PreventInvalidLeaveDate
ON Employee
INSTEAD OF INSERT
AS
BEGIN
IF EXISTS (SELECT 1 FROM inserted
           WHERE date_leave IS NOT NULL AND date_leave < date_emp)
BEGIN
    RAISERROR('The leave date cannot be earlier than the employment start date.', 16, 1);
    ROLLBACK TRANSACTION;
END
ELSE
BEGIN
    INSERT INTO Employee (Abstract_Person_id, date_emp, date_leave, Employee_type_id, Merchandise_shop_id)
    SELECT Abstract_Person_id, date_emp, date_leave, Employee_type_id, Merchandise_shop_id
    FROM inserted;
END
END;


CREATE TRIGGER PreventUnderagePerson
ON Abstract_Person
AFTER INSERT
AS
BEGIN
    DECLARE @Today DATE = GETDATE();

    IF EXISTS (
        SELECT 1
        FROM inserted
        WHERE DATEDIFF(YEAR, date_of_birth, @Today) < 18
    )
    BEGIN
        RAISERROR('Persons must be at least 18 years old to be added.', 16, 1);
        DELETE FROM Abstract_Person WHERE id IN (SELECT id FROM inserted);
        ROLLBACK TRANSACTION;
    END
END;


INSERT INTO Abstract_Person (id, name, surname, date_of_birth, email, address, postalcode, phone, Country_id) VALUES
(105, 'Ksi', 'Bob', '2015-07-25', 'ksi@example.com', '16 Oak St', '270', '235-517', 2);

insert into Employee (Abstract_Person_id, date_emp, Employee_type_id, Merchandise_shop_id, date_leave) values
(102, '2010-04-04', 1, 1, '2009-03-03');
