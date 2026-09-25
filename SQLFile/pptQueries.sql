-- List all tables and number of columns
-- SELECT
--     table_name,
--     COUNT(*) AS number_of_columns
-- FROM information_schema.columns
-- WHERE table_schema = 'public'
-- GROUP BY table_name
-- ORDER BY table_name;


-- Display users' preferred delivery day, time slot and landmark

-- Since your user_preferences table connects users → slots → landmarks:

-- SELECT
--     u.user_id,
--     s.day_of_week AS delivery_day,
--     s.start_time,
--     s.end_time,
--     l.landmark_name
-- FROM users u
-- JOIN user_preferences up
--     ON u.user_id = up.user_id
-- JOIN slots s
--     ON up.slot_id = s.slot_id
-- JOIN landmarks l
--     ON up.landmark_id = l.landmark_id
-- ORDER BY
--     u.user_id,
--     s.day_of_week,
--     s.start_time;


-- Count packages by current delivery status

-- SELECT
--     current_status,
--     COUNT(*) AS package_count
-- FROM packages
-- GROUP BY current_status
-- ORDER BY package_count DESC;


-- Expected delivery demand at each landmark for Monday 12–1 PM

--This one is particularly useful because it uses your user preferences + slots + landmarks.

-- SELECT
--     l.landmark_id,
--     l.landmark_name,
--     COUNT(DISTINCT up.user_id) AS expected_demand
-- FROM user_preferences up
-- JOIN slots s
--     ON up.slot_id = s.slot_id
-- JOIN landmarks l
--     ON up.landmark_id = l.landmark_id
-- WHERE
--     s.day_of_week = 1
--     AND s.start_time = TIME '12:00'
--     AND s.end_time = TIME '13:00'
-- GROUP BY
--     l.landmark_id,
--     l.landmark_name
-- ORDER BY
--     expected_demand DESC;