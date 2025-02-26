select payment_method, count(Payment_method) as No_of_payments from billing_info bi 
group by payment_method
order by no_of_payments  desc;