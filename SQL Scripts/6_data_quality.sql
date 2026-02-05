

-- Pracownik przypisany przed zatrudnieniem
SELECT
de.delegation_id,
e.employee_id,
e.hire_date,
d.start_date AS delegation_start
FROM delegation_employees de
JOIN employees e ON de.employee_id = e.employee_id
JOIN delegations d ON d.delegation_id = de.delegation_id
WHERE e.hire_date > d.start_date;

-- Delegacja poza zakresem projektu
SELECT
d.delegation_id,
p.project_name,
d.start_date AS delegation_start,
p.start_date AS project_start,
p.end_date AS project_end
FROM delegations d
JOIN projects p	ON p.project_id = d.project_id
WHERE d.start_date < p.start_date
OR d.start_date > p.end_date;

-- Delegacje bez kosztów
SELECT
d.delegation_id
FROM delegations d
JOIN costs c ON c.delegation_id = d.delegation_id
WHERE c.cost_id IS NULL;

-- Koszty bez kursu walut
SELECT
c.cost_id,
c.currency,
c.cost_date
FROM costs c
JOIN exchange_rates er
	ON er.currency = c.currency
    AND er. rate_date = c.cost_date
WHERE c.currency <> 'PLN'
	AND er.rate_to_pln IS NULL;
    
-- Rola w delegacji ≠ stanowisko
SELECT
e.employee_id,
e.position,
de.delegation_id,
de.role_in_delegation
FROM employees e
JOIN delegation_employees de
	ON de.employee_id = e.employee_id
WHERE e.position <> de.role_in_delegation;

-- Podejrzanie krótka / długa delegacja
SELECT
delegation_id,
DATEDIFF(end_date, start_date) + 1 AS duration_days
FROM delegations
WHERE
	DATEDIFF(end_date, start_date) + 1 < 2
    OR DATEDIFF(end_date, start_date) + 1 > 30
	