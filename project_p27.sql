-- KPIs for measuring success:
-- revenue
-- profit
-- number of streamings
-- number of active customers (customer engagement)
-- the average rating of all content (customer satisfaction)
SELECT
	SUM(c.price) AS Revenue
    ,SUM(c.price) - SUM(c.cost) AS Profit
	,COUNT(1) AS Views 
	,COUNT(DISTINCT s.customer_id) AS "Number of Active Customers"  
    ,AVG(s.rating) AS "Average Rating"
FROM streams AS s
LEFT JOIN content AS c
ON s.content_id = c.content_id;


-- Revenue, profit, number of streamings, number of avtive customers, and average rating by country for 2018
SELECT
	cont.country AS Country
    ,SUM(c.price) AS Revenue 
    ,SUM(c.price) - SUM(c.cost) AS Profit
	,COUNT(1) AS Views
    ,COUNT(DISTINCT s.customer_id) AS "Number of Active Customers"
    ,AVG(s.rating) AS "Average Rating"
FROM streams AS s
LEFT JOIN customers AS cust
ON cust.customer_id = s.customer_id
LEFT JOIN contacts AS cont
ON cust.customer_id = cont.customer_id
LEFT JOIN content AS c
ON c.content_id = s.content_id
WHERE order_date >= '2018-01-01' AND order_date <= '2018-12-31'
GROUP BY Country
ORDER BY Revenue DESC;


-- Revenue, profit, number of steamings, number of active customers, and average rating by months for 2018
SELECT 
	DATE_FORMAT(order_date ,'%Y-%m-01') AS Month
    ,SUM(c.price) AS Revenue 
    ,SUM(c.price) - SUM(c.cost) AS Profit
	,COUNT(1) AS Views
    ,COUNT(DISTINCT s.customer_id) AS "Number of Active Customers"
    ,AVG(s.rating) AS "Average Rating"
FROM streams AS s
INNER JOIN content AS c 
ON s.content_id = c.content_id
WHERE order_date BETWEEN '2018-01-01' AND '2018-12-31'
GROUP BY Month
ORDER BY Month ASC;


-- Content items with higher revenue
SELECT 
	cs.title AS Title
    ,SUM(cs.price) AS Revenue 
FROM (
	SELECT c.title
		   ,c.price
	FROM streams AS s
	LEFT JOIN content AS c
    ON s.content_id = c.content_id) AS cs
GROUP BY cs.title
ORDER BY Revenue DESC
LIMIT 10;


-- ? Most viewed content items by customers who was born in 1990th and their average rating
SELECT 
	c.title AS Title
	,COUNT(1) AS Views 
	,AVG(s.rating) AS "Average Rating"
FROM streams AS s
LEFT JOIN customers AS cust
ON cust.customer_id = s.customer_id
LEFT JOIN content AS c
ON c.content_id = s.content_id
WHERE cust.birth_date BETWEEN '1990-01-01' AND '1999-12-31'
GROUP BY Title
ORDER BY Views DESC
LIMIT 10;


-- first orders over time (per month) - attracting new customers
WITH first_dates AS (
  SELECT
    customer_id
    ,MIN(order_date) AS first_date
  FROM streams
  GROUP BY customer_id)

SELECT
  DATE_FORMAT(first_date ,'%Y-%m-01') AS Month
  ,COUNT(DISTINCT customer_id) AS Novices
FROM first_dates
WHERE DATE_FORMAT(first_date ,'%Y-%m-01') BETWEEN '2017-02-01' AND '2019-04-01'
GROUP BY Month
ORDER BY Month ASC;


-- Growth rate of streams and active customers month to month
WITH streams_data AS (
	SELECT
		DATE_FORMAT(order_date ,'%Y-%m-01') AS Month
		,COUNT(DISTINCT stream_id) AS streams_no
        ,COUNT(DISTINCT customer_id) AS cust_no
	FROM streams, content
	GROUP BY Month),

	streams_with_lag AS (
	SELECT
		Month
		,streams_no
        ,cust_no
		,COALESCE(LAG(streams_no) OVER(ORDER BY Month), 1) AS last_streams
		,COALESCE(LAG(cust_no) OVER(ORDER BY Month), 1) AS last_cust
	FROM streams_data)

