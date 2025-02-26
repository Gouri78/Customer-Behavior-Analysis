select count(cust_id), purch_freq from cust_info ci 
group by ci.PURCH_FREQ 
order by count(cust_id) desc;