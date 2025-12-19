-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2025-01-19 18:37:30.154

-- tables
-- Table: Abstract_Person
CREATE TABLE Abstract_Person (
    id int  NOT NULL,
    name varchar(30)  NOT NULL,
    surname varchar(50)  NOT NULL,
    date_of_birth date  NOT NULL,
    email varchar(40)  NOT NULL,
    address varchar(100)  NOT NULL,
    postalcode varchar(30)  NOT NULL,
    phone varchar(40)  NOT NULL,
    Country_id int  NOT NULL,
    CONSTRAINT Abstract_Person_pk PRIMARY KEY (id)
);

-- Table: Country
CREATE TABLE Country (
    id int  NOT NULL,
    Country varchar(30)  NOT NULL,
    address varchar(30)  NOT NULL,
    CONSTRAINT Country_pk PRIMARY KEY (id)
);

-- Table: Customer
CREATE TABLE Customer (
    Abstract_Person_id int  NOT NULL,
    CONSTRAINT Customer_pk PRIMARY KEY (Abstract_Person_id)
);

-- Table: Employee
CREATE TABLE Employee (
    Abstract_Person_id int  NOT NULL,
    date_emp date  NOT NULL,
    date_leave int  NOT NULL,
    Employee_type_id int  NOT NULL,
    Merchandise_shop_id int  NOT NULL,
    MainStore_id int  NOT NULL,
    CONSTRAINT Employee_pk PRIMARY KEY (Abstract_Person_id)
);

-- Table: Employee_type
CREATE TABLE Employee_type (
    id int  NOT NULL,
    status varchar(30)  NOT NULL,
    role varchar(30)  NOT NULL,
    CONSTRAINT Employee_type_pk PRIMARY KEY (id)
);

-- Table: Finance
CREATE TABLE Finance (
    id int  NOT NULL,
    daily_income int  NOT NULL,
    daily_expenses int  NOT NULL,
    monthly_income int  NOT NULL,
    monthly_expenses int  NOT NULL,
    annual_turnover int  NOT NULL,
    CONSTRAINT Finance_pk PRIMARY KEY (id)
);

-- Table: Inventory
CREATE TABLE Inventory (
    id int  NOT NULL,
    title varchar(30)  NOT NULL,
    isbn varchar(30)  NOT NULL,
    amount int  NOT NULL,
    CONSTRAINT Inventory_pk PRIMARY KEY (id)
);

-- Table: MainStore
CREATE TABLE MainStore (
    id int  NOT NULL,
    title varchar(30)  NOT NULL,
    started date  NOT NULL,
    closed date  NULL,
    CONSTRAINT MainStore_pk PRIMARY KEY (id)
);

-- Table: Merchandise_shop
CREATE TABLE Merchandise_shop (
    id int  NOT NULL,
    Country_id int  NOT NULL,
    Finance_id int  NOT NULL,
    number_of_shop int  NOT NULL,
    Promotion_id int  NOT NULL,
    MainStore_id int  NOT NULL,
    CONSTRAINT Merchandise_shop_pk PRIMARY KEY (id)
);

-- Table: Order
CREATE TABLE "Order" (
    id int  NOT NULL,
    date_of_order date  NOT NULL,
    totla_amount int  NOT NULL,
    price int  NOT NULL,
    Order_type_id int  NOT NULL,
    CONSTRAINT Order_pk PRIMARY KEY (id)
);

-- Table: Order_detials
CREATE TABLE Order_detials (
    id int  NOT NULL,
    Product_id int  NOT NULL,
    Order_id int  NOT NULL,
    Quantity int  NOT NULL,
    TotalPrice int  NOT NULL,
    CONSTRAINT Order_detials_pk PRIMARY KEY (id)
);

-- Table: Order_type
CREATE TABLE Order_type (
    id int  NOT NULL,
    title varchar(30)  NOT NULL,
    location varchar(30)  NOT NULL,
    Country_id int  NOT NULL,
    status varchar(30)  NOT NULL,
    CONSTRAINT Order_type_pk PRIMARY KEY (id)
);

-- Table: Product
CREATE TABLE Product (
    id int  NOT NULL,
    title varchar(30)  NOT NULL,
    isbn varchar(30)  NOT NULL,
    Product_category_id int  NOT NULL,
    price int  NOT NULL,
    amount int  NOT NULL,
    avalible int  NOT NULL,
    description varchar(40)  NOT NULL,
    CONSTRAINT Product_pk PRIMARY KEY (id)
);

-- Table: Product_category
CREATE TABLE Product_category (
    id int  NOT NULL,
    title varchar(30)  NOT NULL,
    CONSTRAINT Product_category_pk PRIMARY KEY (id)
);

-- Table: Product_in_store
CREATE TABLE Product_in_store (
    id int  NOT NULL,
    Merchandise_shop_id int  NOT NULL,
    Product_id int  NOT NULL,
    CONSTRAINT Product_in_store_pk PRIMARY KEY (id)
);

-- Table: Promotion
CREATE TABLE Promotion (
    id int  NOT NULL,
    discount_percentage int  NOT NULL,
    start_date date  NOT NULL,
    end_date date  NOT NULL,
    CONSTRAINT Promotion_pk PRIMARY KEY (id)
);

-- Table: Shop_inventory
CREATE TABLE Shop_inventory (
    id int  NOT NULL,
    Merchandise_shop_id int  NOT NULL,
    Inventory_id int  NOT NULL,
    CONSTRAINT Shop_inventory_pk PRIMARY KEY (id)
);

