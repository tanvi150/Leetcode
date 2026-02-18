-- 196. Delete Duplicate Emails
-- https://leetcode.com/problems/delete-duplicate-emails/

-- Problem: Delete all duplicate emails, keeping only unique emails with smallest IDs.
-- Approach: Use a subquery with MIN() and NOT IN to delete all duplicates while keeping the row with the smallest id.
-- Tip: Wrap the inner SELECT in an extra subquery with an alias (AS t) in MySQL to avoid errors when deleting from the same table you’re selecting from.
-- Additional Tip: Use subqueries when you need to compute a value or filter rows based on another query, like finding min/max, checking existence, or aggregating per group.

# Tells SQL to delete rows from the Person Table with a 'where' condition to filter which rows to delete
DELETE FROM Person 
# 'not in' means delete rows whose id is not in a specific list 
WHERE id NOT IN
# Start a subquery that will produce a list of ids to keep
(SELECT min_id FROM (
    # Inner query finds the smallest ID for each group and groups all rows by email
    SELECT MIN(id) AS min_id FROM Person
    GROUP BY email
 ) AS t # Gives a name to the derived table
);
