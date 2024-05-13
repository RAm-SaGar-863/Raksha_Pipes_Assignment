CREATE SCHEMA raksha_pipes_sales_db;

-- Schema for Dim_date table
CREATE TABLE Dim_Date (
    date_id INT PRIMARY KEY,
    date DATE,
    day INT,
    month INT,
    year INT,
    quarter INT,
    holiday_flag INT,
    weekday_flag INT
);

-- Schema for Dim_customers table
CREATE TABLE Dim_Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    contact_person VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(20)
);


-- Schema for Dim_location table
CREATE TABLE Dim_Location (
    location_id INT PRIMARY KEY,
    City VARCHAR(255)
);

-- Schema for Dim_product_category table
CREATE TABLE Dim_Product_Category (
    product_category_id INT PRIMARY KEY,
    product_category VARCHAR(255)
);

-- Schema for Dim_products table
CREATE TABLE Dim_Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    product_category_id INT,
    cost_per_unit DECIMAL(10, 2),
    sale_unit_price DECIMAL(10, 2),
    FOREIGN KEY (product_category_id) REFERENCES Dim_Product_Category(product_category_id)
);

-- Schema for Order_details table
CREATE TABLE Fact_Order_details (
    order_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    order_date DATE,
    quantity INT,
    payable_amount DECIMAL(10, 2),
    advance_amount DECIMAL(10, 2),
    delivery_date DATE,
    FOREIGN KEY (product_id) REFERENCES Dim_Products(product_id),
    FOREIGN KEY (customer_id) REFERENCES Dim_Customers(customer_id)
);

-- Schema for Payments table
CREATE TABLE Fact_Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    delay_of_payment INT,
    payed_amount DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Fact_Order_details(order_id)
);


-- Schema for Fact_sales table
CREATE TABLE Fact_Sales (
    sale_id INT PRIMARY KEY,
    order_id INT,
    customer_id INT,
    payment_id INT,
    product_id INT,
    location_id INT,
    sale_date DATE,
    cost_per_unit DECIMAL(10, 2),
    quantity_sold INT,
    sale_per_unit DECIMAL(10, 2),
    cogs DECIMAL(10, 2),
    shipping_cost DECIMAL(10, 2),
    interest_for_payment_delay DECIMAL(10, 2),
    total_sale_price DECIMAL(10, 2),
    profit DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Fact_Order_details(order_id),
    FOREIGN KEY (customer_id) REFERENCES Dim_Customers(customer_id),
    FOREIGN KEY (payment_id) REFERENCES Fact_Payments(payment_id),
    FOREIGN KEY (product_id) REFERENCES Dim_Products(product_id),
    FOREIGN KEY (location_id) REFERENCES Dim_Location(location_id)
);


