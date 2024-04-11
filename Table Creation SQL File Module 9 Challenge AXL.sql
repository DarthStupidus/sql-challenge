CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title VARCHAR(100),
    birth_date DATE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL
);

CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);

CREATE TABLE salaries (
    emp_no INT,
    salary INT NOT NULL,
    CONSTRAINT fk_emp_salaries FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (emp_no, salary)
);

CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR(10),
    CONSTRAINT fk_emp_dept_emp FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    CONSTRAINT fk_dept_dept_emp FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(10),
    emp_no INT,
    CONSTRAINT fk_dept_dept_manager FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    CONSTRAINT fk_manager_dept_manager FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);

ALTER DATABASE "AXL Module 9 Challenge"  SET datestyle TO "ISO, MDY";