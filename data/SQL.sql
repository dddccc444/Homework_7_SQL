Create Table departments (
  dept_no character varying(30) NOT NULL,
  dept_name character varying(30) NOT NULL
);

Create Table dept_emp (
  emp_no integer NOT NULL,
  dept_no character varying(30) NOT NULL,
  from_date timestamp without time zone DEFAULT now() NOT NULL,
  to_date timestamp without time zone DEFAULT now() NOT NULL
);

Create Table dept_manager (
  dept_no character varying(30) NOT NULL,
  emp_no integer NOT NULL,
  from_date timestamp without time zone DEFAULT now() NOT NULL,
  to_date timestamp without time zone DEFAULT now() NOT NULL
);

Create Table employees (
  emp_no integer NOT NULL,
  birth_date timestamp without time zone DEFAULT now() NOT NULL,
  first_name character varying(30) NOT NULL,
  last_name character varying(30) NOT NULL,
  gender character varying(30) NOT NULL,
  hire_date timestamp without time zone DEFAULT now() NOT NULL
);

Create Table salaries (
  emp_no integer NOT NULL,
  salary integer NOT NULL,
  from_date timestamp without time zone DEFAULT now() NOT NULL,
  to_date timestamp without time zone DEFAULT now() NOT NULL
);

Create Table titles (
  emp_no integer NOT NULL,
  title character varying(30) NOT NULL,
  from_date timestamp without time zone DEFAULT now() NOT NULL,
  to_date timestamp without time zone DEFAULT now() NOT NULL
);
