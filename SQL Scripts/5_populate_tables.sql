INSERT departments (department_name, cost_center) VALUES
('Engineering', 'ENG-001'),
('Maintenance', 'MNT-002'),
('Quality', 'QLT-003'),
('Project Management', 'PMO-004'),
('Logistics', 'LOG-005');


INSERT INTO employees 
(first_name, last_name, department_id, position, base_country, hire_date)
VALUES
-- Engineering (1)
('Adam','Kaczmarek',1,'Automation Engineer','PL','2018-02-12'),
('Paweł','Mazur',1,'Automation Engineer','PL','2019-05-10'),
('Krzysztof','Wójcik',1,'Senior Automation Engineer','PL','2016-09-01'),
('Marcin','Dąbrowski',1,'Controls Engineer','DE','2017-11-20'),
('Michał','Piotrowski',1,'PLC Programmer','PL','2020-03-15'),
('Łukasz','Grabowski',1,'Automation Engineer','PL','2021-06-01'),
('Bartosz','Zając',1,'Robotics Engineer','PL','2019-09-09'),
('Tomasz','Król',1,'Controls Engineer','CZ','2018-01-22'),
('Rafał','Wieczorek',1,'PLC Programmer','PL','2022-04-18'),
('Daniel','Jankowski',1,'Junior Automation Engineer','PL','2023-07-01'),

-- Maintenance (2)
('Piotr','Kamiński',2,'Maintenance Technician','PL','2015-08-01'),
('Andrzej','Lewicki',2,'Senior Maintenance Technician','PL','2014-03-12'),
('Sebastian','Sikora',2,'Maintenance Electrician','PL','2019-10-10'),
('Karol','Baran',2,'Maintenance Mechanic','PL','2018-06-06'),
('Damian','Bąk',2,'Maintenance Technician','DE','2017-12-01'),
('Artur','Kurek',2,'Maintenance Technician','PL','2020-09-14'),
('Przemysław','Czarnecki',2,'Maintenance Electrician','PL','2021-01-18'),
('Grzegorz','Pawlak',2,'Maintenance Mechanic','PL','2016-04-04'),

-- Quality (3)
('Tomasz','Kubiak',3,'Quality Engineer','PL','2019-02-01'),
('Natalia','Szymańska',3,'Quality Specialist','PL','2020-05-15'),
('Monika','Wilk',3,'Quality Analyst','PL','2021-08-20'),
('Ewelina','Lis',3,'Quality Engineer','DE','2018-11-11'),
('Agnieszka','Sobczak',3,'Quality Specialist','PL','2017-07-07'),
('Katarzyna','Górska',3,'Quality Analyst','PL','2022-03-03'),

-- Project Management (4)
('Marek','Wiśniewski',4,'Project Manager','DE','2017-09-20'),
('Robert','Kaczor',4,'Senior Project Manager','PL','2015-01-15'),
('Joanna','Dudek',4,'Project Coordinator','PL','2019-06-06'),
('Magdalena','Nowicka',4,'PMO Specialist','PL','2020-10-10'),
('Patryk','Urban',4,'Project Manager','CZ','2018-04-04'),
('Karolina','Michalska',4,'Project Coordinator','PL','2022-02-02'),

-- Logistics (5)
('Kamil','Ostrowski',5,'Logistics Specialist','PL','2019-03-03'),
('Mateusz','Jaworski',5,'Supply Chain Analyst','PL','2020-07-07'),
('Sandra','Piasecka',5,'Logistics Coordinator','PL','2021-09-09'),
('Mariusz','Tomczak',5,'Warehouse Supervisor','PL','2016-12-12'),
('Iwona','Kołodziej',5,'Logistics Specialist','DE','2018-05-05');


INSERT INTO projects
(project_name, client_name, industry, country, start_date, end_date)
VALUES
('Robot Line Upgrade', 'BMW Group', 'Automotive', 'DE', '2023-01-01', '2023-06-30'),
('Battery Assembly Setup', 'Volkswagen', 'Automotive', 'CZ', '2023-03-15', '2023-09-30'),
('Welding Cell Optimization', 'Bosch', 'Industrial', 'PL', '2022-09-01', '2023-02-28'),
('Warehouse Automation', 'Amazon', 'Logistics', 'PL', '2023-06-01', '2023-12-31'),
('Conveyor System Install', 'Škoda', 'Automotive', 'SK', '2023-08-01', '2024-02-28');


INSERT INTO delegations
(project_id, start_date, end_date, destination_country, created_at)
VALUES
(1, '2023-02-01', '2023-02-10', 'DE', '2023-01-15'),
(1, '2023-04-05', '2023-04-20', 'DE', '2023-03-20'),
(2, '2023-05-01', '2023-05-14', 'CZ', '2023-04-10'),
(3, '2022-10-01', '2022-10-07', 'PL', '2022-09-20'),
(2, '2023-06-10', '2023-06-25', 'CZ', '2023-05-20'),
(4, '2023-07-05', '2023-07-15', 'PL', '2023-06-15'),
(5, '2023-09-01', '2023-09-10', 'SK', '2023-08-10'),
(5, '2023-11-12', '2023-11-20', 'SK', '2023-10-25'),
(1, '2023-06-01', '2023-06-08', 'DE', '2023-05-15'),
(1, '2023-03-02', '2023-03-08', 'DE', '2023-01-15'),
(2, '2023-08-02', '2023-08-08', 'DE', '2023-09-15'),
(2, '2023-10-02', '2023-10-08', 'DE', '2023-09-15');

