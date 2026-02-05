CREATE VIEW v_delegation_costs_pln AS
SELECT 
	d.delegation_id,
	d.start_date,
	d.end_date,
	SUM(c.amount * er.rate_to_pln) AS total_cost_pln
FROM delegations d
JOIN costs c
	ON c.delegation_id = d.delegation_id
JOIN exchange_rates er 
	ON er.currency = c.currency	
	AND er.rate_date = c.cost_date
GROUP BY 
	d.delegation_id,
    d.start_date,
    d.end_date;


