1. Flow of System
The streaming company StreamIt Ltd. offers movies, series and shows through the internet. 
It has agreements with content creators and owners and streams their content. Periodically (for example, monthly) StreamIt Ltd. pays content suppliers one time payment for the opportunity to stream certain content and royalty for the content which was purchased by its customers. To maintain business relationships with content providers StreamIt Ltd. collects information about them: name of the person or business, address, contact data, bank account data, which content they own. 
Customers of the StreamIt Ltd. are located all around the world. To see the content customers must first register. When register, they input their data like first and last name, day of birth, gender, country of living, and contact data as phone and email. 
Except the title, StreamIt Ltd. also collects data about content like type (movie/series/show), genre, year of release, duration, description, price for the customer, cost for the company, which helps customers to choose what to see as well as gives the company information about what amount to charge and what amount of royalty to pay.
When customer purchases the content, the company registers which customer purchased which content. This allows to charge customers, pay royalties as well as recommend those customers similar content for future views (with help a recommendation system which uses customers’ preferences).
Stream Ltd. also has a rating and review registration system which allows to use the second recommendation algorithm which uses sentiment analysis and ratings, so the company can advise customers which content has better ratings including that one which has good reviews from customers with similar interests.  
Took into account that some people (fans of actors) can watch content just to see their favorite actresses and actors playing, the company has created database of actors with some information about them and connected their records to the content they played in. 
For sure, StreamIt Ltd. has another databases, for example database of employees and database of expenses which are used for payroll and accounting purposes, but as soon as they are much less connected to the business model, we will leave them out of the scope of this assignment.
Using data stored in the future database, StreamIt Ltd. wants to have an opportunity to get the following reports:
- Revenue, Profit, Number of Streams, Number of Active Customers (customer engagement), Average Rating of All Content (customer satisfaction) by Country over certain period of time to measure overall success.
-  Revenue, Profit, Number of Streams, Number of Active Customers, Average Rating of All Content for a certain period of time month by month to understand trends.
- Number of new customers the company attracts month to month (customers acquisition).
- Growth rate of Streams and Active Customers month to month.
- Average Revenue, Profit and Views per Customer (unit economics to measure success in scaling as opposed to overall performance).
- Revenue by months of the year (seasonality) for better financial management.
- Content items with higher Revenue for better understanding the company’s audience preferences and resource planning (rights for which kind of content it makes sense to purchase in the future most).
- Content with Average Rating higher than the total average for more profitable pricing. 
- Statistics by genre: Average Rating, Number of Ratings, Number of Reviews, Number of Streams, Number of Content which has at least one rating. It will help management decide on which genre to allocate money most.
- Actors who played in most popular content items with views number greater than 5 sorted by rating. Similar with reports on genre and customers preferences regarding the content, such a report must help the company management in making decisions in rights for which content (with which actors playing) to invest in the future most.
 
2. Database structure
Table Name	Primary Key(s)	Foreign Key(s) if any	Description of the Table
content	content_id	provider_id	Table “content” stores data related to the movies, series and shows which are available for streaming. I.e., type, title, language, genre, year, duration, description, price, cost, link to the content, category, and content owner.
customers	customer_id		Table “customers” stores the following customers data: first_name, last_name, gender, birth_date, login, password_hash, and subscription_date.
streams	stream_id	customer_id
content_id	Table “streams” stores the history of orders: customer_id, content_id, order date, rating and review if a customer rated the content and/or wrote a review.
providers	provider_id		Table “providers” contains data regarding content owners whom royalty must be paid: name, address, phones, email, website, bank_account.
actors	actor_id		Table “actors” stores data related to actresses and actors: first name, last name, birth year , gender, nationality, and link to the page on Wikipedia.
act_cont		actor_id
content_id
	Table “act_cont” stores records regarding which actress/actor played in which movie/series/show.
contacts	customer_id		Table “contacts” contains country, home address, phone, email, and preferences regarding getting receipts for each customer.
receipts	receipt_id	customer_id	Records contain number and date of receipt, customer_id, and total of the “receipts” table are created automatically at the end of each month using trigger which starts the stored procedure. The table is used to form receipts which are going to be sent by mail or email. The field paid is filled out after the payment received.
payment_oders	order_id	provider_id	Records order_id, provider_id, and total of the “payment_orders” table  are formed automatically at the end of each month. The table is used to create wire transfers to the providers. The field paid is filled out after the payment is made. 
Each record in each table also contains columns “created_at”, “updated_at” and “updated_by” which are filled out automatically using triggers. 

3. Entity-Relational (ER) Model
 

4. SQL Queries
4.1. Revenue, Profit, Number of Streams, Number of Active Customers, Average Rating of All Content by Country over certain period of time (for 2018).
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
WHERE order_date >= '2018-01-01' 
AND order_date <= '2018-12-31'
GROUP BY Country
ORDER BY Revenue DESC;

 

4.2 Revenue, Profit, Number of Streams, Number of Active Customers, Average Rating of All Content for all countries, grouped by months.
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
 

4.3. First orders over time.
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
WHERE 
DATE_FORMAT(first_date ,'%Y-%m-01') BETWEEN '2017-02-01' AND '2019-04-01'
GROUP BY Month
ORDER BY Month ASC;
 

4.4. Growth rate of Streams and Active Customers month to month.
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
 

