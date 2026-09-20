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

-- SELECT zone_id, zone_name, geom
-- FROM zones;
-------------------------------------------------------------------------------

-- SELECT
--     l.landmark_id,
--     l.landmark_name,
--     l.zone_id,
--     z.zone_name,
--     ST_Within(l.geometry, z.geometry) AS actually_inside
-- FROM landmarks l
-- JOIN zones z
--     ON l.zone_id = z.zone_id
-- ORDER BY l.landmark_id;


-- BEGIN;

-- =========================================================
-- REPLACE EXISTING ZONE GEOMETRIES
-- =========================================================

-- =========================================================
-- Z01 - ACADEMIC ZONE
-- Covers the main academic buildings
-- =========================================================

-- UPDATE zones
-- SET
--     zone_name = 'Academic Zone',
--     zone_type = 'academic',
--     geometry = ST_GeomFromText(
--         'POLYGON((
--             78.5689 17.5470,
--             78.5702 17.5470,
--             78.5710 17.5468,
--             78.5720 17.5465,
--             78.5732 17.5460,
--             78.5735 17.5452,
--             78.5734 17.5442,
--             78.5728 17.5434,
--             78.5718 17.5429,
--             78.5707 17.5430,
--             78.5698 17.5440,
--             78.5689 17.5448,
--             78.5689 17.5470
--         ))',
--         4326
--     )
-- WHERE zone_id = 1;


-- -- =========================================================
-- -- Z02 - HOSTEL ZONE
-- -- Covers the main hostel area
-- -- =========================================================

-- UPDATE zones
-- SET
--     zone_name = 'Hostel Zone',
--     zone_type = 'residential',
--     geometry = ST_GeomFromText(
--         'POLYGON((
--             78.5727 17.5460,
--             78.5740 17.5460,
--             78.5750 17.5465,
--             78.5768 17.5460,
--             78.5772 17.5450,
--             78.5770 17.5438,
--             78.5765 17.5430,
--             78.5758 17.5425,
--             78.5748 17.5420,
--             78.5738 17.5410,
--             78.5725 17.5410,
--             78.5723 17.5420,
--             78.5725 17.5430,
--             78.5726 17.5440,
--             78.5727 17.5460
--         ))',
--         4326
--     )
-- WHERE zone_id = 2;


-- -- =========================================================
-- -- Z03 - FOOD & SHOPPING ZONE
-- -- Kept separate from hostel area
-- -- =========================================================

-- UPDATE zones
-- SET
--     zone_name = 'Food & Shopping Zone',
--     zone_type = 'commercial',
--     geometry = ST_GeomFromText(
--         'POLYGON((
--             78.5739 17.5448,
--             78.5746 17.5448,
--             78.5754 17.5449,
--             78.5763 17.5445,
--             78.5765 17.5436,
--             78.5763 17.5427,
--             78.5758 17.5420,
--             78.5749 17.5420,
--             78.5740 17.5423,
--             78.5737 17.5430,
--             78.5739 17.5448
--         ))',
--         4326
--     )
-- WHERE zone_id = 3;


-- -- =========================================================
-- -- Z04 - SPORTS ZONE
-- -- Covers sports facilities in the southern/eastern part
-- -- =========================================================

-- UPDATE zones
-- SET
--     zone_name = 'Sports Zone',
--     zone_type = 'recreation',
--     geometry = ST_GeomFromText(
--         'POLYGON((
--             78.5749 17.5433,
--             78.5760 17.5433,
--             78.5770 17.5428,
--             78.5780 17.5420,
--             78.5782 17.5408,
--             78.5780 17.5394,
--             78.5768 17.5392,
--             78.5757 17.5394,
--             78.5748 17.5402,
--             78.5746 17.5412,
--             78.5747 17.5422,
--             78.5749 17.5433
--         ))',
--         4326
--     )
-- WHERE zone_id = 4;


-- -- =========================================================
-- -- Z05 - ADMINISTRATION ZONE
-- -- Small dedicated area around Placement Unit
-- -- =========================================================

-- UPDATE zones
-- SET
--     zone_name = 'Administration Zone',
--     zone_type = 'administrative',
--     geometry = ST_GeomFromText(
--         'POLYGON((
--             78.5705 17.5463,
--             78.5710 17.5463,
--             78.5718 17.5461,
--             78.5719 17.5455,
--             78.5716 17.5452,
--             78.5708 17.5453,
--             78.5705 17.5457,
--             78.5705 17.5463
--         ))',
--         4326
--     )
-- WHERE zone_id = 5;


-- -- =========================================================
-- -- Z06 - MEDICAL ZONE
-- -- Dedicated area around Medical Centre
-- -- =========================================================

-- UPDATE zones
-- SET
--     zone_name = 'Medical Zone',
--     zone_type = 'medical',
--     geometry = ST_GeomFromText(
--         'POLYGON((
--             78.5761 17.5425,
--             78.5766 17.5425,
--             78.5769 17.5421,
--             78.5768 17.5416,
--             78.5764 17.5414,
--             78.5760 17.5417,
--             78.5761 17.5425
--         ))',
--         4326
--     )
-- WHERE zone_id = 6;


-- -- =========================================================
-- -- Z07 - RESEARCH ZONE
-- -- Dedicated area around TBI
-- -- =========================================================

-- UPDATE zones
-- SET
--     zone_name = 'Research Zone',
--     zone_type = 'research',
--     geometry = ST_GeomFromText(
--         'POLYGON((
--             78.5710 17.5465,
--             78.5714 17.5465,
--             78.5720 17.5463,
--             78.5720 17.5459,
--             78.5717 17.5457,
--             78.5711 17.5458,
--             78.5709 17.5461,
--             78.5710 17.5465
--         ))',
--         4326
--     )
-- WHERE zone_id = 7;


-- -- =========================================================
-- -- Z08 - CAMPUS ENTRANCE ZONE
-- -- Dedicated area around Main Gate
-- -- =========================================================

-- UPDATE zones
-- SET
--     zone_name = 'Campus Entrance Zone',
--     zone_type = 'entrance',
--     geometry = ST_GeomFromText(
--         'POLYGON((
--             78.5718 17.5477,
--             78.5725 17.5477,
--             78.5732 17.5475,
--             78.5733 17.5469,
--             78.5728 17.5466,
--             78.5722 17.5467,
--             78.5718 17.5470,
--             78.5718 17.5477
--         ))',
--         4326
--     )
-- WHERE zone_id = 8;


-- COMMIT;


-- SELECT
--     l.landmark_id,
--     l.landmark_name,
--     l.zone_id,
--     ST_Contains(z.geometry, l.geometry) AS inside_zone
-- FROM landmarks l
-- JOIN zones z
--     ON l.zone_id = z.zone_id
-- ORDER BY l.landmark_id;


-----------------------------------------------------------------------------

-- =========================================================
-- ADJUST Z02 - HOSTEL ZONE
-- To include Malviya Bhavan and Budh Bhavan
-- =========================================================

-- UPDATE zones
-- SET geometry = ST_GeomFromText(
--     'POLYGON((
--         78.5727 17.5450,
--         78.5768 17.5450,
--         78.5768 17.5405,
--         78.5727 17.5405,
--         78.5727 17.5450
--     ))',
--     4326
-- )
-- WHERE zone_id = 2;


