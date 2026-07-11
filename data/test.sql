CREATE Database Company;
USE Company;

CREATE TABLE Department (
  deptID INT,
  deptName VARCHAR(30),
  deptLocation VARCHAR(255),
  PRIMARY KEY (deptID)
);

CREATE TABLE Employee (
  empID INT,
  empName VARCHAR(255),
  jobTitle VARCHAR(100),
  homeCity VARCHAR(255),
  managerID INT,
  hireDate DATE,
  annualSalary REAL,
  commission REAL,
  deptID INT,
  PRIMARY KEY (empID),
  FOREIGN KEY (deptID) REFERENCES Department(deptID) ON DELETE SET NULL
);


-- SQL Commands to insert data into the Department table
INSERT INTO Department (deptID, deptName, deptLocation) VALUES
(10, 'Executive', 'New York, NY'),
(20, 'Sales', 'Chicago, IL'),
(30, 'IT', 'Austin, TX'),
(40, 'Marketing', 'San Francisco, CA'),
(50, 'Finance', 'New York, NY'),
(60, 'Human Resources', 'Chicago, IL');



-- SQL Commands to insert data into the Employee table

-- Corporate Department (deptID 10)
INSERT INTO Employee (empID, empName, jobTitle, homeCity, managerID, hireDate, annualSalary, commission, deptID) VALUES
(7839, 'James King', 'CEO', 'New York, NY', NULL, '2010-11-17', 350000.00, NULL, 10);

INSERT INTO Employee (empID, empName, jobTitle, homeCity, managerID, hireDate, annualSalary, commission, deptID) VALUES
(7566, 'Michael Jones', 'VP of Sales', 'Chicago, IL', 7839, '2012-04-02', 180000.00, NULL, 20),
(7499, 'Betty Allen', 'Sales Manager', 'Chicago, IL', 7566, '2015-02-20', 120000.00, 30000.00, 20),
(7521, 'Wendy Ward', 'Sales Representative', 'Milwaukee, WI', 7499, '2015-02-22', 75000.00, 5000.00, 20),
(7655, 'Martin Truman', 'Sales Representative', 'Chicago, IL', 7499, '2016-09-28', 78000.00, 14000.00, 20),
(7844, 'Gary Turner', 'Sales Representative', 'Indianapolis, IN', 7499, '2017-09-08', 72000.00, 0.00, 20),
(7900, 'James Anderson', 'Sales Representative', 'Detroit, MI', 7499, '2018-12-03', 70000.00, 8000.00, 20),
(8001, 'Olivia Harris', 'Sales Associate', 'Chicago, IL', 7499, '2022-01-15', 55000.00, 2500.00, 20),
(8002, 'Liam Martinez', 'Sales Associate', 'Madison, WI', 7499, '2022-03-10', 54000.00, 3000.00, 20),
(8003, 'Ava Robinson', 'Sales Associate', 'Grand Rapids, MI', 7499, '2022-05-20', 56000.00, 2000.00, 20),
(8004, 'Noah Clark', 'Sales Associate', 'Fort Wayne, IN', 7499, '2022-07-01', 53000.00, 4500.00, 20),
(8005, 'Isabella Rodriguez', 'Sales Associate', 'Chicago, IL', 7499, '2023-02-18', 58000.00, 5000.00, 20),
(8006, 'Sophia Lewis', 'Sales Associate', 'Naperville, IL', 7499, '2023-04-12', 57000.00, 3500.00, 20),
(8007, 'Jackson Walker', 'Sales Associate', 'St. Louis, MO', 7499, '2023-06-25', 55000.00, 2800.00, 20),
(8008, 'Aiden Hall', 'Sales Associate', 'Peoria, IL', 7499, '2023-08-09', 54500.00, 3200.00, 20),
(8009, 'Mia Young', 'Sales Associate', 'Rockford, IL', 7499, '2023-10-14', 56500.00, 4100.00, 20),
(8010, 'Lucas King', 'Sales Associate', 'Springfield, IL', 7499, '2024-01-22', 52000.00, 1900.00, 20),
(8011, 'Harper Wright', 'Sales Associate', 'Green Bay, WI', 7499, '2024-03-30', 59000.00, 5500.00, 20),
(8012, 'Evelyn Hill', 'Sales Associate', 'Ann Arbor, MI', 7499, '2024-05-18', 60000.00, 6000.00, 20),
(8013, 'Logan Scott', 'Sales Associate', 'Chicago, IL', 7499, '2024-07-07', 58500.00, 4800.00, 20),
(8014, 'Abigail Green', 'Sales Associate', 'Cincinnati, OH', 7499, '2024-09-01', 57500.00, 4300.00, 20);


