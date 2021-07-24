SELECT * FROM dim_reason;

-- INSERTING DUPLICATES IN TABLE dim_reason--
INSERT INTO dim_reason(reason_name, leave_id)
VALUES( 'Normal Retirement', '3'),( "Dismissed during Probation" , "4"), ("Resignation" , "5"),("End Temporary Employment","2" ) ; 

-- FINDING DUPLICATES IN TABLE dim_reason using having()--
SELECT reason_name, 
	   leave_id, 
	   count(*) 
FROM dim_reason
GROUP BY reason_name, leave_id
HAVING count(*) > 1;

-- FINDING DUPLICATES USING TEMP TABLES--
WITH CTE AS (
SELECT reason_id, 
	   reason_name, 
       leave_id,
	   ROW_NUMBER() OVER ( PARTITION BY reason_name ORDER BY reason_name) as row_num 
FROM dim_reason) 
SELECT * FROM CTE
WHERE row_num > 1

-- REMOVING DUPLICATES --
DELETE FROM CTE WHERE row_num >1;

SELECT * FROM CTE