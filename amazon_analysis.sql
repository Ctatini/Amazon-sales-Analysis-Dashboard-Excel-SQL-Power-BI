
-- Amazon Sales Performance Analysis

1. Total Revenue
select sum(total_revenue) as Revenue from amazon_sales;

2.Total Orders
select count(order_id) as Orders from amazon_sales;

3.Quantity sold
select sum(quantity_sold) as Quantity_sold from amazon_sales;

4.Average Rating
select avg(rating) as Average_Rating from amazon_sales;

5. Region wise revenue
SELECT 
    SUM(total_revenue) AS Revenue, customer_region AS Region
FROM
    amazon_sales
GROUP BY customer_region
ORDER BY Revenue DESC;

6. Category wise revenue
SELECT 
    SUM(total_revenue) AS Revenue,
    SUM(quantity_sold) AS Quantity_sold,
    product_category
FROM
    amazon_sales
GROUP BY product_category
ORDER BY Revenue DESC;

7. Monthly sales trend

SELECT 
    SUM(total_revenue) AS Revenue, date_format(order_date, '%b') AS Month
FROM
    amazon_sales
GROUP BY month(order_date), date_format(order_date, '%b')
ORDER BY month(order_date) ;

8.  Payment_Method Analysis

SELECT 
    SUM(total_revenue) AS Revenue, payment_method
FROM
    amazon_sales
GROUP BY payment_method
ORDER BY Revenue DESC;

9.  Average rating by product_category

SELECT 
    round(AVG(rating),2) AS Average_Rating, product_category
FROM
    amazon_sales
GROUP BY product_category
ORDER BY Average_Rating desc;

10. Top5 revenue generating products

SELECT 
    SUM(total_revenue) AS Revenue, product_id
FROM
    amazon_sales
GROUP BY product_id
ORDER BY Revenue DESC
LIMIT 5;