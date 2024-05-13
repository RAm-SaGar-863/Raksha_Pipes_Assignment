# Raksha_Pipes_Assignment


Certainly! Let's break down each step with detailed explanations:

### 1. Data Generation:
Python's Faker library was utilized to generate synthetic data for the Raksha Pipes company. This library allows the generation of various types of fake data, including names, addresses, emails, and more. In this project, Faker was used to create data for customers, products, orders, payments, and sales. Each piece of data was generated with appropriate characteristics to simulate real-world scenarios.

### 2. Data Storage:
The generated data was saved into CSV (Comma Separated Values) files. CSV format is commonly used for storing tabular data in plain text, making it easy to read and manipulate. These CSV files were then stored in a Google Drive folder for accessibility and organization.

### 3. Database Creation:
A MySQL database named `raksha_pipes_sales_db` was created to store the generated data. MySQL is a popular relational database management system known for its reliability, scalability, and performance. The database provides a structured environment for storing, managing, and querying data.

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
