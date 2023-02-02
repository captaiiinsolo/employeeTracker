SELECT roles.id AS Roles_ID, roles.title AS Title, roles.salary AS Salary, roles.department AS Department_ID, department.name AS Department
FROM roles
INNER JOIN department
ON roles.department = department.id;

SELECT employees.id, employees.first_name, employees.last_name, employees.roles, employees.manager_id, roles.title, roles.salary
FROM employees
INNER JOIN roles
ON employees.roles = roles.id;