-- -- =========================================================
-- -- ADJUST Z03 - FOOD & SHOPPING ZONE
-- -- To include Connaught Place / Shopping Area
-- -- =========================================================

-- UPDATE zones
-- SET geometry = ST_GeomFromText(
--     'POLYGON((
--         78.5750 17.5430,
--         78.5772 17.5430,
--         78.5772 17.5405,
--         78.5750 17.5405,
--         78.5750 17.5430
--     ))',
--     4326
-- )
-- WHERE zone_id = 3;

-------------------------------------------------------------------------------
-- =========================================================
-- Z02 HOSTEL ZONE
-- Includes:
-- Budh Bhavan
-- Gandhi Bhavan
-- Ganga Bhavan
-- Krishna Bhavan
-- Malviya Bhavan
-- Meera Bhavan
-- Ram Bhavan
-- Shankar Bhavan
-- Valmiki Bhavan
-- Vishwakarma Bhavan
-- =========================================================

-- UPDATE zones
-- SET geometry = ST_GeomFromText(
--     'POLYGON((
--         78.5727 17.5450,
--         78.5749 17.5450,
--         78.5749 17.5430,
--         78.5775 17.5430,
--         78.5775 17.5395,
--         78.5727 17.5395,
--         78.5727 17.5450
--     ))',
--     4326
-- )
-- WHERE zone_id = 2;


-- -- =========================================================
-- -- Z03 FOOD & SHOPPING ZONE
-- -- Includes:
-- -- Connaught Place / Shopping Area
-- -- Mess 1
-- -- Mess 2
-- -- =========================================================

-- UPDATE zones
-- SET geometry = ST_GeomFromText(
--     'POLYGON((
--         78.5749 17.5450,
--         78.5775 17.5450,
--         78.5775 17.5420,
--         78.5749 17.5420,
--         78.5749 17.5450
--     ))',
--     4326
-- )
-- WHERE zone_id = 3;

------------------------------------------------------------------------------
-- SELECT
--     l.landmark_id,
--     l.landmark_name,
--     l.zone_id,
--     ROUND(ST_X(l.geometry)::numeric, 6) AS longitude,
--     ROUND(ST_Y(l.geometry)::numeric, 6) AS latitude,
--     ST_Within(l.geometry, z.geometry) AS inside_zone
-- FROM landmarks l
-- JOIN zones z
--     ON l.zone_id = z.zone_id
-- ORDER BY l.zone_id, l.landmark_id;



------------------------------------------------------------------------------

-- =========================================================
-- FIX Z02 AND Z03
-- =========================================================

-- ---------------------------------------------------------
-- Z02 - HOSTEL ZONE
-- Includes all 10 hostel landmarks:
-- Budh, Gandhi, Ganga, Krishna, Malviya, Meera,
-- Ram, Shankar, Valmiki, Vishwakarma
-- ---------------------------------------------------------

-- UPDATE zones
-- SET geometry = ST_GeomFromText(
-- 'POLYGON((
--     78.57270 17.54320,
--     78.57330 17.54330,
--     78.57400 17.54340,
--     78.57460 17.54360,
--     78.57500 17.54500,
--     78.57540 17.54540,
--     78.57520 17.54640,
--     78.57670 17.54640,
--     78.57700 17.54450,
--     78.57670 17.54400,
--     78.57600 17.54370,
--     78.57540 17.54330,
--     78.57490 17.54290,
--     78.57430 17.54240,
--     78.57380 17.54120,
--     78.57300 17.54100,
--     78.57270 17.54200,
--     78.57270 17.54320
-- ))',
-- 4326)
-- WHERE zone_id = 2;


-- -- ---------------------------------------------------------
-- -- Z03 - FOOD & SHOPPING ZONE
-- -- Includes:
-- -- Connaught Place
-- -- Mess 1
-- -- Mess 2
-- -- ---------------------------------------------------------

-- UPDATE zones
-- SET geometry = ST_GeomFromText(
-- 'POLYGON((
--     78.57380 17.54220,
--     78.57420 17.54190,
--     78.57500 17.54180,
--     78.57560 17.54190,
--     78.57640 17.54180,
--     78.57670 17.54220,
--     78.57670 17.54300,
--     78.57630 17.54360,
--     78.57580 17.54420,
--     78.57540 17.54490,
--     78.57490 17.54490,
--     78.57470 17.54430,
--     78.57430 17.54370,
--     78.57380 17.54320,
--     78.57380 17.54220
-- ))',
-- 4326)
-- WHERE zone_id = 3;

------------------------------------------------------------------------------


-- SELECT
--     l.landmark_id,
--     l.landmark_name,
--     l.zone_id,
--     ST_Within(l.geometry, z.geometry) AS inside_zone
-- FROM landmarks l
-- JOIN zones z
--     ON l.zone_id = z.zone_id
-- ORDER BY l.zone_id, l.landmark_id;

--------------------------------------------------------------------------------
-- UPDATE zones
-- SET geometry = ST_GeomFromText(
-- 'POLYGON((
--     78.57270 17.54320,
--     78.57280 17.54240,
--     78.57290 17.54180,
--     78.57330 17.54130,
--     78.57400 17.54090,
--     78.57480 17.54080,
--     78.57520 17.54120,
--     78.57500 17.54200,
--     78.57480 17.54280,
--     78.57510 17.54350,
--     78.57530 17.54400,
--     78.57560 17.54440,
--     78.57600 17.54470,
--     78.57650 17.54480,
--     78.57670 17.54520,
--     78.57670 17.54570,
--     78.57650 17.54630,
--     78.57580 17.54640,
--     78.57520 17.54630,
--     78.57490 17.54580,
--     78.57470 17.54520,
--     78.57440 17.54490,
--     78.57390 17.54450,
--     78.57340 17.54390,
--     78.57270 17.54320
-- ))',
-- 4326)
-- WHERE zone_id = 2;


-- --------------------------------------------------------------------------
-- SELECT
--     l.landmark_id,
--     l.landmark_name,
--     ST_Within(l.geometry, z.geometry) AS inside_zone
-- FROM landmarks l
-- JOIN zones z
--     ON l.zone_id = z.zone_id
-- WHERE l.zone_id = 2
-- ORDER BY l.landmark_id;


----------------------------------------------------------------------
-- UPDATE zones
-- SET geometry =
-- (
--     SELECT ST_ConcaveHull(
--         ST_Collect(l.geometry),
--         0.80,
--         false
--     )
--     FROM landmarks l
--     WHERE l.zone_id = 2
-- )
-- WHERE zone_id = 2;
-------------------------------------------------------------------------

-- SELECT
--     l.landmark_id,
--     l.landmark_name,
--     l.zone_id,
--     ST_Within(l.geometry, z.geometry) AS inside_zone
-- FROM landmarks l
-- JOIN zones z
--     ON l.zone_id = z.zone_id
-- WHERE l.zone_id = 2
-- ORDER BY l.landmark_id;

--------------------------redo=---------------------------------------------

-----------------------------------------------------------------------------


-- BEGIN;

-- DELETE FROM landmarks;
-- DELETE FROM zones;

