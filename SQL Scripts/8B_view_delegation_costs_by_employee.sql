CREATE VIEW v_delegation_costs_by_employee AS
SELECT
	de.employee_id,
    dc.delegation_id,
    ROUND(dc.total_cost_pln / deci.employee_count,2) AS cost_per_employee_pln
FROM delegation_employees de
JOIN v_delegation_costs_pln dc 
	ON dc.delegation_id = de.delegation_id
JOIN (
    SELECT
        delegation_id,
        COUNT(*) AS employee_count
    FROM delegation_employees
    GROUP BY delegation_id
) deci 
	ON deci.delegation_id = de.delegation_id

