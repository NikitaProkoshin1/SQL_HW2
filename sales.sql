
use homework2;
CREATE TABLE sales (
	id INT PRIMARY KEY,
	order_date DATE,
	count_product INT
);

INSERT INTO sales
(id, order_date, count_product)
VALUES
(1, "2023-11-21",121),
(2, "2023-11-22",280),
(3, "2023-11-23",31),
(4, "2023-11-24",224),
(5, "2023-11-25",441);

SELECT * FROM sales;

ALTER TABLE sales
ADD COLUMN count_seagment VARCHAR(20);


--2.


UPDATE sales
SET count_seagment = 
	CASE
		WHEN count_product < 100 THEN "Маленький заказ"
        WHEN count_product >= 100 AND count_product <= 300 THEN "Средний заказ"
        ELSE "Большой заказ"
	END;
SELECT * FROM sales;


--3.


CREATE TABLE orders (
id INT PRIMARY KEY,
employee_id VARCHAR(10),
amount DECIMAL(10,2),
order_status VARCHAR(10)
);

INSERT INTO orders(id,employee_id, amount, order_status)
VALUES
	(1,"a01", 18.22, "OPEN"),
    (2,"b02", 203.55, "OPEN"),
    (3,"c03", 98.77, "CLOSED"),
    (4,"e04", 32.18, "OPEN"),
    (5,"d05", 10.44, "CANCELLED");

SELECT *FROM orders;

SELECT
	id,
    employee_id, 
    amount,
    order_status,
    CASE
		WHEN order_status = "OPEN" THEN "Заказ открыт"
		WHEN order_status = "CLOSED" THEN "Заказ закрыт"
		WHEN order_status = "CANCELLED" THEN "Заказ отменен"
	END AS full_order_status
FROM orders;



--4. NULL отличается от 0 тем, что 0 может быть результатом арифметической операции, в то время как NULL говорит о том, что значение просто не было указано
