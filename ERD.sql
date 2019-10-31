CREATE TABLE "Departments" (
  "dept_no" varchar(20) PRIMARY KEY,
  "dept_name" varchar(20)
);

CREATE TABLE "Dept_emp" (
  "emp_no" varchar(20),
  "dept_no" varchar(20),
  "from_date" varchar(20),
  "to_date" varchar(20)
);

CREATE TABLE "Employees" (
  "emp_no" varchar(20) PRIMARY KEY,
  "birth_date" varchar(20),
  "first_name" varchar(20),
  "last_name" varchar(20),
  "gender" varchar(20),
  "hire_date" varchar(20)
);

CREATE TABLE "Salaries" (
  "emp_no" varchar(20) PRIMARY KEY,
  "salary" float,
  "from_date" varchar(20),
  "to_date" varchar(20)
);

CREATE TABLE "Titles" (
  "emp_no" varchar(20),
  "title" varchar(30),
  "from_date" varchar(20),
  "to_date" varchar(20)
);

ALTER TABLE "Departments" ADD FOREIGN KEY ("dept_no") REFERENCES "Dept_emp" ("dept_no");

ALTER TABLE "Employees" ADD FOREIGN KEY ("emp_no") REFERENCES "Salaries" ("emp_no");

ALTER TABLE "Dept_emp" ADD FOREIGN KEY ("emp_no") REFERENCES "Employees" ("emp_no");

ALTER TABLE "Employees" ADD FOREIGN KEY ("emp_no") REFERENCES "Titles" ("emp_no");
