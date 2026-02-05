CREATE VIEW v_delegation_costs_by_employee_per_day AS
SELECT
	de.employee_id,
	dc.delegation_id,
    cal.date AS report_date,    
    CAST(
		dc.total_cost_pln 
        / (DATEDIFF(d.end_date, d.start_date) + 1) 
        / deci.employee_count
        AS DECIMAL(12,4)
	) AS cost_per_day_pln
FROM v_delegation_costs_pln dc
JOIN delegations d
	ON d.delegation_id = dc.delegation_id
JOIN delegation_employees de
    ON de.delegation_id = dc.delegation_id
JOIN (
    SELECT
        delegation_id,
        COUNT(*) AS employee_count
    FROM delegation_employees
    GROUP BY delegation_id
) deci 
	ON deci.delegation_id = dc.delegation_id
JOIN date_dim cal
	ON cal.date BETWEEN d.start_date AND d.end_date