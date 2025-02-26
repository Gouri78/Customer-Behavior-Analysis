select count(cust_id), discount_applied from billing_info
group by discount_applied 
order by count(cust_id) desc;