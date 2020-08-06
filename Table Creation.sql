----------SQL HW Table Creation-----------

----Dept. tbl
create table "departments" (
	"dept_no" VARCHAR primary key not null,
	"dept_name" VARCHAR not null
	);

----Titles tbl
create table "titles" (
	"emp_no" INT not null,
	"title" VARCHAR not null,
	"from_date" DATE not null,
	"to_date" DATE not null,
	foreign key (emp_no) references employees (emp_no)
	);
	
----Employees tbl	
create table "employees" (
	"emp_no" INT primary key not null,
	"birth_date" DATE not null,
	"first_name" VARCHAR not null,
	"last_name" VARCHAR not null,
	"gender" VARCHAR not null,
	"hire_date" DATE not null
    );

-----Dept. emp. tbl
create table "dept_emp" (
	"emp_no" INT not null,
	"dept_no" VARCHAR not null,
	"from_date" DATE not null,
	"to_date" DATE not null,
	foreign key (dept_no) references departments (dept_no)
    foreign key (emp_no_) references employees (emp_no)
    );

-----Salaries tbl
create table "salaries" (
	"emp_no" INT not null,
	"salary" INT not null,
	"from_date" DATE not null,
	"to_date" DATE not null,
	foreign key (emp_no) references employees (emp_no)   
    );

----Dept. mngr
create table "dept_manager" (
	"dept_no" VARCHAR not null,
	"emp_no" INT not null,
	"from_date" DATE not null,
	"to_date" DATE not null,
	foreign key (dept_no) references departments (dept_no)
	foreign key (emp_no) references employees (emp_no)
	);