SELECT
	Month
	,ROUND(100 * (streams_no - last_streams) / last_streams, 2) AS "Streams Growth %"
    ,ROUND(100 * (cust_no - last_cust) / last_cust, 2) AS "Active Customers Growth %"
FROM streams_with_lag
WHERE Month BETWEEN '2017-02-01' AND '2019-04-01'
ORDER BY Month ASC;


-- Unit economics (per customer as opposed to overall performance):
-- average revenue, profit and views per customer (measure success in scaling)
WITH rev_cust AS (
	SELECT
		DATE_FORMAT(s.order_date ,'%Y-%m-01') AS Month
		,SUM(c.price) AS revenue
        ,SUM(c.cost) AS costs
        ,COUNT(DISTINCT s.stream_id) AS streams_no
		,COUNT(DISTINCT s.customer_id) AS customers
	FROM content AS c
	INNER JOIN streams AS s 
	ON c.content_id = s.content_id
	GROUP BY Month)

SELECT
	Month
	,ROUND(revenue / GREATEST(customers, 1), 2) AS "Average Revenue per Customer"
    ,ROUND((revenue - costs) / GREATEST(customers, 1), 2) AS "Average Profit per Customer"
    ,ROUND(streams_no / GREATEST(customers, 1), 2) AS "Average Streamings per Customer"
FROM rev_cust
ORDER BY Month ASC;


-- ? Rank customers by views numbers for April 2019
WITH cust_count_streams AS (
	SELECT
		customer_id
		,COUNT(DISTINCT stream_id) AS count_streams
	FROM streams
	WHERE DATE_FORMAT(order_date ,'%Y-%m-01') = '2019-04-01'
	GROUP BY customer_id)

SELECT
	customer_id
	,DENSE_RANK() OVER (ORDER BY count_streams DESC) AS count_streams_rank
	,count_streams
FROM cust_count_streams
ORDER BY count_streams_rank ASC
LIMIT 10;


-- Actors who played in most popular content items with views number greater than 5 sorted by rating
SELECT 
	CONCAT(a.first_name, " ", a.last_name) AS Actor
	,AVG(s.rating) AS "Average Rating"
    ,COUNT(1) AS Views
FROM streams as s
LEFT JOIN customers AS c
ON s.customer_id = c.customer_id
LEFT JOIN act_cont as ac
ON s.content_id = ac.content_id
LEFT JOIN actors as a
ON ac.actor_id = a.actor_id
GROUP BY Actor 
HAVING AVG(s.rating) IS NOT NULL
AND COUNT(1) > 5 
ORDER BY "Average Rating" DESC, Views DESC;


-- Content with average rating higher than the total average
SELECT 
	title 
FROM content
WHERE content_id IN (
	SELECT content_id
	FROM streams
    GROUP BY content_id
    HAVING AVG(rating) > (
						SELECT AVG(rating)
						FROM streams))
ORDER BY title;


-- ? Number of customers by country and gender
SELECT 
	cont.country AS Country
    ,cust.gender AS Gender
    ,COUNT(1) AS Quantity
FROM customers AS cust
LEFT JOIN contacts AS cont
ON cust.customer_id = cont.customer_id
GROUP BY Country, Gender
ORDER BY Quantity DESC, Country;


-- ? Select all content items which satisfy conditions and group by languages
SELECT 
	language AS Language
	,GROUP_CONCAT(title, '') AS Titles
FROM content AS c
WHERE year BETWEEN 2002 AND 2012
	AND category = 'G'
    AND duration > 150
    AND genre = 'Drama'
GROUP BY Language;


