WITH delegation_costs AS (
	SELECT 
		c.delegation_id,
		SUM(c.amount * er.rate_to_pln) AS total_cost_pln
	FROM costs c
	JOIN exchange_rates er 
		ON er.currency = c.currency
		AND er.rate_date = c.cost_date
	GROUP BY c.delegation_id
),

delegation_days AS (
SELECT 
	delegation_id,
    DATEDIFF(end_date, start_date) + 1 AS count_days
FROM 
	delegations
),

 delegation_employee_count AS (
    SELECT
        delegation_id,
        COUNT(*) AS employee_count
    FROM delegation_employees
    GROUP BY delegation_id
)

SELECT
	dc.delegation_id,
    ROUND(dc.total_cost_pln / dd.count_days / deci.employee_count, 2) AS cost_per_employee_per_day_pln
FROM delegation_costs dc
JOIN delegation_days dd 
	ON dd.delegation_id = dc.delegation_id
JOIN delegation_employee_count deci 
	ON deci.delegation_id = dc.delegation_id