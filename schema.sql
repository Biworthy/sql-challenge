-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

-- drop table "Dept_Emp";
-- drop table "Dept_Mgr";

-- drop table "Salaries";
-- drop table "Employees";

-- drop table "Department";
-- drop table "Titles";

CREATE TABLE Department (
    Dept_No varchar   NOT NULL,
    Dept_Name varchar   NOT NULL,
    CONSTRAINT pk_Department PRIMARY KEY (
        Dept_No
     )
);

CREATE TABLE Titles (
    Title_id varchar   NOT NULL,
    Title varchar   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        Title_id
     )
);

-- Table documentation comment 1 (try the PDF/RTF export)
-- Table documentation comment 2
CREATE TABLE Employees (
    Emp_No int   NOT NULL,
    Emp_title_id varchar   NOT NULL,
    Birth_date date   NOT NULL,
    First_name varchar   NOT NULL,
    Last_name varchar   NOT NULL,
    Sex varchar   NOT NULL,
    Hire_date date   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        Emp_No
     )
);

CREATE TABLE Dept_Emp (
    Emp_No int   NOT NULL,
    Dept_No varchar   NOT NULL
);

CREATE TABLE Dept_Mgr (
    Dept_No varchar   NOT NULL,
	Emp_No int   NOT NULL
);

CREATE TABLE Salaries (
    Emp_No int   NOT NULL,
    Salary int   NOT NULL
);



ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Department (Dept_No);

ALTER TABLE Dept_Mgr ADD CONSTRAINT fk_Dept_Mgr_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Dept_Mgr ADD CONSTRAINT fk_Dept_Mgr_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Department (Dept_No);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_Emp_title_id FOREIGN KEY(Emp_title_id)
REFERENCES Titles (Title_id);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