-- COMMIT;

---------------------------------------------------------------------------


-- BEGIN;

-- INSERT INTO zones
--     (zone_id, zone_name, zone_type, geometry)
-- VALUES

-- -- =====================================================
-- -- Z01 - ACADEMIC CORE
-- -- =====================================================
-- (
--     1,
--     'Academic Core',
--     'Academic',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'POLYGON((
--                 78.57100 17.54680,
--                 78.57420 17.54680,
--                 78.57500 17.54470,
--                 78.57400 17.54260,
--                 78.57080 17.54250,
--                 78.56980 17.54460,
--                 78.57100 17.54680
--             ))',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- =====================================================
-- -- Z02 - HOSTEL NORTH
-- -- =====================================================
-- (
--     2,
--     'Hostel North',
--     'Residential',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'POLYGON((
--                 78.57400 17.54950,
--                 78.57800 17.54950,
--                 78.57920 17.54690,
--                 78.57800 17.54490,
--                 78.57400 17.54510,
--                 78.57300 17.54720,
--                 78.57400 17.54950
--             ))',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- =====================================================
-- -- Z03 - HOSTEL SOUTH
-- -- =====================================================
-- (
--     3,
--     'Hostel South',
--     'Residential',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'POLYGON((
--                 78.57300 17.54280,
--                 78.57780 17.54300,
--                 78.57900 17.54060,
--                 78.57800 17.53830,
--                 78.57350 17.53850,
--                 78.57200 17.54060,
--                 78.57300 17.54280
--             ))',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- =====================================================
-- -- Z04 - SPORTS & SAC
-- -- =====================================================
-- (
--     4,
--     'Sports and SAC',
--     'Recreation',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'POLYGON((
--                 78.56700 17.54500,
--                 78.57100 17.54500,
--                 78.57250 17.54250,
--                 78.57150 17.53900,
--                 78.56700 17.53900,
--                 78.56550 17.54150,
--                 78.56700 17.54500
--             ))',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- =====================================================
-- -- Z05 - ADMINISTRATION & SERVICES
-- -- =====================================================
-- (
--     5,
--     'Administration and Services',
--     'Administrative',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'POLYGON((
--                 78.56800 17.54900,
--                 78.57200 17.54900,
--                 78.57350 17.54700,
--                 78.57200 17.54520,
--                 78.56800 17.54550,
--                 78.56700 17.54720,
--                 78.56800 17.54900
--             ))',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- =====================================================
-- -- Z06 - MEDICAL & SHOPPING
-- -- =====================================================
-- (
--     6,
--     'Medical and Shopping',
--     'Commercial',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'POLYGON((
--                 78.56400 17.54700,
--                 78.56800 17.54700,
--                 78.56900 17.54480,
--                 78.56800 17.54280,
--                 78.56400 17.54300,
--                 78.56300 17.54500,
--                 78.56400 17.54700
--             ))',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- =====================================================
-- -- Z07 - RESEARCH / WORKSHOP
-- -- =====================================================
-- (
--     7,
--     'Research and Workshop',
--     'Research',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'POLYGON((
--                 78.57600 17.54400,
--                 78.58000 17.54400,
--                 78.58100 17.54150,
--                 78.57950 17.53900,
--                 78.57600 17.53950,
--                 78.57500 17.54180,
--                 78.57600 17.54400
--             ))',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- =====================================================
-- -- Z08 - ENTRANCE / CAMPUS EDGE
-- -- =====================================================
-- (
--     8,
--     'Main Entrance',
--     'Entrance',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'POLYGON((
--                 78.56150 17.54850,
--                 78.56500 17.54850,
--                 78.56600 17.54600,
--                 78.56500 17.54350,
--                 78.56150 17.54380,
--                 78.56050 17.54600,
--                 78.56150 17.54850
--             ))',
--             4326
--         ),
--         4326
--     )
-- );

-- COMMIT;
-----------------------------------------------------------------------------
-- BEGIN;

-- INSERT INTO landmarks
--     (landmark_id, zone_id, landmark_name, geometry)
-- VALUES

-- -- =====================================================
-- -- ACADEMIC CORE - ZONE 1
-- -- =====================================================

-- (1, 1, 'A Block',
--     ST_SetSRID(ST_MakePoint(78.57200,17.54520),4326)),

-- (2, 1, 'B Block',
--     ST_SetSRID(ST_MakePoint(78.57260,17.54510),4326)),

-- (3, 1, 'C Block',
--     ST_SetSRID(ST_MakePoint(78.57320,17.54480),4326)),

-- (4, 1, 'D + F Block',
--     ST_SetSRID(ST_MakePoint(78.57180,17.54420),4326)),

-- (5, 1, 'E Block',
--     ST_SetSRID(ST_MakePoint(78.57340,17.54400),4326)),

-- (6, 1, 'H Block / Mathematics',
--     ST_SetSRID(ST_MakePoint(78.57230,17.54350),4326)),

-- (7, 1, 'I Block',
--     ST_SetSRID(ST_MakePoint(78.57310,17.54340),4326)),

-- (8, 1, 'J Block',
--     ST_SetSRID(ST_MakePoint(78.57370,17.54350),4326)),

-- (9, 1, 'K Block',
--     ST_SetSRID(ST_MakePoint(78.57140,17.54470),4326)),

-- (10, 1, 'Central Library',
--     ST_SetSRID(ST_MakePoint(78.57250,17.54430),4326)),

-- (11, 1, 'Auditorium',
--     ST_SetSRID(ST_MakePoint(78.57160,17.54320),4326)),

-- (12, 1, 'Lecture Theatre Complex',
--     ST_SetSRID(ST_MakePoint(78.57400,17.54480),4326)),


-- -- =====================================================
-- -- HOSTEL NORTH - ZONE 2
-- -- =====================================================

-- (13, 2, 'HB01 Hostel',
--     ST_SetSRID(ST_MakePoint(78.57500,17.54840),4326)),

-- (14, 2, 'HB02 Hostel',
--     ST_SetSRID(ST_MakePoint(78.57600,17.54840),4326)),

-- (15, 2, 'HB03 Hostel',
--     ST_SetSRID(ST_MakePoint(78.57700,17.54820),4326)),

-- (16, 2, 'HB04 Hostel',
--     ST_SetSRID(ST_MakePoint(78.57520,17.54690),4326)),

-- (17, 2, 'HB05 Hostel',
--     ST_SetSRID(ST_MakePoint(78.57620,17.54690),4326)),

-- (18, 2, 'HB06 Hostel',
--     ST_SetSRID(ST_MakePoint(78.57730,17.54680),4326)),

-- (19, 2, 'HB07 Hostel',
--     ST_SetSRID(ST_MakePoint(78.57530,17.54600),4326)),

-- (20, 2, 'HB08 Hostel',
--     ST_SetSRID(ST_MakePoint(78.57650,17.54590),4326)),

-- (21, 2, 'HB09 Hostel',
--     ST_SetSRID(ST_MakePoint(78.57750,17.54600),4326)),

-- (22, 2, 'Hostel North Mess',
--     ST_SetSRID(ST_MakePoint(78.57600,17.54730),4326)),


