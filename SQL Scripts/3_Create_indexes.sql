CREATE INDEX idx_costs_delegation ON costs(delegation_id);
CREATE INDEX idx_delegations_dates ON delegations(start_date, end_date);
CREATE INDEX idx_costs_date ON costs(cost_date)