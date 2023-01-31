const inquirer = require('inquirer');
const fs = require('fs/promises');


//Funciton to initialize employee tracker app
const initApp = () => {
    inquirer
        .prompt([
            {
                type: "list",
                message: "What would you like to do?",
                name: "initApp",
                choices: ['View All Employees', 'View All Departments', 'View All Roles', 'Update Employee Role', 'Add Role', 'Add Department', 'Quit']
            }
        ])
        .then(response => {
            switch (response.initApp) {
                case 'View All Employees':
                    viewAllEmployees();
                    break;

                case 'View All Departments':
                    viewDepartments();
                    break;
                    
                case 'View All Roles':
                    viewAllRoles();
                    break;

                case 'Update Employee Role':
                updateEmployeeRole();
                break;

                case 'Add Role':
                    addRole();
                    break;

                case 'Add Department':
                    addDepartment();
                    break;

                case 'Quit':
                    console.log("Application Ending...");
            }
        })
}


// function for Viewing all Employees
const viewAllEmployees = () => {
    inquirer
        .prompt([
            {
                 name: "View All Employees"
            }
        ])
        .then((viewAllResponse) => {
            initApp();
        })
}

// function for updating employee roles

// function for viewing all roles

// function for adding roles

// function for viewing all departments

// function for adding new department


initApp();