-- -- =====================================================
-- -- HOSTEL SOUTH - ZONE 3
-- -- =====================================================

-- (23, 3, 'HG01 Girls Hostel',
--     ST_SetSRID(ST_MakePoint(78.57400,17.54180),4326)),

-- (24, 3, 'HG02 Girls Hostel',
--     ST_SetSRID(ST_MakePoint(78.57500,17.54150),4326)),

-- (25, 3, 'HG03 Girls Hostel',
--     ST_SetSRID(ST_MakePoint(78.57600,17.54140),4326)),

-- (26, 3, 'Hostel South Mess',
--     ST_SetSRID(ST_MakePoint(78.57500,17.54050),4326)),

-- (27, 3, 'Hostel Recreation Area',
--     ST_SetSRID(ST_MakePoint(78.57400,17.53980),4326)),


-- -- =====================================================
-- -- SPORTS & SAC - ZONE 4
-- -- =====================================================

-- (28, 4, 'Student Activity Centre',
--     ST_SetSRID(ST_MakePoint(78.56850,17.54220),4326)),

-- (29, 4, 'Gymnasium',
--     ST_SetSRID(ST_MakePoint(78.56900,17.54180),4326)),

-- (30, 4, 'Basketball Court',
--     ST_SetSRID(ST_MakePoint(78.57000,17.54180),4326)),

-- (31, 4, 'Tennis Courts',
--     ST_SetSRID(ST_MakePoint(78.57050,17.54080),4326)),

-- (32, 4, 'Volleyball Courts',
--     ST_SetSRID(ST_MakePoint(78.56800,17.54050),4326)),

-- (33, 4, 'Football Ground',
--     ST_SetSRID(ST_MakePoint(78.56900,17.53980),4326)),

-- (34, 4, 'Cricket Ground',
--     ST_SetSRID(ST_MakePoint(78.57050,17.53980),4326)),

-- (35, 4, 'Amphitheatre',
--     ST_SetSRID(ST_MakePoint(78.56750,17.54280),4326)),


-- -- =====================================================
-- -- ADMINISTRATION - ZONE 5
-- -- =====================================================

-- (36, 5, 'Main Administrative Block',
--     ST_SetSRID(ST_MakePoint(78.56900,17.54780),4326)),

-- (37, 5, 'Admissions Office',
--     ST_SetSRID(ST_MakePoint(78.57000,17.54770),4326)),

-- (38, 5, 'Practice School Office',
--     ST_SetSRID(ST_MakePoint(78.57100,17.54750),4326)),

-- (39, 5, 'Student Welfare Division',
--     ST_SetSRID(ST_MakePoint(78.57150,17.54670),4326)),

-- (40, 5, 'Information Processing Centre',
--     ST_SetSRID(ST_MakePoint(78.56950,17.54630),4326)),


-- -- =====================================================
-- -- MEDICAL / SHOPPING - ZONE 6
-- -- =====================================================

-- (41, 6, 'Medical Centre',
--     ST_SetSRID(ST_MakePoint(78.56500,17.54550),4326)),

-- (42, 6, 'Shopping Complex',
--     ST_SetSRID(ST_MakePoint(78.56600,17.54550),4326)),

-- (43, 6, 'Campus Supermarket',
--     ST_SetSRID(ST_MakePoint(78.56650,17.54500),4326)),

-- (44, 6, 'SBI ATM / Bank',
--     ST_SetSRID(ST_MakePoint(78.56550,17.54430),4326)),

-- (45, 6, 'HDFC ATM',
--     ST_SetSRID(ST_MakePoint(78.56650,17.54420),4326)),

-- (46, 6, 'Campus Cafeteria',
--     ST_SetSRID(ST_MakePoint(78.56700,17.54580),4326)),


-- -- =====================================================
-- -- RESEARCH / WORKSHOP - ZONE 7
-- -- =====================================================

-- (47, 7, 'Central Workshop',
--     ST_SetSRID(ST_MakePoint(78.57700,17.54250),4326)),

-- (48, 7, 'Research Complex',
--     ST_SetSRID(ST_MakePoint(78.57800,17.54200),4326)),

-- (49, 7, 'TBI Centre',
--     ST_SetSRID(ST_MakePoint(78.57900,17.54150),4326)),

-- (50, 7, 'Laboratory Complex',
--     ST_SetSRID(ST_MakePoint(78.57750,17.54050),4326)),

-- (51, 7, 'Faculty Research Area',
--     ST_SetSRID(ST_MakePoint(78.57900,17.54030),4326)),


-- -- =====================================================
-- -- MAIN ENTRANCE - ZONE 8
-- -- =====================================================

-- (52, 8, 'Main Gate',
--     ST_SetSRID(ST_MakePoint(78.56300,17.54620),4326)),

-- (53, 8, 'Security Office',
--     ST_SetSRID(ST_MakePoint(78.56250,17.54650),4326)),

-- (54, 8, 'Campus Bus Stop',
--     ST_SetSRID(ST_MakePoint(78.56350,17.54550),4326)),

-- (55, 8, 'Visitor Parking',
--     ST_SetSRID(ST_MakePoint(78.56400,17.54700),4326)),

-- (56, 8, 'Main Entrance Road',
--     ST_SetSRID(ST_MakePoint(78.56200,17.54580),4326));

-- COMMIT;

----------------------------------------------------------------------
-- SELECT
--     l.landmark_name,
--     z.zone_name
-- FROM landmarks l
-- JOIN zones z
--     ON ST_Within(l.geometry, z.geometry)
-- ORDER BY z.zone_id, l.landmark_id;
-------------------------------------------------------------------------

-----------------------------ROUTES-------------------------------------

---------------------------------------------------------------------


-- BEGIN;

-- INSERT INTO routes
--     (route_id, route_name, geometry)
-- VALUES

