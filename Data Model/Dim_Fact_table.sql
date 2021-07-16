CREATE DATABASE bi_marathon;
CREATE TABLE temp_table_1
(
month_end_date varchar(10),
dept varchar(225),
reg_temp varchar(10),
age_at_departure varchar(20),
ethnic_group varchar(50),
gender varchar(10),
years_in_metro varchar(25),
reason varchar(225),
leave_type varchar(225),
emp_left int,
dept_emp_left int,
reg_temp_dept_total_emp int,
dept_total_emp int,
metro_emp_left int,
reg_temp_metro_emp int,
metro_total_emp int,
month_m varchar(10),
year_y varchar(10)
);

CREATE TABLE dim_dept_emp
(
dept_id int not null auto_increment,
dept varchar(225),
reg_temp varchar(10),
departure_agegroup varchar(225),
ethnic_group varchar(225),
gender varchar(10),
PRIMARY KEY(dept_id)
);

CREATE TABLE dim_leave_category
(
leave_id int not null auto_increment,
leave_name varchar(225),
PRIMARY KEY (leave_id)
);

CREATE TABLE dim_reason
(
reason_id int not null auto_increment,
reason_name varchar(225),
leave_id int,
PRIMARY KEY (reason_id),
FOREIGN KEY (leave_id) REFERENCES dim_leave_category(leave_id) ON DELETE SET NULL
);

CREATE TABLE fact_table
(
fact_id int not null auto_increment,
month_end_date varchar(225),
emp_left int,
dept_emp_left int,
regTemp_dept_emp int,
dept_total_emp int,
metro_emp_left int,
regTemp_metro_emp int,
metro_total_emp int,
dept_id int,
leave_id int,
reason_id int,
PRIMARY KEY (fact_id),
FOREIGN KEY (dept_id) REFERENCES dim_dept_emp (dept_id) ON DELETE SET NULL,
FOREIGN KEY (leave_id) REFERENCES dim_leave_category (leave_id) ON DELETE SET NULL,
FOREIGN KEY (reason_id) REFERENCES dim_reason (reason_id) ON DELETE SET NULL
);