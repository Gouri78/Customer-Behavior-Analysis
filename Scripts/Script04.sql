select count(cust_id) as count_buyers,
case when prev_purch between '1' and '5' then 'rare_buyer'
when prev_purch between '6'and '15' then 'Occasional_buyer'
when prev_purch > '15' then 'Frequent_buyer'
else 'no_purchase'
end as Customers
from cust_info ci
group by customers
order by count_buyers desc;