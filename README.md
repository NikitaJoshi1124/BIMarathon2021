# BIMarathon2021
### This repository is for the project to be done under BI Marathon 2021. BI Marathon 2021 is a 2 month long Data Analysis Mentoring Program, where each week is focused on an important step involved in the process of data analysis. It will help me understand the concepts of Dimension Modeling and Data Warehouse, hone my existing knowledge of SQL, Python, statistical modeling, predictive analytics and data visualization tool like Tableau/Power BI.
----------------------
## Week 1 : Building a Real world project
----------------------
1. Data Source and description:
* Data Source : "HR Analytics(https://data.louisvilleky.gov/dataset/enterprise-measures)"
* Data Description : There is a total of 4 data files which consists data regarding Absenteeism, Sick Leave, Total Hours Worked and Turnover rate. The information gathered through HRIS analytics can help managers with matters such as:
     * Employee turnover tracking : (by roles and department)
     * Employee performance monitoring 
     * Retention
     * Absenteeism
2. Project mission : 
* The Office of Performance Improvement strives to provide Metro Government and its partners with customized improvement support to create a world-class city.
* Finding KPI metrics that can improve performance of employees
3. Dimensions : 
   * Turnover :
      1. Date : MONTH_END_DATE, MONTH, YEAR
      2. Employee : AGE_GROUP_AT_DEPARTURE, ,ETHNIC_GROUP,GENDER
      3. Employee_Level : REASON, LEAVE_TYPE
* Facts: 
  * Turnover: YEARS_IN_METRO, FK_Dept, DEPT_EMP_LEFT, REG_TEMP_DEPT_TOTAL_EMP, DEPT_TOTAL_EMP, METRO_TOTAL_EMP, EMP_LEFT
