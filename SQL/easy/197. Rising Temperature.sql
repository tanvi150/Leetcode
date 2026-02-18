-- 197. Rising Temperature
-- https://leetcode.com/problems/rising-temperature/

-- Problem: Find all the dates with higher temperatures as compared to the previous day.
-- Approach: Use a SELF JOIN on the Weather table to compare each day's temperature with the previous day.
-- Tip: Use DATE_ADD(date, INTERVAL n DAY) adds n days to a date. You can use negative numbers to subtract dates and positive numbers to add days.

SELECT w.id AS Id FROM WEATHER w
JOIN WEATHER p ON w.recordDate = DATE_ADD(p.recordDate, INTERVAL 1 DAY)
WHERE w.temperature > p.temperature;
