DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

Create Table departments (
  dept_no character varying(30) NOT NULL,
  dept_name character varying(30) NOT NULL
);

Create Table dept_emp (
  emp_no INT,
  dept_no VARCHAR(30) NOT NULL,
  from_date timestamp without time zone DEFAULT now() NOT NULL,
  to_date timestamp without time zone DEFAULT now() NOT NULL
);

Create Table dept_manager (
  dept_no character varying(30) NOT NULL,
  emp_no INT NOT NULL,
  from_date timestamp without time zone DEFAULT now() NOT NULL,
  to_date timestamp without time zone DEFAULT now() NOT NULL
);

Create Table employees (
  emp_no INT NOT NULL,
  birth_date timestamp without time zone DEFAULT now() NOT NULL,
  first_name character varying(30) NOT NULL,
  last_name character varying(30) NOT NULL,
  gender character varying(30) NOT NULL,
  hire_date timestamp without time zone DEFAULT now() NOT NULL
);

Create Table salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date timestamp without time zone DEFAULT now() NOT NULL,
  to_date timestamp without time zone DEFAULT now() NOT NULL
);

Create Table titles (
  emp_no INT NOT NULL,
  title character varying(30) NOT NULL,
  from_date timestamp without time zone DEFAULT now() NOT NULL,
  to_date timestamp without time zone DEFAULT now() NOT NULL
);

