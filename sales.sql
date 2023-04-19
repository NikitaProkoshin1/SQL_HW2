
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

UPDATE sales
SET count_seagment = 
	CASE
		WHEN count_product < 100 THEN "Маленький заказ"
        WHEN count_product >= 100 AND count_product <= 300 THEN "Средний заказ"
        ELSE "Большой заказ"
	END;
SELECT * FROM sales;
