WITH cost_pln AS (
	SELECT
		c.delegation_id,
        c.amount * er.rate_to_pln AS amount_pln
	FROM costs c
    JOIN exchange_rates er 
		ON er.currency = c.currency	
        AND er.rate_date = c.cost_date
)

SELECT 
d.delegation_id,
d.start_date,
d.end_date,
SUM(cp.amount_pln) AS total_cost_pln
FROM delegations d
JOIN cost_pln cp
	ON cp.delegation_id = d.delegation_id
GROUP BY 
	d.delegation_id,
    d.start_date,
    d.end_date;