-- -- 1. Main entrance → Academic Core
-- (
--     1,
--     'Main Gate to Academic Core',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'LINESTRING(
--                 78.56300 17.54620,
--                 78.56420 17.54600,
--                 78.56550 17.54550,
--                 78.56700 17.54500,
--                 78.56850 17.54480,
--                 78.57000 17.54480,
--                 78.57200 17.54480
--             )',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- 2. Academic Core → Hostel North
-- (
--     2,
--     'Academic Core to Hostel North',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'LINESTRING(
--                 78.57200 17.54480,
--                 78.57300 17.54550,
--                 78.57400 17.54620,
--                 78.57500 17.54700,
--                 78.57600 17.54750,
--                 78.57650 17.54820
--             )',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- 3. Academic Core → Hostel South
-- (
--     3,
--     'Academic Core to Hostel South',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'LINESTRING(
--                 78.57200 17.54480,
--                 78.57300 17.54400,
--                 78.57400 17.54300,
--                 78.57500 17.54200,
--                 78.57500 17.54100,
--                 78.57500 17.54020
--             )',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- 4. Academic Core → Sports / SAC
-- (
--     4,
--     'Academic Core to Sports and SAC',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'LINESTRING(
--                 78.57200 17.54480,
--                 78.57080 17.54400,
--                 78.57000 17.54300,
--                 78.56950 17.54220,
--                 78.56900 17.54100,
--                 78.56900 17.54000
--             )',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- 5. Main Gate → Administration
-- (
--     5,
--     'Main Gate to Administration',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'LINESTRING(
--                 78.56300 17.54620,
--                 78.56450 17.54700,
--                 78.56600 17.54750,
--                 78.56800 17.54770,
--                 78.56950 17.54770,
--                 78.57100 17.54750
--             )',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- 6. Administration → Academic Core
-- (
--     6,
--     'Administration to Academic Core',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'LINESTRING(
--                 78.57000 17.54750,
--                 78.57050 17.54650,
--                 78.57100 17.54550,
--                 78.57200 17.54480
--             )',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- 7. Main Gate → Medical / Shopping
-- (
--     7,
--     'Main Gate to Medical and Shopping',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'LINESTRING(
--                 78.56300 17.54620,
--                 78.56400 17.54600,
--                 78.56500 17.54550,
--                 78.56600 17.54520,
--                 78.56700 17.54550
--             )',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- 8. Medical / Shopping → Sports
-- (
--     8,
--     'Medical and Shopping to Sports',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'LINESTRING(
--                 78.56600 17.54520,
--                 78.56700 17.54450,
--                 78.56800 17.54350,
--                 78.56850 17.54250,
--                 78.56900 17.54150
--             )',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- 9. Hostel North → Research / Workshop
-- (
--     9,
--     'Hostel North to Research and Workshop',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'LINESTRING(
--                 78.57650 17.54820,
--                 78.57750 17.54700,
--                 78.57800 17.54550,
--                 78.57850 17.54400,
--                 78.57850 17.54250,
--                 78.57900 17.54150
--             )',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- 10. Hostel South → Research / Workshop
-- (
--     10,
--     'Hostel South to Research and Workshop',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'LINESTRING(
--                 78.57500 17.54020,
--                 78.57600 17.54000,
--                 78.57700 17.54050,
--                 78.57800 17.54100,
--                 78.57900 17.54150
--             )',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- 11. Academic internal route
-- (
--     11,
--     'Academic Core Internal Route',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'LINESTRING(
--                 78.57140 17.54470,
--                 78.57200 17.54520,
--                 78.57260 17.54510,
--                 78.57320 17.54480,
--                 78.57340 17.54400,
--                 78.57310 17.54340,
--                 78.57230 17.54350,
--                 78.57180 17.54420,
--                 78.57140 17.54470
--             )',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- 12. Hostel loop
-- (
--     12,
--     'Hostel North Loop',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'LINESTRING(
--                 78.57500 17.54840,
--                 78.57600 17.54840,
--                 78.57700 17.54820,
--                 78.57750 17.54680,
--                 78.57650 17.54590,
--                 78.57530 17.54600,
--                 78.57400 17.54690,
--                 78.57500 17.54840
--             )',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- 13. Sports loop
-- (
--     13,
--     'Sports Complex Loop',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'LINESTRING(
--                 78.56750 17.54280,
--                 78.56850 17.54220,
--                 78.56900 17.54100,
--                 78.57000 17.54180,
--                 78.57050 17.54080,
--                 78.57050 17.53980,
--                 78.56900 17.53980,
--                 78.56800 17.54050,
--                 78.56750 17.54280
--             )',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- 14. Full campus north-south route
-- (
--     14,
--     'Campus North-South Route',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'LINESTRING(
--                 78.56300 17.54620,
--                 78.56600 17.54550,
--                 78.57000 17.54480,
--                 78.57400 17.54400,
--                 78.57500 17.54200,
--                 78.57500 17.54020
--             )',
--             4326
--         ),
--         4326
--     )
-- ),

-- -- 15. Full campus east-west route
-- (
--     15,
--     'Campus East-West Route',
--     ST_SetSRID(
--         ST_GeomFromText(
--             'LINESTRING(
--                 78.56300 17.54620,
--                 78.56700 17.54550,
--                 78.57100 17.54500,
--                 78.57500 17.54500,
--                 78.57800 17.54400,
--                 78.57900 17.54150
--             )',
--             4326
--         ),
--         4326
--     )
-- );

-- COMMIT;





----------------------------------------------------------------------------
-- SELECT
--     route_id,
--     route_name,
--     ST_GeometryType(geometry) AS geometry_type,
--     ST_SRID(geometry) AS srid,
--     ST_IsValid(geometry) AS valid
-- FROM routes
-- ORDER BY route_id;


-----------------------------------------------------------------------------

-------------------------------user_prefereence------------------------------


----------------------------------------------------------------------------


-- INSERT INTO user_preferences
--     (user_id, slot_id, landmark_id, created_at, updated_at)

-- SELECT
--     100000 + u.user_id_offset AS user_id,
--     p.slot_id,
--     p.landmark_id,
--     p.created_at,
--     p.updated_at

-- FROM generate_series(0, 999) AS u(user_id_offset)

-- CROSS JOIN LATERAL (
--     SELECT
--         slot_id,
--         landmark_id,
--         created_at,
--         updated_at
--     FROM (
--         SELECT
--             s.slot_id,
--             1 + FLOOR(RANDOM() * 56)::INT AS landmark_id,

--             NOW()
--             - (FLOOR(RANDOM() * 30 * 24 * 60 * 60) || ' seconds')::INTERVAL
--             AS created_at,

--             NOW()
--             - (FLOOR(RANDOM() * 7 * 24 * 60 * 60) || ' seconds')::INTERVAL
--             AS updated_at

--         FROM generate_series(1, 42) AS s(slot_id)
--         ORDER BY RANDOM()
--         LIMIT
--             CASE
--                 -- 20% of users: 1–10 preferences
--                 WHEN u.user_id_offset < 200
--                     THEN 1 + FLOOR(RANDOM() * 10)::INT

--                 -- 80% of users: 11–21 preferences
--                 ELSE
--                     11 + FLOOR(RANDOM() * 11)::INT
--             END
--     ) AS preference_data
-- ) p;


-----------------------------------------------------------------------------

-- SELECT COUNT(*) AS total_rows
-- FROM user_preferences;

-- SELECT
--     COUNT(DISTINCT user_id) AS users,
--     COUNT(DISTINCT slot_id) AS slots,
--     COUNT(DISTINCT landmark_id) AS landmarks
-- FROM user_preferences;

-- SELECT
--     COUNT(*) AS total,
--     COUNT(DISTINCT (user_id, slot_id)) AS unique_user_slot
-- FROM user_preferences;


-- select * from user_preferences;

------------------------------------------------------------------------------

------------------------------------packages____________________________

-----------------------------------------------------------------------------


-- INSERT INTO packages
--     (package_id, user_id, delivery_person_id, assigned_at, current_status)

-- SELECT
--     n AS package_id,

--     100000 + FLOOR(RANDOM() * 1000)::INT AS user_id,

--     1 + FLOOR(RANDOM() * 100)::INT AS delivery_person_id,

--     NOW()
--         - (FLOOR(RANDOM() * 30 * 24 * 60 * 60) || ' seconds')::INTERVAL
--         AS assigned_at,

--     CASE
--         WHEN RANDOM() < 0.40 THEN 'out_for_delivery'
--         WHEN RANDOM() < 0.80 THEN 'delivered'
--         ELSE 'not_delivered'
--     END AS current_status

