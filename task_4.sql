SELECT 
	FIO
FROM (
	SELECT 
		date,
		"CUSTOMER".customer_key,
		FIO,
		qty * price as total_price
	FROM "PURCHASE"
	LEFT JOIN "PRODUCT" on "PURCHASE".product_key = "PRODUCT".product_key
	LEFT JOIN "CUSTOMER" on "CUSTOMER".customer_key = "PURCHASE".customer_key
	WHERE
        (date >= '2019-05-01' AND date <= '2019-05-05') OR
        (date >= '2019-05-09' AND date <= '2019-05-12')
) as filtered_purchases
GROUP BY customer_key, FIO
HAVING SUM(total_price) > 30000


