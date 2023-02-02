SELECT roles.id, roles.title AS Title, roles.salary AS Salary, roles.department AS Department_ID, department.name AS Department
FROM roles
INNER JOIN department
ON roles.department = department.id;