-- CREATE TABLE indian_names (
--     csv_index INT,
--     name VARCHAR(100)
-- );


-- INSERT INTO users (user_name, user_contact, role)
-- SELECT
--     name,
--     '90000' || LPAD(ROW_NUMBER() OVER (ORDER BY csv_index)::TEXT, 5, '0'),
--     CASE
--         WHEN ROW_NUMBER() OVER (ORDER BY csv_index) <= 900
--         THEN 'STUDENT'
--         ELSE 'STAFF'
--     END
-- FROM indian_names
-- LIMIT 1000;

-- WITH names AS (
--     SELECT
--         name,
--         csv_index,
--         ROW_NUMBER() OVER (ORDER BY csv_index) AS rn
--     FROM indian_names
--     LIMIT 1000
-- ),
-- random_ids AS (
--     SELECT
--         id,
--         ROW_NUMBER() OVER () AS rn
--     FROM (
--         SELECT generate_series(100000, 999999) AS id
--         ORDER BY random()
--         LIMIT 1000
--     ) s
-- )
-- INSERT INTO users (user_id, user_name, user_contact, role)
-- SELECT
--     r.id,
--     n.name,
--     '90000' || LPAD(n.rn::TEXT, 5, '0'),
--     CASE
--         WHEN random() < 0.90 THEN 'STUDENT'
--         ELSE 'STAFF'
--     END AS role
-- FROM names n
-- JOIN random_ids r ON r.rn = n.rn;


-- select * from users;
-- delete from users;
-- select count(*) from users;


-- WITH names AS (
--     SELECT
--         name,
--         ROW_NUMBER() OVER (ORDER BY random()) AS rn
--     FROM indian_names
--     LIMIT 1000
-- ),
-- random_ids AS (
--     SELECT
--         id,
--         ROW_NUMBER() OVER () AS rn
--     FROM (
--         SELECT generate_series(100000, 999999) AS id
--         ORDER BY random()
--         LIMIT 1000
--     ) s
-- )
-- INSERT INTO users (user_id, user_name, user_contact, role)
-- SELECT
--     r.id,
--     n.name,
--     '90000' || LPAD(n.rn::TEXT, 5, '0'),
--     CASE
--         WHEN random() < 0.90 THEN 'STUDENT'
--         ELSE 'STAFF'
--     END AS role
-- FROM names n
-- JOIN random_ids r ON r.rn = n.rn;





-- INSERT INTO delivery_companies (company_name, contact)
-- VALUES
-- ('Amazon Logistics', '1800123401'),
-- ('Flipkart Ekart', '1800123402'),
-- ('Meesho Delivery', '1800123403'),
-- ('Delhivery', '1800123404'),
-- ('Ecom Express', '1800123405'),
-- ('Blue Dart', '1800123406'),
-- ('DTDC Express', '1800123407'),
-- ('Shadowfax', '1800123408'),
-- ('XpressBees', '1800123409'),
-- ('Shiprocket', '1800123410'),
-- ('DHL Express', '1800123411'),
-- ('FedEx', '1800123412'),
-- ('India Post', '1800123413'),
-- ('Professional Couriers', '1800123414'),
-- ('QuickShip Logistics', '1800123415');


-- ---------Directly inserted delivery persons------------------


-- select * from delivery_persons;


------------USED PYTHON(+VS CODE) TO CREATE SLOTS TABLE___________________
-- import psycopg2
-- from psycopg2.extras import execute_values

-- # 1. Update this with your actual pgAdmin/PostgreSQL connection details
-- db_config = {
--     "dbname": "main_Campus_Package_Delivery",
--     "user": "postgres",
--     "password": "123456",
--     "host": "localhost",
--     "port": "5432"
-- }

-- # 2. Define the afternoon time blocks
-- slots_pool = [
--     (1, "12:00", "13:00"),
--     (2, "13:00", "14:00"),
--     (3, "14:00", "15:00"),
--     (4, "15:00", "16:00"),
--     (5, "16:00", "17:00"),
--     (6, "17:00", "17:30")
-- ]

-- data = []
-- slot_id = 1

-- # 3. Systematically loop through days 1 to 7 (Monday = 1, Sunday = 7)
-- for day_num in range(1, 8):
--     for slot_no, s_time, e_time in slots_pool:
--         # day_num is now an integer going into the day_of_week column
--         data.append((slot_id, day_num, slot_no, s_time, e_time))
--         slot_id += 1

-- # 4. Connect to PostgreSQL and insert the rows
-- try:
--     conn = psycopg2.connect(**db_config)
--     cursor = conn.cursor()
    
--     insert_query = """
--         INSERT INTO slots (slot_id, day_of_week, slot_number, start_time, end_time) 
--         VALUES %s
--         ON CONFLICT (slot_id) DO NOTHING;
--     """
    
--     execute_values(cursor, insert_query, data)
--     conn.commit()
--     print(f"Successfully generated and inserted {len(data)} slots (with integer days) into your table!")

-- except Exception as e:
--     print(f"An error occurred: {e}")
--     if conn:
--         conn.rollback()

-- finally:
--     if cursor:
--         cursor.close()
--     if conn:
--         conn.close()