-- Table: Week
CREATE TABLE Week (
    id int  NOT NULL,
    title varchar(40)  NOT NULL,
    holiday int  NOT NULL,
    workin_hours int  NOT NULL,
    CONSTRAINT Week_pk PRIMARY KEY (id)
);

-- Table: Working_days
CREATE TABLE Working_days (
    Employee_Abstract_Person_id int  NOT NULL,
    Week_id int  NOT NULL,
    CONSTRAINT Working_days_pk PRIMARY KEY (Employee_Abstract_Person_id,Week_id)
);

-- Table: history
CREATE TABLE history (
    id int  NOT NULL,
    Customer_id int  NOT NULL,
    "order" int  NOT NULL,
    CONSTRAINT history_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: Abstract_Person_Country (table: Abstract_Person)
ALTER TABLE Abstract_Person ADD CONSTRAINT Abstract_Person_Country
    FOREIGN KEY (Country_id)
    REFERENCES Country (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Customer_Abstract_Person (table: Customer)
ALTER TABLE Customer ADD CONSTRAINT Customer_Abstract_Person
    FOREIGN KEY (Abstract_Person_id)
    REFERENCES Abstract_Person (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Customer_Abstract_Person_Employee (table: Employee)
ALTER TABLE Employee ADD CONSTRAINT Customer_Abstract_Person_Employee
    FOREIGN KEY (Abstract_Person_id)
    REFERENCES Abstract_Person (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Employee_Employee_type (table: Employee)
ALTER TABLE Employee ADD CONSTRAINT Employee_Employee_type
    FOREIGN KEY (Employee_type_id)
    REFERENCES Employee_type (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Employee_MainStore (table: Employee)
ALTER TABLE Employee ADD CONSTRAINT Employee_MainStore
    FOREIGN KEY (MainStore_id)
    REFERENCES MainStore (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Employee_Merchandise_shop (table: Employee)
ALTER TABLE Employee ADD CONSTRAINT Employee_Merchandise_shop
    FOREIGN KEY (Merchandise_shop_id)
    REFERENCES Merchandise_shop (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Merchandise_shop_Country (table: Merchandise_shop)
ALTER TABLE Merchandise_shop ADD CONSTRAINT Merchandise_shop_Country
    FOREIGN KEY (Country_id)
    REFERENCES Country (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Merchandise_shop_Finance (table: Merchandise_shop)
ALTER TABLE Merchandise_shop ADD CONSTRAINT Merchandise_shop_Finance
    FOREIGN KEY (Finance_id)
    REFERENCES Finance (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Merchandise_shop_MainStore (table: Merchandise_shop)
ALTER TABLE Merchandise_shop ADD CONSTRAINT Merchandise_shop_MainStore
    FOREIGN KEY (MainStore_id)
    REFERENCES MainStore (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Merchandise_shop_Promotion (table: Merchandise_shop)
ALTER TABLE Merchandise_shop ADD CONSTRAINT Merchandise_shop_Promotion
    FOREIGN KEY (Promotion_id)
    REFERENCES Promotion (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Order_Order_type (table: Order)
ALTER TABLE "Order" ADD CONSTRAINT Order_Order_type
    FOREIGN KEY (Order_type_id)
    REFERENCES Order_type (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Order_detials_Order (table: Order_detials)
ALTER TABLE Order_detials ADD CONSTRAINT Order_detials_Order
    FOREIGN KEY (Order_id)
    REFERENCES "Order" (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Order_detials_Product (table: Order_detials)
ALTER TABLE Order_detials ADD CONSTRAINT Order_detials_Product
    FOREIGN KEY (Product_id)
    REFERENCES Product (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Order_type_Country (table: Order_type)
ALTER TABLE Order_type ADD CONSTRAINT Order_type_Country
    FOREIGN KEY (Country_id)
    REFERENCES Country (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Product_Product_category (table: Product)
ALTER TABLE Product ADD CONSTRAINT Product_Product_category
    FOREIGN KEY (Product_category_id)
    REFERENCES Product_category (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Product_in_store_Merchandise_shop (table: Product_in_store)
ALTER TABLE Product_in_store ADD CONSTRAINT Product_in_store_Merchandise_shop
    FOREIGN KEY (Merchandise_shop_id)
    REFERENCES Merchandise_shop (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Product_in_store_Product (table: Product_in_store)
ALTER TABLE Product_in_store ADD CONSTRAINT Product_in_store_Product
    FOREIGN KEY (Product_id)
    REFERENCES Product (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Shop_inventory_Inventory (table: Shop_inventory)
ALTER TABLE Shop_inventory ADD CONSTRAINT Shop_inventory_Inventory
    FOREIGN KEY (Inventory_id)
    REFERENCES Inventory (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Shop_inventory_Merchandise_shop (table: Shop_inventory)
ALTER TABLE Shop_inventory ADD CONSTRAINT Shop_inventory_Merchandise_shop
    FOREIGN KEY (Merchandise_shop_id)
    REFERENCES Merchandise_shop (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Working_days_Employee (table: Working_days)
ALTER TABLE Working_days ADD CONSTRAINT Working_days_Employee
    FOREIGN KEY (Employee_Abstract_Person_id)
    REFERENCES Employee (Abstract_Person_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Working_days_Week (table: Working_days)
ALTER TABLE Working_days ADD CONSTRAINT Working_days_Week
    FOREIGN KEY (Week_id)
    REFERENCES Week (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: history_Customer (table: history)
ALTER TABLE history ADD CONSTRAINT history_Customer
    FOREIGN KEY (Customer_id)
    REFERENCES Customer (Abstract_Person_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: history_Order (table: history)
ALTER TABLE history ADD CONSTRAINT history_Order
    FOREIGN KEY ("order")
    REFERENCES "Order" (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

