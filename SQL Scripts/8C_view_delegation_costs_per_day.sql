CREATE VIEW v_delegation_costs_per_day AS
SELECT 
	delegation_id,
    ROUND(total_cost_pln / (DATEDIFF(end_date, start_date) + 1), 2) AS daily_cost_pln
FROM v_delegation_costs_pln
