# BIMarathon2021
### This repository is for the project to be done under BI Marathon 2021. BI Marathon 2021 is a 2 month long Data Analysis Mentoring Program, where each week is focused on an important step involved in the process of data analysis. It will help me understand the concepts of Dimension Modeling and Data Warehouse, hone my existing knowledge of SQL, Python, statistical modeling, predictive analytics and data visualization tool like Tableau/Power BI.
----------------------
## Week 1 : Building a Real world project
----------------------
1. Data Source and description:
* Data Source : "HR Analytics(https://www.kaggle.com/arashnic/hr-analytics-job-change-of-data-scientists)"
* Data Description : The dataset is designed to understand the factors that lead a person to leave current job and company, for HR researches. It is imbalanced and most features are categorical (Nominal, Ordinal, Binary), some with high cardinality.
  * *Nominal data : Nominal data is defined as data that is used for naming or labelling variables, without any quantitative value. There is usually no intrinsic ordering to nominal data. Example, Race is a nominal variable having a number of categories, but there is no specific way to order from highest to lowest and vice versa.*
  *  *Ordinal data : Ordinal data is a type of categorical data with an order and are usually numbered, so as to indicate the order of the list. However, the numbers are not mathematically measured or determined but are merely assigned as labels for opinions. Examples of ordinal variables include: socio economic status (“low income”,”middle income”,”high income”), education level (“high school”,”BS”,”MS”,”PhD”), income level (“less than 50K”, “50K-100K”, “over 100K”), satisfaction rating (“extremely dislike”, “dislike”, “neutral”, “like”, “extremely like”).*
  *   *Binary data : Binary data is data whose unit can take on only two possible states, traditionally labeled as 0 and 1 in accordance with the binary numeral system and Boolean algebra.*
  *   *High-cardinality refers to columns with values that are very uncommon or unique. High-cardinality column values are typically identification numbers, email addresses, or user names.*
2. Project mission : 
* Predict the probability of a candidate to look for a new job or will work for the company
* Identifying factors affecting an employee decision to leave
3. Features
   * enrollee_id : Unique ID for candidate
   * city: City code
   * city_ development _index : Developement index of the city (scaled)
   * gender: Gender of candidate
   * relevent_experience: Relevant experience of candidate
   * enrolled_university: Type of University course enrolled if any
   * education_level: Education level of candidate
   * major_discipline :Education major discipline of candidate
   * experience: Candidate total experience in years
   * company_size: No of employees in current employer's company
   * company_type : Type of current employer
   * lastnewjob: Difference in years between previous job and current job
   * training_hours: training hours completed
   * target: 0 – Not looking for job change, 1 – Looking for a job chang
