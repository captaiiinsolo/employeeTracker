INSERT INTO department (name)
VALUES  ("Engineering"),
        ("Finance"),
        ("Legal"),
        ("Sales");

INSERT INTO roles (title, salary, department)
VALUES   ("Lawyer", "190000", "1003"),
         ("Accountant", "125000", "1002"),
         ("Legal Team Lead", "250000", "1003"),
         ("Account Manager", "160000", "1004"),
         ("Software Engineer", "120000", "1001");

INSERT INTO employees (first_name, last_name, roles, manager_id)
VALUES ("John", "Doe", "2001", null);