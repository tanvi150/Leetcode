-- 596. Classes with at Least 5 Students
-- https://leetcode.com/problems/classes-with-at-least-5-students/

-- Problem: Find all classes with at least 5 students
-- Approach: Use GROUP BY and Count(*) to filter all the classes having at least 5 students.

SELECT class FROM Courses
GROUP BY class HAVING COUNT(*) > 4
