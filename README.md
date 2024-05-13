# Raksha_Pipes_Assignment


Certainly! Let's break down each step with detailed explanations:

### 1. Data Generation:
Python's Faker library was utilized to generate synthetic data for the Raksha Pipes company. This library allows the generation of various types of fake data, including names, addresses, emails, and more. In this project, Faker was used to create data for customers, products, orders, payments, and sales. Each piece of data was generated with appropriate characteristics to simulate real-world scenarios.

### 2. Data Storage:
The generated data was saved into CSV (Comma Separated Values) files. CSV format is commonly used for storing tabular data in plain text, making it easy to read and manipulate. These CSV files were then stored in a Google Drive folder for accessibility and organization.

### 3. Database Creation:
A MySQL database named `raksha_pipes_sales_db` was created to store the generated data. MySQL is a popular relational database management system known for its reliability, scalability, and performance. The database provides a structured environment for storing, managing, and querying data. Below is the Databse schema

![raksha-sales_schema](https://github.com/RAm-SaGar-863/Raksha_Pipes_Assignment/assets/128234583/babfeb45-c377-46e7-b635-1214d4b71c54)


### 4. Table Creation:
SQL (Structured Query Language) queries were written to create tables within the MySQL database. Each table was designed to store specific types of data, such as customer information, product details, order details, payment records, and sales data. The tables include:
- Dim_Date
- Dim_Customers
- Dim_Location
- Dim_Product_Category
- Dim_Products
- Fact_Order_details
- Fact_Payments
- Fact_Sales

#### **Dim_Date:**
- date_id (Primary Key): Unique identifier for each date.
- date: Date value.
- day: Day of the month.
- month: Month of the year.
- year: Year.
- quarter: Quarter of the year.
- holiday_flag: Flag indicating whether the date is a holiday (1 for holiday, 0 for non-holiday).
- weekday_flag: Flag indicating whether the date is a weekday (1 for weekday, 0 for weekend).

#### **Dim_Customers:**
customer_id (Primary Key): Unique identifier for each customer.
customer_name: Name of the customer/company.
contact_person: Name of the contact person at the customer/company.
email: Email address of the customer/contact person.
phone: Phone number of the customer/contact person.

#### **Dim_Location:**
location_id (Primary Key): Unique identifier for each location.
City: Name of the city.

#### **Dim_Product_Category:**
product_category_id (Primary Key): Unique identifier for each product category.
product_category: Name of the product category.

#### **Dim_Products:**
product_id (Primary Key): Unique identifier for each product.
product_name: Name of the product.
product_category_id (Foreign Key): Identifier linking the product to its category in Dim_Product_Category.
cost_per_unit: Cost per unit of the product.
sale_unit_price: Sale unit price of the product.

#### **Fact_Order_details:**
order_id (Primary Key): Unique identifier for each order.
product_id (Foreign Key): Identifier linking the order to a product in Dim_Products.
customer_id (Foreign Key): Identifier linking the order to a customer in Dim_Customers.
order_date: Date when the order was placed.
quantity: Quantity of products ordered.
payable_amount: Total payable amount for the order.
advance_amount: Advance amount paid for the order.
delivery_date: Date when the order was delivered.

#### **Fact_Payments:**
payment_id (Primary Key): Unique identifier for each payment.
order_id (Foreign Key): Identifier linking the payment to an order in Fact_Order_details.
payment_date: Date when the payment was made.
delay_of_payment: Delay in payment (in days) from the delivery date.
payed_amount: Amount paid by the customer.

#### **Fact_Sales:**
sale_id (Primary Key): Unique identifier for each sale.
order_id (Foreign Key): Identifier linking the sale to an order in Fact_Order_details.
customer_id (Foreign Key): Identifier linking the sale to a customer in Dim_Customers.
payment_id (Foreign Key): Identifier linking the sale to a payment in Fact_Payments.
product_id (Foreign Key): Identifier linking the sale to a product in Dim_Products.
location_id (Foreign Key): Identifier linking the sale to a location in Dim_Location.
sale_date: Date when the sale occurred.
cost_per_unit: Cost per unit of the product sold.
quantity_sold: Quantity of products sold.
sale_per_unit: Sale per unit price of the product.
cogs: Cost of goods sold.
shipping_cost: Cost of shipping.
interest_for_payment_delay: Interest charged for delayed payment.
total_sale_price: Total sale price.
profit: Profit generated from the sale.

### 5. Data Import:
The CSV files containing the generated data were manually imported into their respective tables in the MySQL database. This process involved using MySQL's data import functionality to load the data from the CSV files into the corresponding database tables. Once imported, the data was ready for querying and analysis within the database.

### 6. Data Visualization:
The MySQL database was connected to Power BI, a powerful business analytics tool, to visualize and analyze the data. Power BI allows users to create interactive dashboards and reports from various data sources, including databases. After importing the data into Power BI, a dashboard was created with visualizations to derive insights from the data.

### Insights Obtained:
The dashboard provided several key insights:
1. **Product Preferences:** Suction pipe and underground pipe are the most purchased products.
2. **Profitable Location:** Sales in Kolkata city yield high average profits.
3. **Interest Payments:** Customers from Hyderabad and Ahmedabad cities are paying high interest for delayed payments.
4. **Sales Trends:** Total sales prices are high in certain months (2, 3, 8) and low in others (1, 10, 4, 7).

### Dashboard Usage:
The dashboard allows users to:
1. **Monitor Sales Price Trends:** Track total sales price trends monthly and analyze variations based on product types, categories, and cities using slicers.
2. **Identify Product Demand:** Identify highly demanded products by customers based on cities and product categories using slicers.
3. **Analyze Profit Distribution:** Understand average profit distribution across cities and explore profit distribution for each product type by utilizing slicers.
4. **Determine Payment Insights:** Determine which cities' customers are delaying payments and paying high interest. Analyze interest payments by product type and city using slicers.

By following these steps and utilizing the dashboard, the Raksha Pipes company can gain valuable insights into their sales performance, customer behavior, and profitability, enabling them to make informed business decisions.
