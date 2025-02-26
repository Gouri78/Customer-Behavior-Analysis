WITH RankedShipments AS (
    SELECT 
        CASE 
            WHEN c.age BETWEEN 18 AND 25 THEN '18-25'
            WHEN c.age BETWEEN 26 AND 35 THEN '26-35'
            WHEN c.age BETWEEN 36 AND 45 THEN '36-45'
            WHEN c.age BETWEEN 46 AND 60 THEN '46-60'
            ELSE '60+'
        END AS age_group,
        p.shipping_type,
        COUNT(c.cust_id) AS shipment_count,
        ROW_NUMBER() OVER (PARTITION BY 
            CASE 
                WHEN c.age BETWEEN 18 AND 25 THEN '18-25'
                WHEN c.age BETWEEN 26 AND 35 THEN '26-35'
                WHEN c.age BETWEEN 36 AND 45 THEN '36-45'
                WHEN c.age BETWEEN 46 AND 60 THEN '46-60'
                ELSE '60+'
            END 
            ORDER BY COUNT(c.cust_id) DESC) AS rank_order
    FROM cust_info c 
    JOIN purchase_info p ON c.CUST_ID = p.Cust_id
    GROUP BY age_group, p.shipping_type
)
SELECT age_group, shipping_type, shipment_count
FROM RankedShipments
WHERE rank_order = 1;