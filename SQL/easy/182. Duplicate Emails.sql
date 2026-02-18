-- Leetcode: 182. Duplicate Emails
-- https://leetcode.com/problems/duplicate-emails/

-- Problem: Report all the duplicate emails.
-- Approach: Use `GROUP BY` to group rows by email and `HAVING COUNT(*) > 1` to filter emails that appear more than once
-- Tip: If you also include `COUNT(*)` in the `SELECT` clause, you can see how many times each email appears.

SELECT email AS Email FROM Person
GROUP BY email HAVING COUNT(*) > 1;