-- FROM generate_series(1, 600) AS s(n);


-----------------------------------------------------------------------------

--select * from packages;
-----------------------------------------------------------------------------

----------------package_delivery-log---------------------------------------

-----------------------------------------------------------------------------

-- INSERT INTO package_delivery_log
--     (package_id, delivered_at, delivery_person_id, slot_id, landmark_id, rating)

-- SELECT
--     p.package_id,

--     p.assigned_at
--         + (FLOOR(RANDOM() * 8 * 60 * 60) || ' seconds')::INTERVAL
--         AS delivered_at,

--     p.delivery_person_id,

--     1 + FLOOR(RANDOM() * 42)::INT AS slot_id,

--     1 + FLOOR(RANDOM() * 56)::INT AS landmark_id,

--     CASE
--         WHEN p.current_status = 'delivered'
--         THEN 1 + FLOOR(RANDOM() * 5)::INT
--         ELSE NULL
--     END AS rating

-- FROM packages p;

------------------------------------------------------------------------------
------------------------------------queries-----------------------------------

-------------------------------------------------------------------------------

-- SELECT
--     p.package_id,
--     p.user_id,
--     p.current_status,
--     up.slot_id,
--     up.landmark_id,
--     l.landmark_name,
--     z.zone_name
-- FROM packages p
-- JOIN user_preferences up
--     ON p.user_id = up.user_id
-- JOIN landmarks l
--     ON up.landmark_id = l.landmark_id
-- JOIN zones z
--     ON l.zone_id = z.zone_id
-- WHERE p.current_status = 'out_for_delivery'
-- ORDER BY p.user_id, up.slot_id;

-----------------------------------------------------------------------

-- SELECT
--     dp.delivery_person_id,
--     dp.name,
--     p.package_id,
--     p.user_id,
--     p.current_status,
--     up.slot_id,
--     up.landmark_id,
--     l.landmark_name,
--     z.zone_name
-- FROM delivery_persons dp
-- JOIN packages p
--     ON dp.delivery_person_id = p.delivery_person_id
-- JOIN user_preferences up
--     ON p.user_id = up.user_id
-- JOIN landmarks l
--     ON up.landmark_id = l.landmark_id
-- JOIN zones z
--     ON l.zone_id = z.zone_id
-- WHERE p.current_status = 'out_for_delivery'
-- ORDER BY
--     dp.delivery_person_id,
--     up.slot_id;
-------------------------------------------------------------------------------

------------------------delivery_person-status-------------------------------

-----------------------------------------------------------------------------

-- ROLLBACK;

-- DELETE FROM delivery_person_status;

-- ROLLBACK;

---------------------------------------------
-- INSERT INTO delivery_person_status
-- (
--     delivery_person_id,
--     time_stamp,
--     status,
--     start_time,
--     end_time
-- )
-- SELECT
--     dp.delivery_person_id,

--     d.delivery_date + t.start_time AS time_stamp,

--     t.status,

--     d.delivery_date + t.start_time AS start_time,

--     d.delivery_date + t.end_time AS end_time

-- FROM delivery_persons dp

-- CROSS JOIN generate_series(
--     CURRENT_DATE - INTERVAL '29 days',
--     CURRENT_DATE,
--     INTERVAL '1 day'
-- ) AS d(delivery_date)

-- CROSS JOIN LATERAL (
--     VALUES

--         -- 12:00 - 13:00
--         (
--             'Available'::VARCHAR(30),
--             TIME '12:00',
--             TIME '13:00'
--         ),

--         -- 13:00 - 14:30
--         (
--             'On Delivery'::VARCHAR(30),
--             TIME '13:00',
--             TIME '14:30'
--         ),

--         -- 14:30 - 15:30
--         (
--             'Available'::VARCHAR(30),
--             TIME '14:30',
--             TIME '15:30'
--         ),

--         -- 15:30 - 16:30
--         (
--             'On Delivery'::VARCHAR(30),
--             TIME '15:30',
--             TIME '16:30'
--         ),

--         -- 16:30 - 17:30
--         (
--             CASE
--                 WHEN dp.delivery_person_id % 5 = 2
--                     THEN 'Offline'

--                 WHEN dp.delivery_person_id % 5 IN (0, 1)
--                     THEN 'On Delivery'

--                 ELSE 'Available'
--             END::VARCHAR(30),

--             TIME '16:30',
--             TIME '17:30'
--         )

-- ) AS t(status, start_time, end_time);



-------------------------------------------------------------------------------

------------------------delivery_person-gps----------------------------------


-----------------------------------------------------------------------------
-- ROLLBACK;

--DELETE FROM delivery_person_gps;

-- ROLLBACK;

-- DELETE FROM delivery_person_gps;

-- WITH person_days AS (
--     SELECT
--         dp.delivery_person_id,
--         d.delivery_date,

--         -- Assign routes using the delivery person's ID.
--         -- Different people get different routes.
--         CASE
--             WHEN dp.delivery_person_id % 15 = 1  THEN 1
--             WHEN dp.delivery_person_id % 15 = 2  THEN 2
--             WHEN dp.delivery_person_id % 15 = 3  THEN 3
--             WHEN dp.delivery_person_id % 15 = 4  THEN 4
--             WHEN dp.delivery_person_id % 15 = 5  THEN 5
--             WHEN dp.delivery_person_id % 15 = 6  THEN 6
--             WHEN dp.delivery_person_id % 15 = 7  THEN 7
--             WHEN dp.delivery_person_id % 15 = 8  THEN 8
--             WHEN dp.delivery_person_id % 15 = 9  THEN 9
--             WHEN dp.delivery_person_id % 15 = 10 THEN 10
--             WHEN dp.delivery_person_id % 15 = 11 THEN 11
--             WHEN dp.delivery_person_id % 15 = 12 THEN 12
--             WHEN dp.delivery_person_id % 15 = 13 THEN 13
--             WHEN dp.delivery_person_id % 15 = 14 THEN 14
--             ELSE 15
--         END AS route_id,

--         -- Different starting positions
--         ((dp.delivery_person_id * 7) % 55) / 100.0
--             AS start_fraction

--     FROM delivery_persons dp

--     CROSS JOIN generate_series(
--         CURRENT_DATE - INTERVAL '29 days',
--         CURRENT_DATE,
--         INTERVAL '1 day'
--     ) AS d(delivery_date)
-- ),

-- gps_points AS (
--     SELECT
--         pd.delivery_person_id,
--         pd.delivery_date,
--         pd.route_id,
--         pd.start_fraction,
--         g.interval_no
--     FROM person_days pd

--     CROSS JOIN generate_series(
--         0,
--         66
--     ) AS g(interval_no)
-- )

-- INSERT INTO delivery_person_gps
-- (
--     delivery_person_id,
--     recorded_at,
--     position
-- )

-- SELECT
--     gp.delivery_person_id,

--     gp.delivery_date
--         + TIME '12:00'
--         + gp.interval_no * INTERVAL '5 minutes'
--         AS recorded_at,

