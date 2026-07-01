SELECT 
    e.first_name + ' ' + e.last_name AS [Employee],
    d_curr.department_name AS [Current_Dept],
    d_prev.department_name AS [Old_Dept]
FROM employees e
JOIN departments d_curr ON e.department_id = d_curr.department_id
JOIN job_history jh      ON e.employee_id = jh.employee_id
JOIN departments d_prev ON jh.department_id = d_prev.department_id
WHERE d_curr.department_id <> d_prev.department_id;
