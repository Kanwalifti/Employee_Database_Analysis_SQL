CREATE TABLE  departments (
	dept_no VARCHAR(50) PRIMARY KEY,
	dept_name VARCHAR (30)
		
);


CREATE TABLE dept_manager (
	dept_no VARCHAR(50),
	emp_no INT,
	PRIMARY KEY (dept_no,emp_no),
	FOREIGN KEY (dept_no)REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no)REFERENCES employees(emp_no)
	
);

ALTER TABLE employees 
ALTER COLUMN emp_title_id TYPE VARCHAR(30) USING emp_title_id::VARCHAR(30);

ALTER TABLE employees
ADD CONSTRAINT fk_titles
FOREIGN KEY (emp_title_id)
REFERENCES titles (title_id);

SELECT * FROM EMPLOYEES;


CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR(50),
	PRIMARY KEY (dept_no,emp_no),
	FOREIGN KEY (dept_no)REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no)REFERENCES employees(emp_no)
	
);

CREATE TABLE salaries(
	emp_no INT,
	salary INT,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no)REFERENCES employees(emp_no)
);

CREATE TABLE titles(
	title_id VARCHAR(30),
	title VARCHAR(50)	
);
ALTER TABLE titles
ADD CONSTRAINT pk_title_id
PRIMARY KEY (title_id);

SELECT * FROM titles;