-- ? Classify content by duration
SELECT
    CASE WHEN duration <= 100 THEN 'Short'
    WHEN duration <= 150 THEN 'Medium'
    ELSE 'Long' END AS Lasting,
    COUNT(DISTINCT content_id) AS Quantity
FROM content
GROUP BY Lasting
ORDER BY Lasting DESC;


-- Revenue by months of the year (seasonality)
SELECT 
	SUM(c.price) AS Revenue
    ,EXTRACT(MONTH FROM s.order_date) AS Month
FROM streams AS s
INNER JOIN content AS c
ON s.content_id = c.content_id
GROUP BY Month
ORDER BY Revenue DESC;


-- Statistics by genre: average rating, number of ratings, number of reviews, number of streamings, 
-- number of content where there is at least one rating, for 2018
SELECT 
	c.genre, 
	ROUND(AVG(s.rating), 1) AS "Average Rating" 
	,COUNT(s.rating) AS "Number of Ratings" 
    ,COUNT(s.review) AS "Number of Reviews"
	,COUNT(s.stream_id) AS "Number of Streamings"
	,COUNT(DISTINCT c.content_id) AS "Number of Content"
FROM streams AS s
LEFT JOIN content AS c
ON s.content_id = c.content_id
WHERE c.content_id IN (
					 SELECT content_id
					 FROM streams
					 GROUP BY content_id
					 HAVING COUNT(rating) >= 1)
AND s.order_date BETWEEN '2018-01-01' AND '2018-12-31'
GROUP BY c.genre;


-- Filling out the receipts table
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `filling_receipts_table`(
IN in_customer_id INT, IN in_date DATE, 
OUT out_receipt_id INT, OUT out_name VARCHAR(41), OUT out_customer_id INT, OUT out_receipt_date VARCHAR(20), OUT out_total DECIMAL(5, 2))
BEGIN
 DECLARE total_ DECIMAL(5, 2);
 SET total_ = 0.00;
 
 DROP TEMPORARY TABLE IF EXISTS streams_list;
 CREATE TEMPORARY TABLE streams_list (
 sp_stream_date VARCHAR(20)
 ,sp_content_title VARCHAR(45)
 ,sp_price DECIMAL(5, 2) 
 ) ENGINE = MEMORY;

 SELECT 
     SUM(c.price) INTO total_
 FROM streams AS s
 INNER JOIN content AS c
	ON s.content_id = c.content_id
 WHERE s.customer_id = in_customer_id
	AND s.order_date BETWEEN DATE_FORMAT(in_date ,'%Y-%m-01') AND in_date;
 
 IF total_ > 0 
	THEN
		INSERT INTO receipts (customer_id, receipt_date, total, paid, created_at, updated_at, updated_by)
		VALUES (in_customer_id, in_date, total_, 0, DATE(NOW()), DATE(NOW()), 'trigger_receipts');
 
		SELECT MAX(receipt_id) INTO out_receipt_id
		FROM receipts;
 
		SELECT CONCAT(first_name, ' ', last_name) INTO out_name
		FROM customers
		WHERE customer_id = in_customer_id;
 
		SET out_customer_id = in_customer_id, out_receipt_date = DATE_FORMAT(in_date, '%M %d, %Y'), out_total = total_;
 
		INSERT INTO streams_list (sp_stream_date, sp_content_title, sp_price)
		SELECT 
			DATE_FORMAT(s.order_date, '%M %d, %Y')
			,c.title
			,c.price
		FROM streams AS s
		INNER JOIN content AS c
			ON s.content_id = c.content_id
		WHERE s.customer_id = in_customer_id
			AND s.order_date BETWEEN DATE_FORMAT(in_date ,'%Y-%m-01') AND in_date;
 END IF;
END$$
DELIMITER ;


CALL filling_receipts_table (67, '2018-12-31', @out_receipt_id, @out_name, 
							 @out_customer_id, @out_receipt_date, @out_total);
SELECT 
	@out_receipt_id AS "Receipt Number" 
    ,@out_receipt_date AS "Receipt Date"
	,@out_name AS "Customer Name"
    ,@out_customer_id AS "Customer Number";

