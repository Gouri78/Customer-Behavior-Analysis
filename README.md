# Customer Behavior Analysis Dashboard

[Dashboard link](https://app.powerbi.com/reportEmbed?reportId=2a291d40-fa47-434a-b0b8-0761d8934acb&autoAuth=true&ctid=fc327485-809d-4c88-881e-a523ca673342)

![Image](https://github.com/user-attachments/assets/70a84427-23ad-4458-96fb-359f582ae09e)



## Problem Statement

The Customer Behavior Analysis Dashboard offers actionable insights by monitoring and displaying customer preferences and purchasing habits. It provides insights into why the number of customers and sales has not increased. Capitalizing on data analytics, the dashboard enables companies to spot trends, streamline marketing strategies, and boost customer interaction. 

## Methodology

**Step 1**- Loading the dataset in MySQL server, dataset is a csv file. The original dataset consists of a single table representing various customer, purchase and billing information. This dataset was then modularized into three individual tables for analysis - 
a)- Customer Information
b)- Purchase Information
c)- Billing Information

**Step 2**- To begin with the project, it was important to calculate the number of customers and filter them on the basis of gender and age to understand trends. A basic SQL query using `COUNT` and `GROUP BY` was executed to find the count of customers based on gender. To classify customers into various age groups, a `CASE` statement was written. 

**Step 3**- Tracking customer behavior primarily involves enquiring whether they return to the store to continue purchases. To understand the ratio of Regular Customers Vs New Customers, an SQL Query using `CASE` statement was written.

**Step 4**- Identifying the most preferred shipment type is necessary for a business to thrive. It helps businesses invest more money into the most preferred shipment type, to improve customer satisfaction and depend less on the least preferred shipment type, thus saving company resources. Since customer Information and Shipping Information are present in two different tables, an advanced * *window function* * with `Join` needed to be executed.

**Step 5**- To identify the most preferred method of payment, a basic query using `COUNT`, `GROUP BY` and `ORDER BY` was written.

**Step 6**- Identifying the purchasing frequency of customers across various time frames such as - Weekly, Fortnightly, Bi-weekly, Every 3 months, Quarterly, Monthly and Annually. This step proved to be the most significant during analysis as it revealed the very defining problem of this dataset- ‘Sales appear to be stagnant. The frequency of purchases appears to be very similar’. This led to the next step.

**Step 7**- Tracking whether sales remained stagnant during different seasons had to be the next obvious step. This will help understand the above mentioned problem. 

**Step 8**- The final step involved concluding the analysis by examining one final thought- Were abundant discounts and promo codes available for the customers to use, to improve sales? And if so, why haven’t sales improved? The answer to this question came to light when it was found out that a large number of customers have not relied on discount coupons. 

**Step 9**- After querying all the above results, it was then exported to Power BI, to Visualize. 

**Step 10**- The data in all the queries were transformed using Power Query Editor- eg- Changing column headers, appending and merging queries etc. 

**Step 11**- The transformed data was then built as reports in the Power BI Dashboard using various visuals such as Cards, Pie Charts, Donut Charts, tables, Clustered Column Charts, Stacked Bar Charts and Stacked Column Charts. 

**Step 12**- Finally, a text box was added where insights were described with possible solutions.

**Step 13**- The report was then published to Power BI Service. 




