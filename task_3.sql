SELECT * 
FROM crosstab(
	$$
	SELECT
		to_char(to_timestamp (month::text, 'MM'), 'Month') as month_name,	
		selling_rank,
		name
	FROM (
		SELECT 
			month,
			total_qty,
			name,
			price,
			price * total_qty as total_income,
			RANK() over (
				PARTITION BY month 
				ORDER BY price * total_qty DESC
			) as selling_rank
		FROM (
			SELECT
				EXTRACT('month' from date::timestamp) as month,
				"PURCHASE".product_key,
				SUM(qty) as total_qty
			FROM "PURCHASE"
			LEFT JOIN "PRODUCT" on "PURCHASE".product_key = "PRODUCT".product_key
			LEFT JOIN "PRODUCT_CATEGORY" on "PRODUCT_CATEGORY".category_key = "PRODUCT".category_key
			WHERE 
				date >= '2018-01-01' AND
				date <= '2018-12-31' AND
				category = 'Игрушки'
			GROUP BY EXTRACT('month' from date::timestamp), "PURCHASE".product_key
		) as total_sells
		JOIN "PRODUCT" ON total_sells.product_key = "PRODUCT".product_key) as total
	WHERE selling_rank < 4
	ORDER BY month ASC, selling_rank ASC
	$$,
	'SELECT * FROM generate_series(1, 3)' 
) as (
	Month text,
	First_sell text,
	Second_sell text,
	Third_sell text
)
