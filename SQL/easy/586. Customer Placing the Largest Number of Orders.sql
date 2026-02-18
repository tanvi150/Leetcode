-- 586. Customer Placing the Largest Number of Orders
-- https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/

-- Problem: Find the customer_number for the customer who has placed the largest number of orders
-- Approach: Use GROUP BY to count orders per customer, then sort by order count descending and take the top one with LIMIT 1
-- Tip: Use COUNT(*) with GROUP BY to find the frequency of each value. Use ORDER BY COUNT(*) DESC LIMIT 1 to get the highest count. For ties, consider adding a secondary ORDER BY like customer_number ASC.
-- Common Mistakes: HAVING COUNT(*) without GROUP BY is invalid & SUM() or MAX() does not give the most frequent value.

SELECT customer_number FROM Orders
GROUP BY customer_number 
ORDER BY COUNT(*) DESC 
LIMIT 1;
