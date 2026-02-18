-- 511. Game Play Analysis I
-- https://leetcode.com/problems/game-play-analysis-i/

-- Problem: Find the first login date for each player, where each would login and logout at a specific date.
-- Approach: Use MIN() to find the first login date of each player.
-- Tip: You can use MAX() to find the most recent login or COUNT() to get total logins from each player.

SELECT player_id, min(event_date) AS first_login FROM Activity
GROUP BY player_id;
