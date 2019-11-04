--INSTRUCTIONS: DATA ENGINEERING

--1.a. Use the information you have to create a table schema for each of the six CSV files. 
--1.b. Remember to specify data types, primary keys, foreign keys, and other constraints.

--2. Import each CSV file into the corresponding SQL table.

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    gender VARCHAR(1),
    hire_date VARCHAR);
    
CREATE TABLE titles (
    emp_no INT REFERENCES employees (emp_no),
    title VARCHAR,
    from_date DATE,
    to_date DATE);
    
CREATE TABLE salaries (
    emp_no INT REFERENCES employees (emp_no),
    salary INT,
    from_date DATE,
    to_date DATE);
    
CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR);
    
CREATE TABLE dept_emp (
    emp_no INT REFERENCES employees (emp_no),
    dept_no VARCHAR REFERENCES departments (dept_no),
    from_date DATE,
    to_date DATE);
    
CREATE TABLE dept_manager (
    dept_no VARCHAR REFERENCES departments (dept_no),
    emp_no INT REFERENCES employees (emp_no),
    from_date DATE,
    to_date DATE);