SELECT * FROM streams_list;
 
SELECT @out_total AS "Total";

select * from receipts;


-- Filling out the payment_orders table
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `filling_payment_orders_table`(
IN in_provider_id INT, IN in_date DATE, 
OUT out_order_id INT, OUT out_prov_name VARCHAR(45), OUT out_provider_id INT, OUT out_order_date VARCHAR(20), 
OUT out_total DECIMAL(5, 2), OUT out_bank_account VARCHAR(60))
BEGIN
 DECLARE total_ DECIMAL(5, 2);
 SET total_ = 0.00;
 
 DROP TEMPORARY TABLE IF EXISTS streams_prov_list;
 CREATE TEMPORARY TABLE streams_prov_list (
 sp_content_title VARCHAR(45)
 ,sp_price DECIMAL(5, 2)
 ,streams_number INT
 ) ENGINE = MEMORY;

 SELECT 
     SUM(c.cost) INTO total_
 FROM streams AS s
 INNER JOIN content AS c
	ON s.content_id = c.content_id
 WHERE c.provider_id = in_provider_id
	AND s.order_date BETWEEN DATE_FORMAT(in_date ,'%Y-%m-01') AND in_date;

 IF total_ > 0 
	THEN
		INSERT INTO payment_orders (provider_id, total, paid, created_at, updated_at, updated_by)
		VALUES (in_provider_id, total_, 0, DATE(NOW()), DATE(NOW()), 'trigger_payment_orders');
 
		SELECT MAX(order_id) INTO out_order_id
		FROM payment_orders;
 
		SELECT name INTO out_prov_name
		FROM providers
		WHERE provider_id = in_provider_id;
 
		SET out_provider_id = in_provider_id, out_order_date = DATE_FORMAT(in_date, '%M %d, %Y'), out_total = total_;
 
		SELECT bank_acc INTO out_bank_account
		FROM providers
		WHERE provider_id = in_provider_id;
 
		INSERT INTO streams_prov_list (sp_content_title, sp_price, streams_number)
		SELECT 
			c.title
			,c.cost
			,COUNT(c.title)
		FROM streams AS s
		INNER JOIN content AS c
			ON s.content_id = c.content_id
		INNER JOIN providers AS p
			ON c.provider_id = p.provider_id
		WHERE c.provider_id = in_provider_id
			AND s.order_date BETWEEN DATE_FORMAT(in_date ,'%Y-%m-01') AND in_date
		GROUP BY c.title, c.cost;
	END IF;
END$$
DELIMITER ;


CALL filling_payment_orders_table (5, '2018-12-31', @out_order_id, @out_prov_name, 
								   @out_provider_id, @out_order_date, @out_total, @out_bank_account);
SELECT 
	@out_order_id AS "Order Number" 
    ,@out_order_date AS "Date of the Order"
	,@out_prov_name AS "Provider Name"
    ,@out_provider_id AS "Provider Number"
    ,@out_bank_account AS "Bank Account"
    ,sp_content_title
    ,sp_price
    ,streams_number
    ,@out_total
FROM streams_prov_list;

SELECT * FROM streams_prov_list;
 
SELECT @out_total AS "Total";


--
select * from act_cont;
select * from actors;
select * from contacts;
select * from content;
select * from customers;
select * from payment_orders;
select * from providers;
select * from receipts;
select * from streams;


/*
-- for two queries below it is better to create the separate table with prices - to be able to get the actual price on each date
-- Increase price by one dollar for dramas
UPDATE content
SET price = price + 1
WHERE genre = 'Drama';


-- Increase price by 50 cents for movies where David Radcliffe took part
UPDATE content
SET price = price + 0.5
WHERE content_id IN
	(SELECT content_id from actors AS a
	 INNER JOIN act_cont AS ac
	 ON a.actor_id = ac.actor_id
	 WHERE LOWER(last_name) IN ('radcliffe'));
*/