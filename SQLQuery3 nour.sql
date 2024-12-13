CREATE VIEW vw_employee_details AS
SELECT 
    e.fname AS first_name,
    e.lname AS last_name,
    d.dname AS department_name
FROM 
    employees e
JOIN 
    departments d
ON 
    e.department_id = d.department_id;
	IF OBJECT_ID('vw_work_hrs', 'V') IS NOT NULL
    DROP VIEW vw_work_hrs;
GO

CREATE VIEW vw_work_hrs AS
SELECT 
    e.fname AS first_name,
    e.lname AS last_name,
    p.pname AS project_name,
    w.hours AS hours
FROM 
    employees e
INNER JOIN 
    work_hours w
ON 
    e.employee_id = w.employee_id
INNER JOIN 
    projects p
ON 
    w.project_id = p.project_id
WHERE 
    e.department_id = 5;
CREATE VIEW vw_high_status_suppliers AS
SELECT 
    *
FROM 
    suppliers
WHERE 
    status > 15
WITH CHECK OPTION;