INSERT INTO delegation_employees
(delegation_id, employee_id, role_in_delegation)
VALUES
(1, 1, 'Lead Engineer'),
(1, 2, 'Support Engineer'),
(2, 1, 'Engineer'),
(2, 4, 'Project Manager'),
(3, 3, 'Technician'),
(3, 5, 'Quality Engineer'),
(4, 2, 'Engineer'),
(5, 6, 'Automation Engineer'),
(5, 7, 'Robotics Engineer'),
(6, 8, 'Controls Engineer'),
(6, 9, 'PLC Programmer'),
(7, 10, 'Junior Engineer'),
(7, 3, 'Senior Engineer'),
(8, 1, 'Lead Engineer'),
(8, 5, 'PLC Programmer'),
(9, 2, 'Support Engineer'),
(9, 4, 'Controls Engineer'),
(10, 10, 'Controls Engineer'),
(11, 10, 'Controls Engineer'),
(12, 10, 'Controls Engineer');

INSERT INTO exchange_rates (rate_date, currency, rate_to_pln) VALUES
('2023-02-01', 'EUR', 4.70),
('2023-02-05', 'EUR', 4.65),
('2023-03-02', 'EUR', 4.65),
('2023-04-05', 'EUR', 4.60),
('2023-05-01', 'EUR', 4.55),
('2023-05-05', 'EUR', 4.65),
('2022-10-01', 'PLN', 1.00),
('2023-06-01', 'EUR', 4.52),
('2023-06-05', 'EUR', 4.54),
('2023-06-10', 'EUR', 4.50),
('2023-07-05', 'PLN', 1.00),
('2023-07-10', 'PLN', 1.00),
('2023-08-02', 'EUR', 4.65),
('2023-09-01', 'EUR', 4.58),
('2023-10-02', 'EUR', 4.65),
('2023-11-12', 'EUR', 4.45);



INSERT INTO costs
(delegation_id, cost_type, amount, currency, cost_date, description)
VALUES
(1, 'hotel', 1200, 'EUR', '2023-02-01', 'Hotel Berlin'),
(1, 'transport', 300, 'EUR', '2023-02-01', 'Flight'),
(1, 'diet', 400, 'EUR', '2023-02-05', 'Daily allowance'),

(2, 'hotel', 2200, 'EUR', '2023-04-05', 'Hotel Munich'),
(2, 'transport', 350, 'EUR', '2023-04-05', 'Flight'),

(3, 'hotel', 900, 'EUR', '2023-05-01', 'Hotel Prague'),
(3, 'diet', 300, 'EUR', '2023-05-05', 'Allowance'),

(5, 'hotel', 1500, 'EUR', '2023-06-10', 'Hotel Prague'),
(5, 'transport', 100, 'EUR', '2023-06-10', 'Fuel'),
-- Koszty Delegacja 6 (PL)
(6, 'hotel', 3000, 'PLN', '2023-07-05', 'Hotel Warszawa'),
(6, 'diet', 500, 'PLN', '2023-07-10', 'Diety krajowe'),
-- Koszty Delegacja 7 (SK)
(7, 'hotel', 800, 'EUR', '2023-09-01', 'Hotel Bratislava'),
(7, 'transport', 250, 'EUR', '2023-09-01', 'Car Rental'),
-- Koszty Delegacja 8 (SK)
(8, 'hotel', 1100, 'EUR', '2023-11-12', 'Hotel Nitra'),
-- Koszty Delegacja 9 (DE)
(9, 'diet', 600, 'EUR', '2023-06-05', 'Standard Allowance DE'),

(10, 'diet', 600, 'EUR', '2023-03-02', 'Standard Allowance DE'),
(11, 'diet', 800, 'EUR', '2023-08-02', 'Standard Allowance DE'),
(12, 'diet', 400, 'EUR', '2023-10-02', 'Standard Allowance DE');

DELIMITER //
CREATE PROCEDURE PopulateDateDim(start_date DATE, end_date DATE)
BEGIN
    DECLARE current_dt DATE;
    SET current_dt = start_date;
    WHILE current_dt <= end_date DO
        INSERT INTO date_dim VALUES (
            current_dt,
            YEAR(current_dt),
            MONTH(current_dt),
            MONTHNAME(current_dt),
            QUARTER(current_dt),
            DAYOFWEEK(current_dt),
            DAYNAME(current_dt),
            IF(WEEKDAY(current_dt) IN (5, 6), 1, 0)
        );
        SET current_dt = ADDDATE(current_dt, INTERVAL 1 DAY);
    END WHILE;
END //
DELIMITER ;

-- Wywołanie (wygeneruj daty od 2020 do 2030)
CALL PopulateDateDim('2020-01-01', '2030-12-31');
