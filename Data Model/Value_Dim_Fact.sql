INSERT IGNORE INTO dim_dept_emp (dept, reg_temp, departure_agegroup, ethnic_group, gender)
SELECT DISTINCT dept, reg_temp, age_at_departure, ethnic_group, gender FROM temp_table_1
;
INSERT IGNORE INTO dim_leave_category (leave_name)
SELECT DISTINCT leave_type FROM temp_table_1
;
INSERT IGNORE INTO dim_reason (reason_name, leave_id)
SELECT DISTINCT t.reason, l.leave_id FROM temp_table_1 t JOIN dim_leave_category l on t.leave_type = l.leave_name
;

INSERT IGNORE INTO fact_table ( month_end_date, emp_left, dept_emp_left, regTemp_dept_emp, dept_total_emp, metro_emp_left,
regTemp_metro_emp, metro_total_emp, dept_id, leave_id, reason_id)
SELECT DISTINCT 
t1.month_end_date, 
t1.emp_left, 
t1.dept_emp_left, 
t1.reg_temp_dept_total_emp, 
t1.dept_total_emp, 
t1.metro_emp_left, 
t1.reg_temp_metro_emp, 
t1.metro_total_emp,
d.dept_id, 
l.leave_id, 
r.reason_id
FROM temp_table_1 t1 JOIN dim_dept_emp d on d.dept= t1.dept
JOIN dim_leave_category l on l.leave_name = t1.leave_type
JOIN dim_reason r on r.reason_name = t1.reason
;

