select case when age BETWEEN 18 AND 25 THEN '18-25'
            WHEN age BETWEEN 26 AND 35 THEN '26-35'
            WHEN age BETWEEN 36 AND 45 THEN '36-45'
            WHEN age BETWEEN 46 AND 60 THEN '46-60'
            ELSE '60+'
            end as age_group,Count( cust_id)
            from cust_info ci 
            group by age_group
            order by count(cust_id) desc;