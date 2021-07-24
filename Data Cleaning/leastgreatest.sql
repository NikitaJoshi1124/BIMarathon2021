SELECT * FROM dim_leave_category;

SELECT reason_id, 
       reason_name,
       greatest(leave_id, 3) as LeaveCategory FROM dim_reason;
       
SELECT reason_id, 
       reason_name, 
       case when leave_id = 2 THEN 6 ELSE leave_id END as leave_id
FROM dim_reason;