4.5. Average Revenue, Profit and Views per Customer.
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
 


4.6. Revenue by months of the year.
SELECT 
	SUM(c.price) AS Revenue
    	,EXTRACT(MONTH FROM s.order_date) AS Month
FROM streams AS s
INNER JOIN content AS c
ON s.content_id = c.content_id
GROUP BY Month
ORDER BY Revenue DESC;
 

4.7. Content items with higher Revenue.
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
 

4.8. Content with Average Rating higher than the total average.
SELECT 
	title 
FROM content
WHERE content_id IN (
			SELECT 
content_id
			FROM streams
    			GROUP BY content_id
    			HAVING AVG(rating) > (
						SELECT 
AVG(rating)
						FROM streams))
ORDER BY title;
  

4.9. Statistics by genre: Average Rating, Number of Ratings, Number of Reviews, Number of Streams, Number of Content which has at least one rating (for 2018).
SELECT 
	c.genre
	,ROUND(AVG(s.rating), 1) AS "Average Rating" 
	,COUNT(s.rating) AS "Number of Ratings" 
    	,COUNT(s.review) AS "Number of Reviews"
	,COUNT(s.stream_id) AS "Number of Streamings"
	,COUNT(DISTINCT c.content_id) AS "Number of Content"
FROM streams AS s
LEFT JOIN content AS c
ON s.content_id = c.content_id
WHERE c.content_id IN (
			SELECT 
content_id
			FROM streams
			GROUP BY content_id
			HAVING COUNT(rating) >= 1)
AND s.order_date BETWEEN '2018-01-01' AND '2018-12-31'
GROUP BY c.genre;
 
4.10. Actors who played in most popular content items with views number greater than 5 sorted by rating.
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
 

5. SQL Procedures.
5.1. Filling out the receipts table.
The stored procedure filling_receipts_table fills out the receipts table as well as saves data which are used to form receipts for customers in several variables and temporary table.
The procedure gets customer_id and date of the receipt as an input and assigns the following values to be stored in variables: receipt_id, name of the customer, customer_id, date of receipt, and total sum of the receipt. The procedure also creates a temporary table and inserts to it the following data for each stream for the given customer and period of time: date of streaming, title of content, and price of content.  
At the beginning, the procedure declares a variable where the the total sum to be paid by the customer will be stored and sets it equal to 0. Then it drops the temp table if it is exists and creates the new temp table in server memory. 
After that the procedure counts the total amount to be paid by customer for streaming in the current month, i.e. by the given date of receipt from the first day of that month. If this sum is greater than 0, which means that the customer watched content during that month, the procedure fills out the following data in the receipts table: customer_id, receipt_date, total, paid (equals to 0 as soon as the receipt is not paid yet), created_at, updated_at, and updated_by. 
Also the procedure returns the following values: receipt_id, the customer full name, date of receipt in human readable format, and total sum.
Finally, the procedure forms the temp table where data (dates, titles, prices) regarding all streams for the period are stored. 

CREATE PROCEDURE filling_receipts_table (
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
END

CALL filling_receipts_table (67 , '2018-12-31', @out_receipt_id, @out_name, @out_customer_id, @out_receipt_date, @out_total);
SELECT 
	@out_receipt_id AS "Receipt Number" 
    	,@out_receipt_date AS "Receipt Date"
	,@out_name AS "Customer Name"
    	,@out_customer_id AS "Customer Number";
 

SELECT * FROM streams_list;
 
 
SELECT @out_total AS "Total";
 

5.2. Filling out the payment_orders table.
The stored procedure filling_payment_orders_table fills out the payment_orders table as well as saves data which are used to form wire transfers and reports for providers in several variables and temporary table.
The procedure takes provider_id and date of the order as an input and assigns the following values to be stored in variables: order_id, name of the provider , provider_id, date of the order , and total sum to be paid. The procedure also creates a temporary table and inserts to it the following aggregated data for the given provider and period of time: title of the content, cost of the content, and number of streams for each content item.  
At the beginning, the procedure declares a variable where the sum to be paid will be stored and sets it equal to 0. Then it drops the temp table if it is exists and creates the new temp table in server memory. 
After that the procedure counts the total amount to be paid to provider in the current month, i.e. by the given date of order from the first day of that month. If this sum is greater than 0, which means that the company must pay this provider for the content in that month, the procedure fills out the following data in the payment_orders table: provider_id, total, paid (equals to 0 as soon as the receipt is not paid yet), created_at, updated_at, updated_by. 
Also the procedure returns the following values: order_id, the provider name, date of order in human readable format, total sum, and provider’s bank account data.
Finally, the procedure forms the temp table where data (title, price, number of streams) related all streams for the given period are stored in the purpose of reporting to the provider. 

CREATE PROCEDURE filling_payment_orders_table (
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
END

CALL filling_payment_orders_table (5, '2018-12-31', @out_order_id, @out_prov_name, @out_provider_id, @out_order_date, @out_total, @out_bank_account);
SELECT 
	@out_order_id AS "Order Number" 
    	,@out_order_date AS "Date of the Order"
	,@out_prov_name AS "Provider Name"
    	,@out_provider_id AS "Provider Number"
    	,@out_bank_account AS "Bank Account";
 

SELECT * FROM streams_prov_list;
 
 
SELECT @out_total AS "Total";
  
