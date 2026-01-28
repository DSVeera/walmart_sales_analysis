select * from walmart limit 10;

# Business Problems

-- Q1: Find the different payment methods and number of transactions, number of quantity sold

select payment_method, count(*) as number_of_payments, sum(quantity) as number_of_quantity
from walmart
group by payment_method;

-- Q2: Find the total sales for each city.

select city, sum(total) as total_sales
from walmart
group by city;

-- Q3: List all invoices where the payment method was Ewallet and the rating is greater than 8.

select invoice_id, city, rating
from walmart
where payment_method = "Ewallet" and rating > 8;

-- Q4: Retrieve the average unit_price for each product category.

SELECT category, AVG(unit_price) AS avg_price
FROM walmart
GROUP BY category;

-- Q5: Find the branch that generated the highest total revenue.

SELECT branch, SUM(total) AS revenue
FROM walmart
GROUP BY branch
ORDER BY revenue DESC
LIMIT 1;

-- Q6: Get the top 3 cities with the highest average profit margin.

select city, avg(profit_margin) as avg_margin
from walmart
group by city
order by avg_margin desc
limit 3;

-- Q7: Find all invoices where the quantity purchased was greater than 7 and category is Electronic accessories.

SELECT invoice_id, city, quantity, category
FROM walmart
WHERE category = 'Electronic accessories' AND quantity > 7;

-- Q8: Calculate the daily sales totals for February 2019.

SELECT date, SUM(total) AS daily_sales
FROM walmart
WHERE date LIKE '%/02/19'
GROUP BY date
ORDER BY date;

-- Q9: List invoices where the rating is below 6 and payment method is Credit card.

select invoice_id, city, rating
from walmart
where payment_method = "credit card" and rating < 6;

-- Q10: Identify the highest-rated category in each branch, displaying the branch, category avg rating

select branch, category, avg(rating) as avg_rating
from walmart
group by 1, 2
order by 1, 3 desc;

