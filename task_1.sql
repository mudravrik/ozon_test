SELECT 
	ROUND(AVG(age)::numeric, 2) as avg_age
FROM (
	SELECT DISTINCT
		"CUSTOMER".customer_key,
		age
	FROM "PURCHASE"
	LEFT JOIN "PRODUCT" on "PURCHASE".product_key = "PRODUCT".product_key
	LEFT JOIN "CUSTOMER" on "CUSTOMER".customer_key = "PURCHASE".customer_key
	WHERE "PRODUCT".name = 'Teddy Bear' AND date >= '2018-01-01' AND date <= '2018-12-31'
) as teddy_bear_buyers
