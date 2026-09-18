-- CREATE TABLE zones (
--     zone_id VARCHAR(10) PRIMARY KEY,
--     zone_name VARCHAR(100) NOT NULL,
--     zone_type VARCHAR(50) NOT NULL
-- );

-- INSERT INTO zones (zone_id, zone_name, zone_type)
-- VALUES
-- ('Z01', 'Academic Zone', 'academic'),
-- ('Z02', 'Hostel Zone', 'residential'),
-- ('Z03', 'Food & Shopping Zone', 'commercial'),
-- ('Z04', 'Sports Zone', 'recreation'),
-- ('Z05', 'Administration Zone', 'administrative'),
-- ('Z06', 'Medical Zone', 'medical'),
-- ('Z07', 'Research Zone', 'research'),
-- ('Z08', 'Campus Entrance Zone', 'entrance');

-- ALTER TABLE zones
-- ADD COLUMN geom geometry(Polygon, 4326);

-- UPDATE zones
-- SET geom = ST_GeomFromText(
--     'POLYGON((
--         78.5688 17.5470,
--         78.5735 17.5470,
--         78.5740 17.5430,
--         78.5700 17.5425,
--         78.5688 17.5470
--     ))',
--     4326
-- )
-- WHERE zone_id = 'Z01';


-- UPDATE zones
-- SET geom = ST_GeomFromText(
--     'POLYGON((
--         78.5718 17.5468,
--         78.5772 17.5468,
--         78.5775 17.5405,
--         78.5715 17.5405,
--         78.5718 17.5468
--     ))',
--     4326
-- )
-- WHERE zone_id = 'Z02';


-- UPDATE zones
-- SET geom = ST_GeomFromText(
--     'POLYGON((
--         78.5730 17.5435,
--         78.5772 17.5435,
--         78.5772 17.5405,
--         78.5730 17.5405,
--         78.5730 17.5435
--     ))',
--     4326
-- )
-- WHERE zone_id = 'Z03';

-- UPDATE zones
-- SET geom = ST_GeomFromText(
--     'POLYGON((
--         78.5740 17.5425,
--         78.5785 17.5425,
--         78.5785 17.5390,
--         78.5740 17.5390,
--         78.5740 17.5425
--     ))',
--     4326
-- )
-- WHERE zone_id = 'Z04';

-- UPDATE zones
-- SET geom = ST_GeomFromText(
--     'POLYGON((
--         78.5755 17.5430,
--         78.5775 17.5430,
--         78.5775 17.5410,
--         78.5755 17.5410,
--         78.5755 17.5430
--     ))',
--     4326
-- )
-- WHERE zone_id = 'Z06';

-- UPDATE zones
-- SET geom = ST_GeomFromText(
--     'POLYGON((
--         78.5708 17.5470,
--         78.5730 17.5470,
--         78.5730 17.5450,
--         78.5708 17.5450,
--         78.5708 17.5470
--     ))',
--     4326
-- )
-- WHERE zone_id = 'Z07';

-- UPDATE zones
-- SET geom = ST_GeomFromText(
--     'POLYGON((
--         78.5715 17.5480,
--         78.5735 17.5480,
--         78.5735 17.5465,
--         78.5715 17.5465,
--         78.5715 17.5480
--     ))',
--     4326
-- )
-- WHERE zone_id = 'Z08';

-- UPDATE zones
-- SET geom = ST_GeomFromText(
--     'POLYGON((
--         78.5705 17.5462,
--         78.5725 17.5462,
--         78.5725 17.5445,
--         78.5705 17.5445,
--         78.5705 17.5462
--     ))',
--     4326
-- )
-- WHERE zone_id = 'Z05';


-- SELECT
--     zone_id,
--     zone_name,
--     ST_AsText(geom)
-- FROM zones;

SELECT zone_id, zone_name, geom
FROM zones;