-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2025-01-19 18:37:30.154

-- foreign keys
ALTER TABLE Abstract_Person
    DROP CONSTRAINT Abstract_Person_Country;

ALTER TABLE Customer
    DROP CONSTRAINT Customer_Abstract_Person;

ALTER TABLE Employee
    DROP CONSTRAINT Customer_Abstract_Person_Employee;

ALTER TABLE Employee
    DROP CONSTRAINT Employee_Employee_type;

ALTER TABLE Employee
    DROP CONSTRAINT Employee_MainStore;

ALTER TABLE Employee
    DROP CONSTRAINT Employee_Merchandise_shop;

ALTER TABLE Merchandise_shop
    DROP CONSTRAINT Merchandise_shop_Country;

ALTER TABLE Merchandise_shop
    DROP CONSTRAINT Merchandise_shop_Finance;

ALTER TABLE Merchandise_shop
    DROP CONSTRAINT Merchandise_shop_MainStore;

ALTER TABLE Merchandise_shop
    DROP CONSTRAINT Merchandise_shop_Promotion;

ALTER TABLE "Order"
    DROP CONSTRAINT Order_Order_type;

ALTER TABLE Order_detials
    DROP CONSTRAINT Order_detials_Order;

ALTER TABLE Order_detials
    DROP CONSTRAINT Order_detials_Product;

ALTER TABLE Order_type
    DROP CONSTRAINT Order_type_Country;

ALTER TABLE Product
    DROP CONSTRAINT Product_Product_category;

ALTER TABLE Product_in_store
    DROP CONSTRAINT Product_in_store_Merchandise_shop;

ALTER TABLE Product_in_store
    DROP CONSTRAINT Product_in_store_Product;

ALTER TABLE Shop_inventory
    DROP CONSTRAINT Shop_inventory_Inventory;

ALTER TABLE Shop_inventory
    DROP CONSTRAINT Shop_inventory_Merchandise_shop;

ALTER TABLE Working_days
    DROP CONSTRAINT Working_days_Employee;

ALTER TABLE Working_days
    DROP CONSTRAINT Working_days_Week;

ALTER TABLE history
    DROP CONSTRAINT history_Customer;

ALTER TABLE history
    DROP CONSTRAINT history_Order;

-- tables
DROP TABLE Abstract_Person;

DROP TABLE Country;

DROP TABLE Customer;

DROP TABLE Employee;

DROP TABLE Employee_type;

DROP TABLE Finance;

DROP TABLE Inventory;

DROP TABLE MainStore;

DROP TABLE Merchandise_shop;

DROP TABLE "Order";

DROP TABLE Order_detials;

DROP TABLE Order_type;

DROP TABLE Product;

DROP TABLE Product_category;

DROP TABLE Product_in_store;

DROP TABLE Promotion;

DROP TABLE Shop_inventory;

DROP TABLE Week;

DROP TABLE Working_days;

DROP TABLE history;

-- End of file.

