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
END