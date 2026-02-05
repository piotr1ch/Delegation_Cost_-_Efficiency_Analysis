CREATE TABLE departments (
	department_id INT AUTO_INCREMENT PRIMARY KEY,
	department_name VARCHAR(100) NOT NULL,
	cost_center VARCHAR(50)NOT NULL
);

CREATE TABLE employees(
	employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT, 
    position VARCHAR(100),
    base_country VARCHAR(50),
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE projects(
	project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(150),
    client_name VARCHAR(100),
    industry VARCHAR(150),
    country VARCHAR(50),
    start_date DATE,
    end_date DATE
);

CREATE TABLE delegations(
	delegation_id INT AUTO_INCREMENT PRIMARY KEY,
    project_id INT,
    start_date DATE,
    end_date DATE,
    destination_country VARCHAR(50),
    created_at DATE,
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

CREATE TABLE delegation_employees(
	delegation_id INT,
    employee_id INT,
    role_in_delegation VARCHAR(50),
    PRIMARY KEY (delegation_id, employee_id),
    FOREIGN KEY (delegation_id) REFERENCES delegations(delegation_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)    
);

CREATE TABLE costs(
	cost_id INT AUTO_INCREMENT PRIMARY KEY,
    delegation_id INT,
    cost_type VARCHAR(50),
    amount DECIMAL(10,2),
    currency VARCHAR(10),
    cost_date DATE,
    description VARCHAR(250),
    FOREIGN KEY (delegation_id) REFERENCES delegations(delegation_id)
);

CREATE TABLE exchange_rates(
	rate_date DATE,
    currency VARCHAR(10),
    rate_to_pln DECIMAL(10,4),
    PRIMARY KEY (rate_date, currency)
);

CREATE TABLE date_dim (
    date DATE PRIMARY KEY,
    year INT,
    month INT,
    month_name VARCHAR(20),
    quarter INT,
    day_of_week INT,
    day_name VARCHAR(20),
    is_weekend BOOLEAN
);