INSERT INTO Employee (empID, empName, jobTitle, homeCity, managerID, hireDate, annualSalary, commission, deptID) VALUES
(7654, 'Sarah Martin', 'VP of IT', 'Austin, TX', 7839, '2013-05-01', 175000.00, NULL, 30),
(7789, 'Bob Miller', 'IT Manager', 'Round Rock, TX', 7654, '2016-06-09', 130000.00, NULL, 30),
(7903, 'Chris Adams', 'Lead Developer', 'Austin, TX', 7789, '2017-12-03', 115000.00, NULL, 30),
(8101, 'Emma Baker', 'Senior Software Engineer', 'Austin, TX', 7903, '2018-08-19', 110000.00, NULL, 30),
(8102, 'Benjamin Carter', 'Senior Software Engineer', 'San Antonio, TX', 7903, '2018-09-01', 108000.00, NULL, 30),
(8103, 'Grace Davis', 'Software Engineer', 'Austin, TX', 7903, '2021-06-15', 90000.00, NULL, 30),
(8104, 'Henry Evans', 'Software Engineer', 'Pflugerville, TX', 7903, '2022-02-20', 88000.00, NULL, 30),
(8105, 'Chloe Foster', 'Software Engineer', 'Austin, TX', 7903, '2022-07-11', 85000.00, NULL, 30),
(8106, 'Jack Garcia', 'Software Engineer', 'Dallas, TX', 7903, '2023-01-25', 82000.00, NULL, 30),
(8107, 'Lily Howard', 'Software Engineer', 'Austin, TX', 7903, '2023-06-05', 84000.00, NULL, 30),
(8108, 'Owen Jenkins', 'UI/UX Designer', 'Austin, TX', 7789, '2020-03-12', 95000.00, NULL, 30),
(8109, 'Zoe Kelly', 'UI/UX Designer', 'Houston, TX', 7789, '2021-09-08', 92000.00, NULL, 30),
(8110, 'Luke Long', 'System Administrator', 'Austin, TX', 7789, '2019-11-18', 98000.00, NULL, 30),
(8111, 'Nora Mitchell', 'System Administrator', 'Austin, TX', 7789, '2022-04-29', 96000.00, NULL, 30),
(8112, 'Penelope Nelson', 'Database Administrator', 'Cedar Park, TX', 7789, '2017-03-14', 112000.00, NULL, 30),
(8113, 'Riley Ortiz', 'Database Administrator', 'Austin, TX', 7789, '2020-10-22', 105000.00, NULL, 30),
(8114, 'Samuel Parker', 'DevOps Engineer', 'Austin, TX', 7789, '2019-07-30', 118000.00, NULL, 30),
(8115, 'Stella Perez', 'DevOps Engineer', 'Leander, TX', 7789, '2021-11-05', 115000.00, NULL, 30),
(8116, 'Wyatt Reed', 'IT Support Specialist', 'Austin, TX', 7789, '2022-08-16', 65000.00, NULL, 30),
(8117, 'Victoria Roberts', 'IT Support Specialist', 'Georgetown, TX', 7789, '2023-03-21', 63000.00, NULL, 30),
(8118, 'Caleb Rogers', 'IT Support Specialist', 'San Marcos, TX', 7789, '2024-02-09', 61000.00, NULL, 30),
(8119, 'Addison Price', 'QA Tester', 'Austin, TX', 7903, '2021-05-17', 75000.00, NULL, 30),
(8120, 'Julian Rivera', 'QA Tester', 'Austin, TX', 7903, '2022-10-03', 72000.00, NULL, 30),
(8121, 'Hazel Ross', 'QA Tester', 'Austin, TX', 7903, '2023-09-11', 70000.00, NULL, 30);

INSERT INTO Employee (empID, empName, jobTitle, homeCity, managerID, hireDate, annualSalary, commission, deptID) VALUES
(7782, 'Emily Clark', 'Director of Marketing', 'San Francisco, CA', 7839, '2014-06-09', 160000.00, NULL, 40),
(8201, 'Daniel Evans', 'Marketing Manager', 'Oakland, CA', 7782, '2018-01-10', 110000.00, NULL, 40),
(8202, 'Madison Flores', 'Content Strategist', 'San Francisco, CA', 8201, '2019-04-22', 85000.00, NULL, 40),
(8203, 'Elijah Gomez', 'Content Strategist', 'Berkeley, CA', 8201, '2021-08-30', 82000.00, NULL, 40),
(8204, 'Avery Green', 'SEO Specialist', 'San Francisco, CA', 8201, '2020-02-14', 90000.00, NULL, 40),
(8205, 'Scarlett Hayes', 'SEO Specialist', 'San Jose, CA', 8201, '2022-11-21', 88000.00, NULL, 40),
(8206, 'David Hughes', 'Social Media Manager', 'San Francisco, CA', 8201, '2019-09-05', 87000.00, NULL, 40),
(8207, 'Luna Johnson', 'Social Media Manager', 'Palo Alto, CA', 8201, '2022-06-13', 84000.00, NULL, 40),
(8208, 'Carter Kim', 'Graphic Designer', 'San Francisco, CA', 8201, '2021-03-08', 78000.00, NULL, 40),
(8209, 'Aria Lee', 'Graphic Designer', 'Daly City, CA', 8201, '2023-05-29', 75000.00, NULL, 40),
(8210, 'Grayson Lewis', 'Marketing Analyst', 'San Francisco, CA', 8201, '2022-09-19', 92000.00, NULL, 40),
(8211, 'Layla Moore', 'Marketing Analyst', 'Fremont, CA', 8201, '2024-01-08', 89000.00, NULL, 40),
(8212, 'Leo Nguyen', 'Marketing Coordinator', 'San Francisco, CA', 8201, '2023-07-17', 60000.00, NULL, 40),
(8213, 'Mila Perez', 'Marketing Coordinator', 'Hayward, CA', 8201, '2024-04-22', 58000.00, NULL, 40),
(8214, 'Mateo Phillips', 'Email Marketing Specialist', 'San Francisco, CA', 8201, '2021-12-06', 80000.00, NULL, 40),
(8215, 'Nova Ramirez', 'Email Marketing Specialist', 'Santa Clara, CA', 8201, '2023-10-02', 77000.00, NULL, 40);


