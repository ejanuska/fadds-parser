USE airports;

DROP TABLE IF EXISTS aff_aff1s;
DROP TABLE IF EXISTS aff_aff2s;
DROP TABLE IF EXISTS aff_aff3s;
DROP TABLE IF EXISTS aff_aff4s;

# Create table for AFF_AFF1s
CREATE TABLE aff_aff1s (
id          INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
air_route_traffic_control_center_identifiers	VARCHAR (4),
air_route_traffic_control_center_names	VARCHAR (40),
site_location_location_of_the_facilities	VARCHAR (30),
cross_reference_alternate_name_for_remotes	VARCHAR (50),
facility_types	VARCHAR (5),
information_effective_dates	VARCHAR (10),
site_state_names	VARCHAR (30),
site_state_post_office_codes	VARCHAR (2),
formatted_site_latitudes	VARCHAR (14),
seconds_site_latitudes	VARCHAR (11),
formatted_site_longitudes	VARCHAR (14),
seconds_site_longitudes	VARCHAR (11));


# Create table for AFF_AFF2s
CREATE TABLE aff_aff2s (
id          INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
air_route_traffic_control_center_identifiers	VARCHAR (4),
site_location_location_of_the_facilities	VARCHAR (30),
facility_types	VARCHAR (5),
site_remarks_element_numbers	VARCHAR (4),
site_remarks	VARCHAR (200));



# Create table for aff_AFF3
CREATE TABLE aff_aff3s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
air_route_traffic_control_center_identifiers	VARCHAR (4),
site_locations	VARCHAR (30),
facility_types	VARCHAR (5),
frequencies	VARCHAR (8),
altitudes	VARCHAR (10),
frequency_special_usages	VARCHAR (17),
landing_location_identifiers	VARCHAR (4),
state_names	VARCHAR (30),
state_post_office_codes	VARCHAR (2),
city_names	VARCHAR (40),
official_airport_names	VARCHAR (50),
formatted_site_latitudes	VARCHAR (14),
seconds_site_latitudes	VARCHAR (11),
formatted_site_longitudes	VARCHAR (14),
seconds_site_longitudes	VARCHAR (11));

# Create table for aff_AFF4
CREATE TABLE aff_aff4s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
air_route_traffic_control_center_identifiers	VARCHAR (4),
site_location_of_the_facilities	VARCHAR (30),
facility_types 	VARCHAR (5),
frequency_associated_with_the_remark	VARCHAR (8),
frequency_remark_sequence_number	VARCHAR (2),
frequency_test_remarks	VARCHAR (200));

LOAD DATA LOCAL INFILE 'C:/Documents and Settings/Edward Januska/My Documents/My Projects/fadds-parser/delimited_data/aff/AFF1.psv' INTO TABLE aff_aff1s
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE 'C:/Documents and Settings/Edward Januska/My Documents/My Projects/fadds-parser/delimited_data/aff/AFF2.psv' INTO TABLE aff_aff2s
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE 'C:/Documents and Settings/Edward Januska/My Documents/My Projects/fadds-parser/delimited_data/aff/AFF3.psv' INTO TABLE aff_aff3s
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE 'C:/Documents and Settings/Edward Januska/My Documents/My Projects/fadds-parser/delimited_data/aff/AFF4.psv' INTO TABLE aff_aff4s
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n';