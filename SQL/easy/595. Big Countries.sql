-- 595. Big Countries
-- https://leetcode.com/problems/big-countries

-- Problem: Get the name, area and population of big countries
-- Approach: Filter big countries using WHERE

SELECT name, population, area FROM World
WHERE area >= 3000000 OR population >= 25000000
