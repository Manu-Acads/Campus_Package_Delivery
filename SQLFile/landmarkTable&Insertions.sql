-- Create landmarks table
CREATE TABLE landmarks (
    landmark_id SERIAL PRIMARY KEY,
    landmark_name VARCHAR(100) NOT NULL,
    latitude DOUBLE PRECISION NOT NULL,
    longitude DOUBLE PRECISION NOT NULL,
    type VARCHAR(50),
    geom GEOMETRY(Point, 4326)
);

-- Insert BITS Hyderabad landmarks
INSERT INTO landmarks
    (landmark_name, latitude, longitude, type, geom)
VALUES
('A Block', 17.5455061, 78.5728646, 'Academic',
 ST_SetSRID(ST_MakePoint(78.5728646, 17.5455061), 4326)),

('B Block', 17.5453084, 78.5722939, 'Academic',
 ST_SetSRID(ST_MakePoint(78.5722939, 17.5453084), 4326)),

('C Block', 17.5446610, 78.5720280, 'Academic/Admin',
 ST_SetSRID(ST_MakePoint(78.5720280, 17.5446610), 4326)),

('Central Workshop', 17.5435401, 78.5704452, 'Academic/Workshop',
 ST_SetSRID(ST_MakePoint(78.5704452, 17.5435401), 4326)),

('D + F Block', 17.5443030, 78.5722150, 'Academic',
 ST_SetSRID(ST_MakePoint(78.5722150, 17.5443030), 4326)),

('E Block', 17.5435816, 78.5718919, 'Academic',
 ST_SetSRID(ST_MakePoint(78.5718919, 17.5435816), 4326)),

('H Block / Mathematics', 17.5463631, 78.5703851, 'Academic',
 ST_SetSRID(ST_MakePoint(78.5703851, 17.5463631), 4326)),

('I Block', 17.5464456, 78.5698360, 'Academic',
 ST_SetSRID(ST_MakePoint(78.5698360, 17.5464456), 4326)),

('J Block', 17.5454585, 78.5692266, 'Academic',
 ST_SetSRID(ST_MakePoint(78.5692266, 17.5454585), 4326)),

('K Block', 17.5452660, 78.5697002, 'Academic',
 ST_SetSRID(ST_MakePoint(78.5697002, 17.5452660), 4326)),

('Budh Bhavan', 17.5418681, 78.5746888, 'Hostel',
 ST_SetSRID(ST_MakePoint(78.5746888, 17.5418681), 4326)),

('Gandhi Bhavan', 17.5426206, 78.5747380, 'Hostel',
 ST_SetSRID(ST_MakePoint(78.5747380, 17.5426206), 4326)),

('Ganga Bhavan', 17.5418660, 78.5735130, 'Hostel',
 ST_SetSRID(ST_MakePoint(78.5735130, 17.5418660), 4326)),

('Krishna Bhavan', 17.5427290, 78.5739220, 'Hostel',
 ST_SetSRID(ST_MakePoint(78.5739220, 17.5427290), 4326)),

('Malviya Bhavan', 17.5410210, 78.5749130, 'Hostel',
 ST_SetSRID(ST_MakePoint(78.5749130, 17.5410210), 4326)),

('Meera Bhavan', 17.5413756, 78.5741175, 'Hostel',
 ST_SetSRID(ST_MakePoint(78.5741175, 17.5413756), 4326)),

('Ram Bhavan', 17.5426424, 78.5729749, 'Hostel',
 ST_SetSRID(ST_MakePoint(78.5729749, 17.5426424), 4326)),

('Shankar Bhavan', 17.5446830, 78.5749910, 'Hostel',
 ST_SetSRID(ST_MakePoint(78.5749910, 17.5446830), 4326)),

('Valmiki Bhavan', 17.5461120, 78.5747740, 'Hostel',
 ST_SetSRID(ST_MakePoint(78.5747740, 17.5461120), 4326)),

('Vishwakarma Bhavan', 17.5449241, 78.5763678, 'Hostel',
 ST_SetSRID(ST_MakePoint(78.5763678, 17.5449241), 4326)),

('Connaught Place / Shopping Area', 17.5422, 78.5760, 'Commercial',
 ST_SetSRID(ST_MakePoint(78.5760, 17.5422), 4326)),

('Mess 1', 17.5426290, 78.5740960, 'Food',
 ST_SetSRID(ST_MakePoint(78.5740960, 17.5426290), 4326)),

('Mess 2', 17.5446360, 78.5751610, 'Food',
 ST_SetSRID(ST_MakePoint(78.5751610, 17.5446360), 4326)),

('Auditorium', 17.5454217, 78.5705673, 'Academic/Event',
 ST_SetSRID(ST_MakePoint(78.5705673, 17.5454217), 4326)),

('Medical Centre', 17.5420592, 78.5764543, 'Medical',
 ST_SetSRID(ST_MakePoint(78.5764543, 17.5420592), 4326)),

('Placement Unit', 17.5457191, 78.5712169, 'Administrative',
 ST_SetSRID(ST_MakePoint(78.5712169, 17.5457191), 4326)),

('TBI', 17.5460841, 78.5715258, 'Research',
 ST_SetSRID(ST_MakePoint(78.5715258, 17.5460841), 4326)),

('Cricket Ground', 17.5397678, 78.5774639, 'Sports',
 ST_SetSRID(ST_MakePoint(78.5774639, 17.5397678), 4326)),

('New Football Ground', 17.5409279, 78.5762985, 'Sports',
 ST_SetSRID(ST_MakePoint(78.5762985, 17.5409279), 4326)),

('Swimming Pool', 17.5402681, 78.5767605, 'Sports',
 ST_SetSRID(ST_MakePoint(78.5767605, 17.5402681), 4326)),

('Tennis Court', 17.5416060, 78.5756417, 'Sports',
 ST_SetSRID(ST_MakePoint(78.5756417, 17.5416060), 4326)),

('Volleyball Court', 17.5430219, 78.5753453, 'Sports/Activity',
 ST_SetSRID(ST_MakePoint(78.5753453, 17.5430219), 4326)),

('SAC', 17.5408049, 78.5752803, 'Sports/Activity',
 ST_SetSRID(ST_MakePoint(78.5752803, 17.5408049), 4326)),

('Amphitheatre', 17.5444589, 78.5708925, 'Event',
 ST_SetSRID(ST_MakePoint(78.5708925, 17.5444589), 4326)),

('Main Gate', 17.5473050, 78.5725250, 'Entrance',
 ST_SetSRID(ST_MakePoint(78.5725250, 17.5473050), 4326));


-- Spatial index for faster PostGIS queries
CREATE INDEX landmarks_geom_idx
ON landmarks
USING GIST (geom);