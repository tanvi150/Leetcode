-- 183. Customers Who Never Order
-- https://leetcode.com/problems/customers-who-never-order/

-- Problem: Find all (the names) of the customers who never order anything.
-- Approach: Use a LEFT JOIN from Customers to Orders to find customers who do not have any orders.

SELECT Customers.name AS Customers FROM Customers
LEFT JOIN Orders ON Customers.id = Orders.customerId
WHERE Orders.id IS NULL;
