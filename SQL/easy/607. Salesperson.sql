-- 607. Salesperson
-- https://leetcode.com/problems/sales-person/

-- Problem: Find the names of all salespersons who have no orders related to company 'RED'
-- Approach: Correlated anti-join using NOT EXISTS to return rows from Salespersons for which no matching 'RED' order exists
-- Tip: Whenever a question mentions “never,” “no,” “without,” or “did not have any,” think NOT EXISTS.
-- Common Mistakes: Using <> 'RED' — only removes RED rows, doesn’t exclude salespeople who had RED orders.

SELECT s.name AS name FROM SalesPerson s
WHERE NOT EXISTS (
    SELECT 1 # Convention to check if the query returns at least 1 row
    FROM Orders o
    JOIN Company c ON o.com_id = c.com_id
    WHERE o.sales_id = s.sales_id AND c.name = 'RED'
)