INSERT INTO Employee (empID, empName, jobTitle, homeCity, managerID, hireDate, annualSalary, commission, deptID) VALUES
(7788, 'David Scott', 'CFO', 'New York, NY', 7839, '2011-04-19', 220000.00, NULL, 50),
(7905, 'Anna Green', 'Finance Manager', 'Brooklyn, NY', 7788, '2017-01-09', 140000.00, NULL, 50),
(8301, 'William Baker', 'Senior Accountant', 'New York, NY', 7905, '2018-03-12', 105000.00, NULL, 50),
(8302, 'Charlotte Bell', 'Senior Accountant', 'Jersey City, NJ', 7905, '2019-06-24', 102000.00, NULL, 50),
(8303, 'James Campbell', 'Accountant', 'New York, NY', 7905, '2021-10-18', 80000.00, NULL, 50),
(8304, 'Amelia Coleman', 'Accountant', 'Queens, NY', 7905, '2022-01-31', 78000.00, NULL, 50),
(8305, 'Joseph Cook', 'Accountant', 'Stamford, CT', 7905, '2023-04-17', 76000.00, NULL, 50),
(8306, 'Sofia Cooper', 'Financial Analyst', 'New York, NY', 7905, '2020-07-13', 95000.00, NULL, 50),
(8307, 'Alexander Cox', 'Financial Analyst', 'Bronx, NY', 7905, '2021-09-07', 93000.00, NULL, 50),
(8308, 'Evelyn Diaz', 'Financial Analyst', 'Newark, NJ', 7905, '2023-08-21', 90000.00, NULL, 50),
(8309, 'Michael Edwards', 'Financial Analyst', 'New York, NY', 7905, '2024-06-03', 88000.00, NULL, 50),
(8310, 'Abigail Fisher', 'Payroll Specialist', 'Brooklyn, NY', 7905, '2022-05-02', 70000.00, NULL, 50),
(8311, 'Daniel Gibson', 'Payroll Specialist', 'New York, NY', 7905, '2023-11-27', 68000.00, NULL, 50),
(8312, 'Ella Gray', 'Accounts Payable Clerk', 'New York, NY', 7905, '2023-02-13', 55000.00, NULL, 50),
(8313, 'Matthew Harrison', 'Accounts Receivable Clerk', 'Yonkers, NY', 7905, '2024-08-12', 54000.00, NULL, 50);


INSERT INTO Employee (empID, empName, jobTitle, homeCity, managerID, hireDate, annualSalary, commission, deptID) VALUES
(7902, 'Laura Ford', 'HR Manager', 'Chicago, IL', 7839, '2016-12-03', 115000.00, NULL, 60),
(8401, 'Jacob James', 'Senior Recruiter', 'Evanston, IL', 7902, '2018-07-23', 90000.00, NULL, 60),
(8402, 'Mia Jenkins', 'Recruiter', 'Chicago, IL', 7902, '2021-02-08', 75000.00, NULL, 60),
(8403, 'Ethan Johnson', 'Recruiter', 'Aurora, IL', 7902, '2022-08-01', 72000.00, NULL, 60),
(8404, 'Isabella Jones', 'HR Generalist', 'Chicago, IL', 7902, '2019-10-14', 80000.00, NULL, 60),
(8405, 'Mason Miller', 'HR Generalist', 'Naperville, IL', 7902, '2022-04-04', 77000.00, NULL, 60),
(8406, 'Olivia Moore', 'HR Coordinator', 'Chicago, IL', 7902, '2023-03-06', 60000.00, NULL, 60),
(8407, 'Noah Murphy', 'HR Coordinator', 'Joliet, IL', 7902, '2024-05-13', 58000.00, NULL, 60),
(8408, 'Sophia Nelson', 'Benefits Specialist', 'Chicago, IL', 7902, '2020-05-11', 82000.00, NULL, 60),
(8409, 'Liam O_Connell', 'Training Coordinator', 'Schaumburg, IL', 7902, '2021-11-29', 70000.00, NULL, 60),
(8410, 'Ava Peterson', 'HR Assistant', 'Chicago, IL', 7902, '2024-09-09', 50000.00, NULL, 60);