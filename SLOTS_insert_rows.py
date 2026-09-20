import psycopg2
from psycopg2.extras import execute_values

# 1. Update this with your actual pgAdmin/PostgreSQL connection details
db_config = {
    "dbname": "main_Campus_Package_Delivery",
    "user": "postgres",
    "password": "123456",
    "host": "localhost",
    "port": "5432"
}

# 2. Define the afternoon time blocks
slots_pool = [
    (1, "12:00", "13:00"),
    (2, "13:00", "14:00"),
    (3, "14:00", "15:00"),
    (4, "15:00", "16:00"),
    (5, "16:00", "17:00"),
    (6, "17:00", "17:30")
]

data = []
slot_id = 1

# 3. Systematically loop through days 1 to 7 (Monday = 1, Sunday = 7)
for day_num in range(1, 8):
    for slot_no, s_time, e_time in slots_pool:
        # day_num is now an integer going into the day_of_week column
        data.append((slot_id, day_num, slot_no, s_time, e_time))
        slot_id += 1

# 4. Connect to PostgreSQL and insert the rows
try:
    conn = psycopg2.connect(**db_config)
    cursor = conn.cursor()
    
    insert_query = """
        INSERT INTO slots (slot_id, day_of_week, slot_number, start_time, end_time) 
        VALUES %s
        ON CONFLICT (slot_id) DO NOTHING;
    """
    
    execute_values(cursor, insert_query, data)
    conn.commit()
    print(f"Successfully generated and inserted {len(data)} slots (with integer days) into your table!")

except Exception as e:
    print(f"An error occurred: {e}")
    if conn:
        conn.rollback()

finally:
    if cursor:
        cursor.close()
    if conn:
        conn.close()
