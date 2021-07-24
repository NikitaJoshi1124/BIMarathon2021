SELECT * FROM dim_dept_emp;

SELECT COALESCE(reg_temp, "N/A") as reg_temp, 
       departure_agegroup, 
       ethnic_group, 
       gender, 
	   sum(case when departure_agegroup is null then 1 else 0 end +
	   case when ethnic_group is null then 1 else 0 end +
	   case when gender is null then 1 else 0 end) count_nulls
from dim_dept_emp
group by reg_temp, departure_agegroup, ethnic_group, gender
order by count_nulls DESC;