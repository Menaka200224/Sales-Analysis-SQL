--Time Series Analysis

SELECT
order_date,
SUM(sales_amount) as total_Sales
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY order_date
ORDER BY order_date

--Retrive total sales based on year
SELECT
YEAR(order_date) as order_year,
SUM(sales_amount) as total_Sales
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date)

--Retrive total sales and total customers based on year
SELECT
YEAR(order_date) as order_year,
SUM(sales_amount) as total_Sales,
COUNT (DISTINCT customer_key) as total_customers
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date)

--Retrive total sales, total customers and quantity based on year
SELECT
YEAR(order_date) as order_year,
SUM(sales_amount) as total_Sales,
COUNT (DISTINCT customer_key) as total_customers,
SUM (quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date)

--Retrive total sales, total customers and quantity based on month
SELECT
MONTH(order_date) as order_year,
SUM(sales_amount) as total_Sales,
COUNT (DISTINCT customer_key) as total_customers,
SUM (quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY MONTH(order_date)
ORDER BY MONTH(order_date)

--Retrive total sales, total customers and quantity based on year,month
SELECT
YEAR(order_date) as order_year,
MONTH(order_date) as order_year,
SUM(sales_amount) as total_Sales,
COUNT (DISTINCT customer_key) as total_customers,
SUM (quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date),MONTH(order_date)
ORDER BY YEAR(order_date),MONTH(order_date)


SELECT
DATETRUNC(month,order_date) as order_year,
SUM(sales_amount) as total_Sales,
COUNT (DISTINCT customer_key) as total_customers,
SUM (quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(month,order_date)
ORDER BY DATETRUNC(month,order_date)

SELECT
DATETRUNC(year,order_date) as order_year,
SUM(sales_amount) as total_Sales,
COUNT (DISTINCT customer_key) as total_customers,
SUM (quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(year,order_date)
ORDER BY DATETRUNC(year,order_date)

SELECT
FORMAT(order_date,'yyyy-MMM') as order_year,
SUM(sales_amount) as total_Sales,
COUNT (DISTINCT customer_key) as total_customers,
SUM (quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY FORMAT(order_date,'yyyy-MMM')
ORDER BY FORMAT(order_date,'yyyy-MMM')












