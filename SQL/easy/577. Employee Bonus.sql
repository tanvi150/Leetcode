-- 577. Employee Bonus
-- https://leetcode.com/problems/employee-bonus/

-- Problem: Report the name and bonus amount of each employee who satisfies either employee having a bonus of less than 1000 or employee did not get any bonus
-- Approach: Use LEFT JOIN to include all employees and their bonuses, then filter with WHERE to select employees whose bonus is either less than 1000 or missing.

SELECT e.name AS name, b.bonus AS bonus
FROM Employee e
LEFT JOIN Bonus b ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;
