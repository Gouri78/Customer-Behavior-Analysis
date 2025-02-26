

select count(cust_id),discount_applied from billing_info bi 
group by discount_applied
order by count(cust_id) desc

select count(Cust_id) from cust_info ci 