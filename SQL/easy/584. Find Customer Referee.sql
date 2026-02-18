-- 584. Find Customer Referee
-- https://leetcode.com/problems/find-customer-referee/

-- Problem: Find the names of the customer that are either referred by any customer with id !=2 or not referred by any customer
-- Approach: Filter using WHERE to find customers not referred by id = 2 or were not referred at all.

SELECT c.name AS name FROM Customer c
WHERE (c.referee_id != 2) OR (c.referee_id IS NULL);