--     ST_LineInterpolatePoint(
--         r.geometry,

--         LEAST(
--             0.98,

--             gp.start_fraction
--             +
--             (
--                 gp.interval_no::DOUBLE PRECISION
--                 / 66.0
--             ) * 0.45
--         )
--     ) AS position

-- FROM gps_points gp

-- JOIN routes r
--     ON r.route_id = gp.route_id;

-------------------------------------------------------------------------------

------------------------ADVANCED _ QUERY___________________-------------------

----------------------------------------------------------------------------=-
-- WITH latest_gps AS (
--     -- Get the latest known GPS position of every delivery person
--     SELECT DISTINCT ON (delivery_person_id)
--         delivery_person_id,
--         recorded_at,
--         position
--     FROM delivery_person_gps
--     ORDER BY delivery_person_id, recorded_at DESC
-- ),

-- latest_status AS (
--     -- Get the latest status of every delivery person
--     SELECT DISTINCT ON (delivery_person_id)
--         delivery_person_id,
--         time_stamp,
--         status,
--         start_time,
--         end_time
--     FROM delivery_person_status
--     ORDER BY delivery_person_id, time_stamp DESC
-- ),

-- package_summary AS (
--     -- Calculate package workload for each delivery person
--     SELECT
--         delivery_person_id,
--         COUNT(*) AS total_packages,

--         COUNT(*) FILTER (
--             WHERE current_status = 'Out for Delivery'
--         ) AS active_packages,

--         COUNT(*) FILTER (
--             WHERE current_status = 'Delivered'
--         ) AS delivered_packages,

--         COUNT(*) FILTER (
--             WHERE current_status = 'Not Delivered'
--         ) AS failed_packages

--     FROM packages
--     GROUP BY delivery_person_id
-- ),

-- delivery_history AS (
--     -- Delivery performance from delivery log
--     SELECT
--         delivery_person_id,

--         COUNT(*) FILTER (
--             WHERE delivered_at IS NOT NULL
--         ) AS completed_deliveries,

--         ROUND(
--             AVG(rating) FILTER (
--                 WHERE rating IS NOT NULL
--             ),
--             2
--         ) AS average_rating,

--         MAX(delivered_at) AS last_delivery_time

--     FROM package_delivery_log
--     GROUP BY delivery_person_id
-- ),

-- person_zones AS (
--     -- Find zones currently associated with active packages
--     SELECT DISTINCT
--         p.delivery_person_id,
--         z.zone_id,
--         z.zone_name

--     FROM packages p

--     JOIN user_preferences up
--         ON p.user_id = up.user_id

--     JOIN landmarks l
--         ON up.landmark_id = l.landmark_id

--     JOIN zones z
--         ON l.zone_id = z.zone_id

--     WHERE p.current_status = 'Out for Delivery'
-- ),

-- nearest_landmark AS (
--     -- Find the nearest landmark to the delivery person's latest GPS position
--     SELECT DISTINCT ON (g.delivery_person_id)
--         g.delivery_person_id,
--         l.landmark_id,
--         l.landmark_name,
--         z.zone_name,

--         ST_Distance(
--             g.position::geography,
--             l.geometry::geography
--         ) AS distance_meters

--     FROM latest_gps g

--     CROSS JOIN landmarks l

--     JOIN zones z
--         ON l.zone_id = z.zone_id

--     ORDER BY
--         g.delivery_person_id,
--         g.position <-> l.geometry
-- ),

-- active_users AS (
--     -- Users currently waiting for packages
--     SELECT
--         p.delivery_person_id,
--         COUNT(DISTINCT p.user_id) AS active_users,

--         COUNT(DISTINCT up.slot_id) AS available_slots,

--         COUNT(DISTINCT up.landmark_id) AS preferred_landmarks

--     FROM packages p

--     JOIN user_preferences up
--         ON p.user_id = up.user_id

--     WHERE p.current_status = 'Out for Delivery'

--     GROUP BY p.delivery_person_id
-- ),

-- route_proximity AS (
--     -- Find the closest campus route to each delivery person's current position
--     SELECT DISTINCT ON (g.delivery_person_id)
--         g.delivery_person_id,
--         r.route_id,
--         r.route_name,

--         ST_Distance(
--             g.position::geography,
--             r.geometry::geography
--         ) AS distance_to_route_meters

--     FROM latest_gps g

--     CROSS JOIN routes r

--     ORDER BY
--         g.delivery_person_id,
--         g.position <-> r.geometry
-- )

-- SELECT

--     -- Delivery person
--     dp.delivery_person_id,
--     dp.name,
--     dp.contact,

--     -- Delivery company
--     dc.company_id,
--     dc.company_name,

--     -- Current status
--     ls.status AS current_status,
--     ls.time_stamp AS status_recorded_at,

--     -- GPS
--     lg.recorded_at AS gps_recorded_at,

--     ROUND(
--         ST_Y(lg.position)::numeric,
--         6
--     ) AS latitude,

--     ROUND(
--         ST_X(lg.position)::numeric,
--         6
--     ) AS longitude,

--     -- Nearest landmark
--     nl.landmark_name AS nearest_landmark,
--     nl.zone_name AS nearest_landmark_zone,

--     ROUND(
--         nl.distance_meters::numeric,
--         2
--     ) AS distance_to_landmark_m,

--     -- Nearest route
--     rp.route_name AS nearest_route,

--     ROUND(
--         rp.distance_to_route_meters::numeric,
--         2
--     ) AS distance_to_route_m,

--     -- Package workload
--     COALESCE(ps.total_packages, 0) AS total_packages,
--     COALESCE(ps.active_packages, 0) AS active_packages,
--     COALESCE(ps.delivered_packages, 0) AS delivered_packages,
--     COALESCE(ps.failed_packages, 0) AS failed_packages,

--     -- User demand
--     COALESCE(au.active_users, 0) AS active_users,
--     COALESCE(au.available_slots, 0) AS available_slots,
--     COALESCE(au.preferred_landmarks, 0) AS preferred_landmarks,

--     -- Performance
--     COALESCE(dh.completed_deliveries, 0) AS completed_deliveries,
--     dh.average_rating,
--     dh.last_delivery_time,

--     -- Active delivery zones
--     STRING_AGG(
--         DISTINCT pz.zone_name,
--         ', '
--     ) AS active_delivery_zones,

--     -- Workload classification
--     CASE
--         WHEN COALESCE(ps.active_packages, 0) >= 10
--             THEN 'HIGH'
--         WHEN COALESCE(ps.active_packages, 0) >= 5
--             THEN 'MEDIUM'
--         WHEN COALESCE(ps.active_packages, 0) > 0
--             THEN 'LOW'
--         ELSE 'NO ACTIVE DELIVERY'
--     END AS workload_level

-- FROM delivery_persons dp

-- JOIN delivery_companies dc
--     ON dp.company_id = dc.company_id

-- LEFT JOIN latest_gps lg
--     ON dp.delivery_person_id = lg.delivery_person_id

-- LEFT JOIN latest_status ls
--     ON dp.delivery_person_id = ls.delivery_person_id

-- LEFT JOIN package_summary ps
--     ON dp.delivery_person_id = ps.delivery_person_id

-- LEFT JOIN delivery_history dh
--     ON dp.delivery_person_id = dh.delivery_person_id

