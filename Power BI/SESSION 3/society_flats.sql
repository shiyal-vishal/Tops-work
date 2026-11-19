-- Society flats database setup for MySQL
CREATE DATABASE IF NOT EXISTS society_db;
USE society_db;

DROP TABLE IF EXISTS flats;
CREATE TABLE flats (
    flat_no VARCHAR(10) PRIMARY KEY,
    wing CHAR(1) NOT NULL,
    area_sqft INT NOT NULL CHECK (area_sqft BETWEEN 650 AND 1400),
    owner_type ENUM('Owner', 'Tenant') NOT NULL
);

INSERT INTO flats (flat_no, wing, area_sqft, owner_type) VALUES
('A-101', 'A', 1304, 'Owner'),
('A-102', 'A', 675, 'Tenant'),
('A-103', 'A', 900, 'Owner'),
('A-104', 'A', 792, 'Owner'),
('A-105', 'A', 1342, 'Owner'),
('A-106', 'A', 1254, 'Tenant'),
('A-107', 'A', 682, 'Owner'),
('A-108', 'A', 745, 'Owner'),
('A-109', 'A', 888, 'Owner'),
('A-110', 'A', 1224, 'Owner'),
('B-101', 'B', 1383, 'Tenant'),
('B-102', 'B', 875, 'Tenant'),
('B-103', 'B', 1253, 'Tenant'),
('B-104', 'B', 656, 'Owner'),
('B-105', 'B', 1364, 'Tenant'),
('B-106', 'B', 998, 'Tenant'),
('B-107', 'B', 809, 'Owner'),
('B-108', 'B', 994, 'Owner'),
('B-109', 'B', 744, 'Tenant'),
('B-110', 'B', 749, 'Tenant'),
('C-101', 'C', 1002, 'Tenant'),
('C-102', 'C', 694, 'Tenant'),
('C-103', 'C', 1199, 'Owner'),
('C-104', 'C', 1037, 'Owner'),
('C-105', 'C', 1215, 'Tenant'),
('C-106', 'C', 1293, 'Tenant'),
('C-107', 'C', 1241, 'Owner'),
('C-108', 'C', 1371, 'Owner'),
('C-109', 'C', 696, 'Owner'),
('C-110', 'C', 946, 'Owner');

-- Verify the loaded table
SELECT COUNT(*) AS total_flats FROM flats;
SELECT * FROM flats ORDER BY wing, flat_no;