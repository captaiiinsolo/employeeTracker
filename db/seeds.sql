INSERT INTO department (name)
VALUES  ("Engineering"),
        ("Finance"),
        ("Legal"),
        ("Sales");

INSERT INTO roles (title, salary, department)
VALUES   ("Sales Lead", "190000", "1004"),
         ("Accountant", "125000", "1002"),
         ("Legal Team Lead", "250000", "1003"),
         ("Account Manager", "160000", "1004"),
         ("Software Engineer", "120000", "1001"),
         ("Salesperson", "80000", "1004"),
         ("Lead Engineer", "150000", "1001"),
         ("Lawyer", "190000", "1003");

INSERT INTO employees (first_name, last_name, roles, manager_id)
VALUES ("John", "Doe", "2001", null),
        ("Mike", "Chan", "2006", 3001),
        ("Ashley", "Rodriguez", "2007", null),
        ("Kevin", "Tupik", "2005", 3003),
        ("Kunal", "Singh", "2004", null),
        ("Malia", "Brown", "2002", 3005),
        ("Sarah", "Lourd", "2003", null),
        ("Tom", "Allen", "2008", 3007),
        ("Sam", "Kash", "2001", 3003);