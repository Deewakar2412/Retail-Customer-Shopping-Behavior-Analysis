
CREATE TABLE cleaned_customer_shopping_behavior (
    customer_id BIGINT PRIMARY KEY,
    age INT,
    gender VARCHAR(20),
    item_purchased VARCHAR(100),
    category VARCHAR(100),
    purchase_amount BIGINT,
    location VARCHAR(100),
    size VARCHAR(20),
    color VARCHAR(50),
    season VARCHAR(50),
    review_rating DOUBLE PRECISION,
    subscription_status VARCHAR(30),
    shipping_type VARCHAR(50),
    discount_applied VARCHAR(10),
    previous_purchases INT,
    payment_method VARCHAR(50),
    frequency_of_purchases VARCHAR(50),
    customer_value_score BIGINT,
    customer_segment VARCHAR(50)
);


ALTER TABLE cleaned_customer_shopping_behavior
RENAME TO  customer;


-- Q1. What is the total revenue contribution from 'Platinum' and 'Gold' customer segments? 
-- (Business Question: How important are our top customers?)

SELECT
    customer_segment,
    SUM(purchase_amount) AS total_revenue,
    ROUND(100.0 * SUM(purchase_amount) / (SELECT SUM(purchase_amount) FROM  customer), 2) AS percentage_of_total_revenue
FROM
     customer
WHERE
    customer_segment IN ('Platinum', 'Gold')
GROUP BY
    customer_segment
ORDER BY
    total_revenue DESC;

-- Q2. Which customers used a discount but still spent more than the average purchase amount?
-- (Business Question: Who are our high-spending, discount-using customers?)

SELECT
    customer_id,
    purchase_amount
FROM
    customer
WHERE
    discount_applied = 'Yes'
    AND purchase_amount > (SELECT AVG(purchase_amount) FROM customer)
ORDER BY
    purchase_amount DESC;

-- Q3. What are the top 5 products by total revenue?
-- (Business Question: Which are our most profitable products?)

SELECT
    item_purchased,
    SUM(purchase_amount) AS total_revenue
FROM
    customer
GROUP BY
    item_purchased
ORDER BY
    total_revenue DESC
LIMIT 5;

-- Q4. How does the average purchase amount compare between 'Free Shipping' vs. 'Paid Shipping'?
-- (Business Question: Is 'Free Shipping' attracting lower-value orders?)

WITH ShippingComparison AS (
    SELECT
        customer_id,
        purchase_amount,
        CASE
            WHEN shipping_type = 'Free Shipping' THEN 'Free'
            ELSE 'Paid'
        END AS shipping_group
    FROM
        customer
)
SELECT
    shipping_group,
    COUNT(customer_id) AS total_customers,
    AVG(purchase_amount) AS avg_purchase_amount
FROM
    ShippingComparison
GROUP BY
    shipping_group;

-- Q5. Are subscribed customers more loyal? Compare avg spend and avg repeat purchases.
-- (Business Question: Does the subscription program actually drive long-term loyalty?)

SELECT
    subscription_status,
    COUNT(customer_id) AS total_customers,
    ROUND(AVG(purchase_amount), 2) AS avg_spend,
    ROUND(AVG(previous_purchases), 2) AS avg_repeat_purchases
FROM
    customer
GROUP BY
    subscription_status
ORDER BY
    avg_repeat_purchases DESC;

-- Q6. Which product category has the highest discount application rate?
-- (Business Question: Where are we applying the most discounts?)

SELECT
    category,
    ROUND(100.0 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS discount_rate_percentage
FROM
    customer
GROUP BY
    category
ORDER BY
    discount_rate_percentage DESC;

-- Q7. Segment customers into 'New', 'Returning', and 'Loyal' based on purchase history.
-- (Business Question: What is the mix of new vs. loyal customers in our base?)

WITH CustomerTypes AS (
    SELECT
        customer_id,
        previous_purchases,
        CASE
            WHEN previous_purchases = 1 THEN 'New'
            WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
            ELSE 'Loyal'
        END AS customer_segment_simple
    FROM
        customer
)
SELECT
    customer_segment_simple,
    COUNT(*) AS number_of_customers
FROM
    CustomerTypes
GROUP BY
    customer_segment_simple
ORDER BY
    number_of_customers DESC;

-- Q8. What are the top 3 most purchased items within each product category?
-- (Business Question: Which specific items should we focus on in each category?)

WITH ItemCounts AS (
    SELECT
        category,
        item_purchased,
        COUNT(customer_id) AS total_orders,
        ROW_NUMBER() OVER (PARTITION BY category ORDER BY COUNT(customer_id) DESC) AS item_rank
    FROM
        customer
    GROUP BY
        category, item_purchased
)
SELECT
    item_rank,
    category,
    item_purchased,
    total_orders
FROM
    ItemCounts
WHERE
    item_rank <= 3;

-- Q9. What is the impact of review ratings on the average purchase amount?
-- (Business Question: Do better reviews lead to customers spending more?)

SELECT
    CASE
        WHEN review_rating >= 4.5 THEN 'Excellent (4.5-5.0)'
        WHEN review_rating >= 3.5 THEN 'Good (3.5-4.4)'
        WHEN review_rating >= 2.5 THEN 'Average (2.5-3.4)'
        ELSE 'Poor (Below 2.5)'
    END AS rating_bucket,
    COUNT(customer_id) AS total_purchases,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase_amount
FROM
    customer
GROUP BY
    rating_bucket
ORDER BY
    avg_purchase_amount DESC;

-- Q10. Which season generates the highest total revenue?
-- (Business Question: When is our most critical business period?)

SELECT
    season,
    SUM(purchase_amount) AS total_revenue
FROM
    customer
GROUP BY
    season
ORDER BY
    total_revenue DESC;