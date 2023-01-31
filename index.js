const inquirer = require('inquirer');
const fs = require('fs/promises');

let departments = [];


//Funciton to initialize employee tracker app
const initApp = () => {
    inquirer
        .prompt([
            {
                type: "list",
                message: "What would you like to do?",
                name: "initApp",
                choices: ['View All Employees', 'View All Departments', 'View All Roles', 'Add Role', 'Update Employee Role', 'Add Department', 'Quit']
            }
        ])
        .then(response => {
            switch (response.initApp) {
                case 'View All Employees':
                    viewAllEmployees();
                    break;

                case 'View All Departments':
                    viewAllDepartments();
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

                case 'Add New Department':
                    addNewDepartment();
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
                 name: "viewAllEmployees"
            }
        ])
        .then((viewAllemployeesRes) => {
            initApp();
        })
}

// function for viewing all departments
const viewAllDepartments = () => {
    inquirer
        .prompt([
            {
                name: "viewAllDepartments"
            }
        ])
        .then((viewAllDepartmentsRes) => {
            initApp();
        })
}

// function for viewing all roles
const viewAllRoles = () => {
    inquirer
        .prompt([
            {
                name: "viewAllRoles"
            }
        ])
        .then((viewAllRolesres) => {
            initApp();
        })
}

// function for adding roles


// function for updating employee roles

// function for adding new department
const addNewDepartment = () => {
    inquirer
        .prompt([
            {
                type: "input",
                message: "What is the name of the department?",
                name: "addNewDepartment"
            }
        ])
        .then((addNewDepRes) => {

            initApp();
        })
}


initApp();