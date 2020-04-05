WITH full_purchase AS (
	SELECT
		date,
		date_trunc('month', date::timestamp) as month_year,
		"CUSTOMER".customer_key,
		"PRODUCT".name as product_name,
		"CUSTOMER".FIO as customer_fio
	FROM "PURCHASE"
	JOIN "PRODUCT" on "PURCHASE".product_key = "PRODUCT".product_key
	JOIN "CUSTOMER" on "CUSTOMER".customer_key = "PURCHASE".customer_key
)

SELECT customer_fio as fio
FROM (
	SELECT DISTINCT
		a.customer_fio,
		a.customer_key
	FROM full_purchase a
	JOIN full_purchase b ON a.date = b.date AND a.customer_key = b.customer_key
	WHERE 
		a.month_year = '2019-04-01' AND
		'LEGO' IN(a.product_name, b.product_name) AND
		'Teddy Bear' IN(a.product_name, b.product_name)
) as lego_and_TB_buyers
