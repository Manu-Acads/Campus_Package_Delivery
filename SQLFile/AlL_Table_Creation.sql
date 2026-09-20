-- CREATE EXTENSION IF NOT EXISTS postgis;



-- CREATE TABLE delivery_companies (
--     company_id SERIAL PRIMARY KEY,
--     company_name VARCHAR(100) UNIQUE NOT NULL,
--     contact VARCHAR(20) UNIQUE
-- );

-- CREATE TABLE delivery_persons (
--     delivery_person_id SERIAL PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     contact VARCHAR(20) UNIQUE,
--     company_id INT NOT NULL,
--     FOREIGN KEY (company_id) REFERENCES delivery_companies(company_id)
    
-- );

-- CREATE TABLE users (
--     user_id SERIAL PRIMARY KEY,
--     user_name VARCHAR(100) NOT NULL,
--     user_contact VARCHAR(20) UNIQUE,
--     role VARCHAR(20) NOT NULL CHECK (role IN ('STUDENT', 'STAFF'))
-- );



-- CREATE TABLE slots (
--     slot_id SERIAL PRIMARY KEY,
--     day_of_week INT NOT NULL CHECK (day_of_week BETWEEN 1 AND 7),
--     slot_number INT NOT NULL CHECK (slot_number >= 1),
--     start_time TIME NOT NULL,
--     end_time TIME NOT NULL,
--     UNIQUE (day_of_week, slot_number),
--     CHECK (end_time > start_time)
-- );

-- CREATE TABLE zones (
--     zone_id SERIAL PRIMARY KEY,
--     zone_name VARCHAR(100) UNIQUE NOT NULL,
--     geometry GEOMETRY(POLYGON, 4326) NOT NULL
-- );

-- CREATE TABLE landmarks (
--     landmark_id SERIAL PRIMARY KEY,
--     zone_id INT NOT NULL,
--     landmark_name VARCHAR(100) UNIQUE NOT NULL,
--     geometry GEOMETRY(POINT, 4326) NOT NULL,
--     FOREIGN KEY (zone_id) REFERENCES zones(zone_id)
-- );



-- CREATE TABLE routes (
--     route_id SERIAL PRIMARY KEY,
--     route_name VARCHAR(100),
--     geometry GEOMETRY(LINESTRING, 4326) NOT NULL
-- );

-- CREATE TABLE user_preferences (
--     user_id INT NOT NULL,
--     slot_id INT NOT NULL,
--     landmark_id INT NOT NULL,
--     created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
--     updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

--     PRIMARY KEY (user_id, slot_id),

--     FOREIGN KEY (user_id) REFERENCES users(user_id),
--     FOREIGN KEY (slot_id) REFERENCES slots(slot_id),
--     FOREIGN KEY (landmark_id) REFERENCES landmarks(landmark_id)
-- );

-- CREATE TABLE packages (
--     package_id SERIAL PRIMARY KEY,
--     -- tracking_id VARCHAR(100) UNIQUE NOT NULL,
--     -- company_id INT NOT NULL,
--     user_id INT NOT NULL,
--     delivery_person_id INT NOT NULL,
--     assigned_at TIMESTAMP,
    
--     current_status VARCHAR(30) NOT NULL
--         CHECK (current_status IN ('out_for_delivery', 'delivered', 'not_delivered')),

--     FOREIGN KEY (user_id) REFERENCES users(user_id),
--     FOREIGN KEY (delivery_person_id) REFERENCES delivery_persons(delivery_person_id)
    
-- );



-- CREATE TABLE package_delivery_log (
--     -- delivery_event_id SERIAL PRIMARY KEY,
--     package_id INT NOT NULL,
--     delivered_at TIMESTAMP NOT NULL,
--     -- round_id INT NOT NULL,
--     delivery_person_id INT NOT NULL,
--     slot_id INT NOT NULL,
--     -- derive from delivered_at ?
--     landmark_id INT NOT NULL,
--     -- verification_method VARCHAR(30), 
--     rating INT CHECK (rating BETWEEN 1 AND 5),

--     PRIMARY KEY (package_id, delivered_at),

--     FOREIGN KEY (package_id) REFERENCES packages(package_id),
--     FOREIGN KEY (delivery_person_id) REFERENCES delivery_persons(delivery_person_id),
--     FOREIGN KEY (slot_id) REFERENCES slots(slot_id),
--     FOREIGN KEY (landmark_id) REFERENCES landmarks(landmark_id)
   
-- );

-- CREATE TABLE delivery_person_status (
--     delivery_person_id INT NOT NULL,
--     time_stamp TIMESTAMP NOT NULL,
   
--     status VARCHAR(30) NOT NULL,
--     start_time TIMESTAMP NOT NULL,
--     end_time TIMESTAMP,

--     PRIMARY KEY (delivery_person_id, time_stamp),

--     FOREIGN KEY (delivery_person_id) REFERENCES delivery_persons(delivery_person_id),
--     CHECK (end_time IS NULL OR end_time >= start_time)
    
-- );

-- CREATE TABLE delivery_person_gps (
--     delivery_person_id INT NOT NULL,
--     recorded_at TIMESTAMP NOT NULL,
--     position GEOMETRY(POINT, 4326) NOT NULL,

--     PRIMARY KEY (delivery_person_id, recorded_at),

--     FOREIGN KEY (delivery_person_id) REFERENCES delivery_persons(delivery_person_id)
-- );





-------------------------Changed Schema(zones)(ADDED ZONE_TYPE)__________________________
-- drop table user_preferences;
-- drop table package_delivery_log;
-- drop table landmarks;

-- drop table zones;



-- CREATE TABLE zones (
--     zone_id SERIAL PRIMARY KEY,
--     zone_name VARCHAR(100) UNIQUE NOT NULL,
-- 	zone_type VARCHAR(50) NOT NULL,
--     geometry GEOMETRY(POLYGON, 4326) NOT NULL
-- );