-- LEFT JOIN active_users au
--     ON dp.delivery_person_id = au.delivery_person_id

-- LEFT JOIN nearest_landmark nl
--     ON dp.delivery_person_id = nl.delivery_person_id

-- LEFT JOIN route_proximity rp
--     ON dp.delivery_person_id = rp.delivery_person_id

-- LEFT JOIN person_zones pz
--     ON dp.delivery_person_id = pz.delivery_person_id

-- GROUP BY
--     dp.delivery_person_id,
--     dp.name,
--     dp.contact,
--     dc.company_id,
--     dc.company_name,
--     ls.status,
--     ls.time_stamp,
--     lg.recorded_at,
--     lg.position,
--     nl.landmark_name,
--     nl.zone_name,
--     nl.distance_meters,
--     rp.route_name,
--     rp.distance_to_route_meters,
--     ps.total_packages,
--     ps.active_packages,
--     ps.delivered_packages,
--     ps.failed_packages,
--     au.active_users,
--     au.available_slots,
--     au.preferred_landmarks,
--     dh.completed_deliveries,
--     dh.average_rating,
--     dh.last_delivery_time

-- ORDER BY
--     active_packages DESC,
--     average_rating DESC NULLS LAST;


------------------------------------------------------------------------------
-- SELECT
--     g.delivery_person_id,
--     ROUND(ST_Y(g.position)::numeric, 6) AS latitude,
--     ROUND(ST_X(g.position)::numeric, 6) AS longitude,
--     l.landmark_name,
--     ROUND(
--         ST_Distance(
--             g.position::geography,
--             l.geometry::geography
--         )::numeric,
--         2
--     ) AS distance_meters
-- FROM delivery_person_gps g
-- JOIN LATERAL (
--     SELECT
--         landmark_name,
--         geometry
--     FROM landmarks
--     ORDER BY g.position <-> geometry
--     LIMIT 1
-- ) l ON TRUE
-- WHERE g.recorded_at = (
--     SELECT MAX(g2.recorded_at)
--     FROM delivery_person_gps g2
--     WHERE g2.delivery_person_id = g.delivery_person_id
-- )
-- ORDER BY distance_meters
-- LIMIT 20;

------------------------------------------------------------------------------
-- CREATE OR REPLACE VIEW latest_delivery_positions AS

-- SELECT DISTINCT ON (delivery_person_id)
--     delivery_person_id,
--     recorded_at,
--     position
-- FROM delivery_person_gps
-- ORDER BY delivery_person_id, recorded_at DESC;

----------------------------------------------------------------------
-- CREATE OR REPLACE VIEW delivery_person_live_map AS

-- WITH latest_gps AS (
--     SELECT DISTINCT ON (delivery_person_id)
--         delivery_person_id,
--         recorded_at,
--         position
--     FROM delivery_person_gps
--     ORDER BY delivery_person_id, recorded_at DESC
-- ),

-- latest_status AS (
--     SELECT DISTINCT ON (delivery_person_id)
--         delivery_person_id,
--         time_stamp,
--         status
--     FROM delivery_person_status
--     ORDER BY delivery_person_id, time_stamp DESC
-- )



--------------------------queries----------------------------------------------

-- SELECT
--     dp.delivery_person_id,
--     dp.name,
--     dp.contact,
--     dp.company_id,
--     lg.recorded_at,
--     lg.position,
--     ls.status
-- FROM delivery_persons dp
-- LEFT JOIN latest_gps lg
--     ON dp.delivery_person_id = lg.delivery_person_id
-- LEFT JOIN latest_status ls
--     ON dp.delivery_person_id = ls.delivery_person_id;


-- select * from routes;
-- select * from landmarks;

-- SELECT
--     r.route_id,
--     r.route_name,
--     l.landmark_id,
--     l.landmark_name,
--     ST_Distance(
--         r.geometry::geography,
--         l.geometry::geography
--     ) AS distance_m
-- FROM routes r
-- JOIN landmarks l
--     ON ST_DWithin(
--         r.geometry::geography,
--         l.geometry::geography,
--         100
--     )
-- ORDER BY
--     r.route_id,
--     distance_m;

-- SELECT
--     r.route_id,
--     r.route_name,
--     l.landmark_id,
--     l.landmark_name,

--     ROUND(
--         ST_Distance(
--             r.geometry::geography,
--             l.geometry::geography
--         )::numeric,
--         2
--     ) AS distance_m,

--     COUNT(up.user_id) AS preference_count

-- FROM routes r

-- JOIN landmarks l
--     ON ST_DWithin(
--         r.geometry::geography,
--         l.geometry::geography,
--         100
--     )

-- LEFT JOIN user_preferences up
--     ON up.landmark_id = l.landmark_id
--     AND up.slot_id = 5       -- particular slot

-- GROUP BY
--     r.route_id,
--     r.route_name,
--     r.geometry,
--     l.landmark_id,
--     l.landmark_name,
--     l.geometry

-- ORDER BY
--     r.route_id,
--     preference_count DESC,
--     distance_m;

-- SELECT
--     r.route_id,
--     r.route_name,
--     l.landmark_id,
--     l.landmark_name,

--     ROUND(
--         ST_Distance(
--             r.geometry::geography,
--             l.geometry::geography
--         )::numeric,
--         2
--     ) AS distance_m,

--     COUNT(DISTINCT up.user_id) AS preference_count_with_package

-- FROM routes r

-- JOIN landmarks l
--     ON ST_DWithin(
--         r.geometry::geography,
--         l.geometry::geography,
--         100
--     )

-- LEFT JOIN user_preferences up
--     ON up.landmark_id = l.landmark_id
--     AND up.slot_id = 5

-- WHERE
--     up.user_id IS NULL
--     OR EXISTS (
--         SELECT 1
--         FROM packages p
--         WHERE p.user_id = up.user_id
--     )

-- GROUP BY
--     r.route_id,
--     r.route_name,
--     r.geometry,
--     l.landmark_id,
--     l.landmark_name,
--     l.geometry

-- ORDER BY
--     r.route_id,
--     preference_count_with_package DESC,
--     distance_m;

-- SELECT
--     r.route_id,
--     r.route_name,
--     l.landmark_id,
--     l.landmark_name,

--     ROUND(
--         ST_Distance(
--             r.geometry::geography,
--             l.geometry::geography
--         )::numeric,
--         2
--     ) AS distance_m,

--     COUNT(DISTINCT up.user_id) FILTER (
--         WHERE p.user_id IS NOT NULL
--     ) AS users_with_packages

-- FROM routes r

-- JOIN landmarks l
--     ON ST_DWithin(
--         r.geometry::geography,
--         l.geometry::geography,
--         100
--     )

-- LEFT JOIN user_preferences up
--     ON up.landmark_id = l.landmark_id
--     AND up.slot_id = 5

-- LEFT JOIN (
--     SELECT DISTINCT user_id
--     FROM packages
-- ) p
--     ON p.user_id = up.user_id

-- GROUP BY
--     r.route_id,
--     r.route_name,
--     r.geometry,
--     l.landmark_id,
--     l.landmark_name,
--     l.geometry

-- ORDER BY
--     r.route_id,
--     users_with_packages DESC,
--     distance_m;