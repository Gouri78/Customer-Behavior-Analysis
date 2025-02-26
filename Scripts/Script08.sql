select count(cust_id), season from purchase_info pi2  
group by season 
order by count(cust_id) desc;