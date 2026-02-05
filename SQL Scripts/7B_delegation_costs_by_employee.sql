WITH delegation_costs AS(
	SELECT
		c.delegation_id,
        SUM(c.amount * er.rate_to_pln) AS total_cost_pln
	FROM costs c
    JOIN exchange_rates er 
		ON er.currency = c.currency
        AND er.rate_date = c.cost_date
	GROUP BY c.delegation_id
),

 delegation_employee_count AS (
    SELECT
        delegation_id,
        COUNT(*) AS employee_count
    FROM delegation_employees
    GROUP BY delegation_id
)

SELECT
	de.employee_id,
    dc.delegation_id,
    (dc.total_cost_pln / deci.employee_count) AS cost_per_employee_pln
FROM delegation_employees de
JOIN delegation_costs dc 
	ON dc.delegation_id = de.delegation_id
JOIN delegation_employee_count deci 
	ON deci.delegation_id = de.delegation_id
