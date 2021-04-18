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
END