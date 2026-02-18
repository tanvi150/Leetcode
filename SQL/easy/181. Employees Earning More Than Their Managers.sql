-- Leetcode 181. Employees Earning More Than Their Managers
-- https://leetcode.com/problems/employees-earning-more-than-their-managers/

-- Problem: Find the employees who earn more than their managers.
-- Approach: Since manager is also an employee, apply SELF JOIN.

SELECT e.name AS Employee FROM Employee e
JOIN Employee m ON e.managerId = m.id
WHERE e.salary > m.salary;
