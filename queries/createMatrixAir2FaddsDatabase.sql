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


# Create table for anr_ANR1
CREATE TABLE anr_anr1s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
origin_facility_location_identifiers	VARCHAR (5),
destination_facility_location_identifiers	VARCHAR (5),
type_of_route_codes	VARCHAR (3),
route_identifier_sequence_numbers	VARCHAR (2),
type_of_route_descriptions	VARCHAR (30),
advanced_nav_route_area_descriptions	VARCHAR (75),
advanced_nav_route_altitude_descriptions	VARCHAR (40),
aircraft_allowedlimitations_descriptions	VARCHAR (35),
effective_hours1_descriptions	VARCHAR (15),
effective_hours2_descriptions	VARCHAR (15),
effective_hours3_descriptions	VARCHAR (15),
route_direction_limitations_descriptions	VARCHAR (20));


# Create table for anr_ANR2
CREATE TABLE anr_anr2s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
origin_facility_location_identifiers	VARCHAR (5),
destination_facility_location_identifiers	VARCHAR (5),
type_routes	VARCHAR (3),
route_identifier_sequence_numbers	VARCHAR (2),
segment_sequence_within_route_numbers	VARCHAR (3),
segment_identifier_ident_airway_numbers	VARCHAR (15),
segment_types	VARCHAR (7),
fix_state_codes	VARCHAR (2),
icao_region_codes	VARCHAR (2),
navaid_facility_type_codes	VARCHAR (2),
navaid_facility_type_descriptions	VARCHAR (20),
radial_and_distance_from_navaids	VARCHAR (7));


# Create table for apt_APT
CREATE TABLE apt_apts (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
landing_facility_site_numbers	VARCHAR (11),
landing_facility_types	VARCHAR (13),
location_identifiers	VARCHAR (4),
information_effective_dates	VARCHAR (10),
faa_region_codes	VARCHAR (3),
faa_district_or_field_office_codes	VARCHAR (4),
associated_state_post_office_codes	VARCHAR (2),
associated_state_names	VARCHAR (20),
associated_county_names	VARCHAR (21),
associated_countys_state_offices	VARCHAR (2),
associated_city_names	VARCHAR (40),
official_facility_names	VARCHAR (50),
airport_ownership_types	VARCHAR (2),
facility_uses	VARCHAR (2),
facility_owners_names	VARCHAR (35),
owners_addresses	VARCHAR (72),
owners_city_state_and_zip_codes	VARCHAR (45),
owners_phone_numbers	VARCHAR (16),
facility_managers_names	VARCHAR (35),
managers_addresses	VARCHAR (72),
managers_city_state_and_zip_codes	VARCHAR (45),
managers_phone_numbers	VARCHAR (16),
formatted_airport_reference_point_latitudes	VARCHAR (15),
seconds_airport_reference_point_latitudes	VARCHAR (12),
formatted_airport_reference_point_longitudes	VARCHAR (15),
seconds_airport_reference_point_longitudes	VARCHAR (12),
airport_reference_point_determination_methods	VARCHAR (1),
airport_tenth_of_a_foot_elevations	VARCHAR (7),
airport_elevation_determination_methods	VARCHAR (1),
magnetic_variation_and_directions	VARCHAR (3),
magnetic_variation_epoch_years	VARCHAR (4),
traffic_pattern_altitude_feet	VARCHAR (4),
aeronautical_sectional_chart_on_which_facilities	VARCHAR (30),
distance_from_central_business_districts	VARCHAR (2),
direction_of_airport_from_central_businesses	VARCHAR (3),
land_area_covered_by_airports	VARCHAR (5),
boundary_artcc_identifiers	VARCHAR (4),
boundary_artcc_computer_identifiers	VARCHAR (3),
boundary_artcc_names	VARCHAR (30),
responsible_artcc_identifiers	VARCHAR (4),
responsible_artcc_computer_identifiers	VARCHAR (3),
responsible_artcc_names	VARCHAR (30),
tiein_fss_physically_located_on_facilities	VARCHAR (1),
tiein_flight_service_station__identifiers	VARCHAR (4),
tiein_fss_names	VARCHAR (30),
local_phone_number_from_airport_to_flight_service_stations	VARCHAR (16),
toll_free_phone_number_from_airport_to_flight_service_stations	VARCHAR (16),
alternate_fss_identifiers	VARCHAR (4),
alternate_fss_names	VARCHAR (30),
toll_free_phone_number_from_airports	VARCHAR (16),
responsible_facility_identifiers	VARCHAR (4),
availability_of_notam_d_service_at_airports	VARCHAR (1),
airport_activation_dates	VARCHAR (7),
airport_status_codes	VARCHAR (2),
airport_arff_certification_type_and_dates	VARCHAR (15),
npiasfederal_agreements_codes	VARCHAR (7),
airport_airspace_analysis_determinations	VARCHAR (13),
facility_is_entry_customs	VARCHAR (1),
facility_is_customs_landing_rights	VARCHAR (1),
facility_has_military_operations_rights	VARCHAR (1),
airport_has_military_landing_rights	VARCHAR (1),
airport_inspection_methods	VARCHAR (2),
agencygroup_performing_physical_inspections	VARCHAR (1),
last_physical_inspection_dates	VARCHAR (8),
last_information_request_was_completed_dates	VARCHAR (8),
available_public_use_fuel_types	VARCHAR (40),
airframe_repair_service_availability_types	VARCHAR (5),
power_plant__repair_availability_types	VARCHAR (5),
bottled_oxygen_types	VARCHAR (8),
bulk_oxygen_types	VARCHAR (8),
airport_lighting_schedules	VARCHAR (7),
beacon_lighting_schedule	VARCHAR (7),
air_traffic_control_tower_located_on_airports	VARCHAR (1),
availible_airport_unicom_frequencies	VARCHAR (7),
common_traffic_advisory_frequencies	VARCHAR (7),
airport_segmented_circle_airport_marker_systems	VARCHAR (4),
lens_color_of_operable_beacons	VARCHAR (3),
noncommercial_users_landing_fees	VARCHAR (1),
medical_landing_facilities	VARCHAR (1),
single_engine_general_aviation_aircraft	VARCHAR (3),
multi_engine_general_aviation_aircraft	VARCHAR (3),
jet_engine_general_aviation_aircraft	VARCHAR (3),
general_aviation_helicopters	VARCHAR (3),
operational_gliders	VARCHAR (3),
operational_military_aircraft	VARCHAR (3),
ultralight_aircraft	VARCHAR (3),
commercial_services	VARCHAR (6),
commuter_services	VARCHAR (6),
air_taxis	VARCHAR (6),
general_aviation_local_operations	VARCHAR (6),
general_aviation_itinerant_operations	VARCHAR (6),
military_aircraft_operations	VARCHAR (6),
annual_annual_operations_data_ending_dates	VARCHAR (10),
airport_position_sources	VARCHAR (16),
airport_position_source_dates	VARCHAR (10),
airport_elevation_sources	VARCHAR (16),
airport_elevation_source_dates	VARCHAR (10),
availible_contract_fuels	VARCHAR (1),
transient_storage_facilities	VARCHAR (12),
other_airport_services	VARCHAR (71),
wind_indicators	VARCHAR (3),
icao_identifiers	VARCHAR (7));

# Create table for apt_ATT
CREATE TABLE apt_atts (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
landing_facility_site_numbers	VARCHAR (11),
landing_facility_state_post_office_codes	VARCHAR (2),
attendance_schedule_sequence_numbers	VARCHAR (2),
airport_attendance_schedule_minimums	VARCHAR (108));


# Create table for apt_RWY
CREATE TABLE apt_rwys (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
landing_facility_site_numbers	VARCHAR (11),
runway_state_post_office_codes	VARCHAR (2),
runway_identifications	VARCHAR (7),
physical_runway_lengths	VARCHAR (5),
physical_runway_widths	VARCHAR (4),
runway_surface_type_and_conditions	VARCHAR (12),
runway_surface_treatments	VARCHAR (5),
pavement_classification_numbers	VARCHAR (11),
runway_lights_edge_intensities	VARCHAR (5),
base_end_identifiers	VARCHAR (3),
runway_end_true_alignments	VARCHAR (3),
instrument_landing_system_types	VARCHAR (10),
right_hand_traffic_pattern_for_landing_aircraft	VARCHAR (1),
runway_marking_types	VARCHAR (5),
runway_marking_conditions	VARCHAR (1),
formatted_latitude_of_physical_runway_ends	VARCHAR (15),
seconds_latitude_of_physical_runway_ends	VARCHAR (12),
formatted_longitude_of_physical_runway_ends	VARCHAR (15),
seconds_longitude_of_physical_runway_ends	VARCHAR (12),
elevation_at_physical_runway_ends	VARCHAR (7),
threshold_crossing_heights	VARCHAR (3),
visual_glide_path_angles	VARCHAR (4),
formatted_latitude_at_displaced_thresholds	VARCHAR (15),
seconds_latitude_at_displaced_thresholds	VARCHAR (12),
formatted_longitude_at_displaced_thresholds	VARCHAR (15),
seconds_longitude_at_displaced_thresholds	VARCHAR (12),
elevation_at_displaced_thresholds	VARCHAR (7),
displaced_thresholds	VARCHAR (4),
touchdown_zone_elevations	VARCHAR (7),
visual_glide_slope_indicators	VARCHAR (5),
runway_visual_range_equipments	VARCHAR (3),
runway_visibility_value_equipments	VARCHAR (1),
approach_light_systems	VARCHAR (8),
runway_end_identifier_lights_availabilities	VARCHAR (1),
runway_centerline_lights_availabilities	VARCHAR (1),
runway_end_touchdown_lights_availabilities	VARCHAR (1),
description_controlling_objects	VARCHAR (11),
marked_lighted_controlling_objects	VARCHAR (4),
faa_cfr_part_77_affecting_navigable_airspace_objects	VARCHAR (5),
controlling_object_clearance_slopes	VARCHAR (2),
controlling_object_height_above_runways	VARCHAR (5),
controlling_object_distance_from_runway_ends	VARCHAR (5),
controlling_object_centerline_offsets	VARCHAR (7),
reciprocal_end_identifiers	VARCHAR (3),
reciprocal_runway_end_true_alignments	VARCHAR (3),
reciprocal_instrument_landing_system_types	VARCHAR (10),
reciprocal_right_hand_traffic_for_landing_aircraft_patterns	VARCHAR (1),
reciprocal_runway_markings_types	VARCHAR (5),
reciprocal_runway_markings_conditions	VARCHAR (1),
reciprocal_formatted_Latitude_Of_Physical_Runway_Enlds	VARCHAR (15),
reciprocal_seconds_latitude_of_physical_runway_ends	VARCHAR (12),
reciprocal_formatted_longitude_of_physical_runway_ends	VARCHAR (15),
reciprocal_seconds_longitude_of_physical_runway_ends	VARCHAR (12),
reciprocal_elevation_at_physical_runway_ends	VARCHAR (7),
reciprocal_threshold_crossing_heights	VARCHAR (3),
reciprocal_visual_glide_path_angles	VARCHAR (4),
reciprocal_formatted_latitude_at_displaced_thresholds	VARCHAR (15),
reciprocal_seconds_latitude_at_displaced_thresholds	VARCHAR (12),
reciprocal_formatted_longitude_at_displaced_thresholds	VARCHAR (15),
reciprocal_seconds_longitude_at_displaced_threshold	VARCHAR (12),
reciprocal_elevation_at_displaced_thresholds	VARCHAR (7),
reciprocal_displaced_thresholds	VARCHAR (4),
reciprocal_elevation_at_touchdown_zones	VARCHAR (7),
reciprocal_approach_slope_indicator_equipments	VARCHAR (5),
reciprocal_runway_visual_range_equipments	VARCHAR (3),
reciprocal_runway_visibility_value_equipments	VARCHAR (1),
reciprocal_approach_light_systems	VARCHAR (8),
reciprocal_availability_runway_end_identifier_lights	VARCHAR (1),
reciprocal_availability_runway_centerline_lights	VARCHAR (1),
reciprocal_availability_runway_end_touchdown_lights	VARCHAR (1),
reciprocal_Controlling_Object_Description	VARCHAR (11),
reciprocal_marked_lighted_controlling_objects	VARCHAR (4),
reciprocal_faa_cfr_part_77_affecting_navigable_airspace_objects	VARCHAR (5),
reciprocal_controlling_object_clearance_slopes	VARCHAR (2),
reciprocal_controlling_object_height_above_runways	VARCHAR (5),
reciprocal_controlling_object_distance_from_runway_ends	VARCHAR (5),
reciprocal_controlling_object_centerline_offsets	VARCHAR (7),
runway_length_sources	VARCHAR (16),
runway_length_source_dates	VARCHAR (10),
runway_weightbearing_capacity_for_single_wheels	VARCHAR (6),
runway_weightbearing_capacity_for_dual_wheels	VARCHAR (6),
runway_weightbearing_capacity_for_two_dual_wheels	VARCHAR (6),
runway_weightbearing_capacity_for_two_dual_wheels	VARCHAR (6),
runway_end_gradients	VARCHAR (5),
runway_end_gradient_directions	VARCHAR (4),
runway_end_position_sources	VARCHAR (16),
runway_end_position_source_dates	VARCHAR (10),
runway_end_elevation_sources	VARCHAR (16),
runway_end_elevation_source_dates	VARCHAR (10),
displaced_theshold_position_sources	VARCHAR (16),
displaced_theshold_position_source_dates	VARCHAR (10),
displaced_theshold_elevation_sources	VARCHAR (16),
displaced_theshold_elevation_source_dates	VARCHAR (10),
touchdown_zone_elevation_sources	VARCHAR (16),
touchdown_zone_elevation_source_dates	VARCHAR (10),
takeoff_run_available_in_feet	VARCHAR (5),
takeoff_distance_available_in_feet	VARCHAR (5),
aclt_stop_distance_available_in_feet	VARCHAR (5),
landing_distance_available_in_feet	VARCHAR (5),
available_landing_land_and_hold_short_distances	VARCHAR (5),
id_of_intersecting_runway_defining_hold_short_points	VARCHAR (7),
description_of_entity_defining_hold_short_points	VARCHAR (40),
formatted_latitude_of_lahso_hold_short_points	VARCHAR (15),
seconds_latitude_of_lahso_hold_short_points	VARCHAR (12),
formatted_longitude_of_lahso_hold_short_points	VARCHAR (15),
seconds_longitude_of_lahso_hold_short_points	VARCHAR (12),
lahso_hold_short_point_latlong_sources	VARCHAR (16),
hold_short_point_latlong_source_dates	VARCHAR (10),
reciprocal_runway_end_gradients	VARCHAR (5),
reciprocal_runway_end_gradient_directions	VARCHAR (4),
reciprocal_runway_end_position_source	VARCHAR (16),
reciprocal_runway_end_position_source_dates	VARCHAR (10),
reciprocal_runway_end_elevation_sources	VARCHAR (16),
reciprocal_runway_end_elevation_source_dates	VARCHAR (10),
reciprocal_displaced_theshold_position_sources	VARCHAR (16),
reciprocal_displaced_theshold_position_source_dates	VARCHAR (10),
reciprocal_displaced_theshold_elevation_sources	VARCHAR (16),
reciprocal_displaced_theshold_elevation_source_dates	VARCHAR (10),
reciprocal_touchdown_zone_elevation_sources	VARCHAR (16),
reciprocal_touchdown_zone_elevation_source_dates	VARCHAR (10),
reciprocal_takeoff_run_available_in_feet	VARCHAR (5),
reciprocal_takeoff_distance_available_in_feet	VARCHAR (5),
reciprocal_aclt_stop_distance_available_in_feet	VARCHAR (5),
reciprocal_landing_distance_available_in_feet	VARCHAR (5),
reciprocal_available_land_and_hold_short_landing_distances	VARCHAR (5),
reciprocal_id_of_intersecting_runway_defining_hold_short_points	VARCHAR (7),
reciprocal_description_of_entity_defining_hold_short_points	VARCHAR (40),
reciprocal_formatted_latitude_of_lahso_hold_short_points	VARCHAR (15),
reciprocal_seconds_latitude_of_lahso_hold_short_points	VARCHAR (12),
reciprocal_formatted_longitude_of_lahso_hold_short_points	VARCHAR (15),
reciprocal_seconds_longitude_of_lahso_hold_short_points	VARCHAR (12),
reciprocal_lahso_hold_short_point_latlong_sources	VARCHAR (16),
reciprocal_hold_short_point_latlong_source_dates	VARCHAR (10));


# Create table for apt_ARS
CREATE TABLE apt_arss (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
landing_facility_site_numbers	VARCHAR (11),
landing_facility_state_post_office_codes	VARCHAR (2),
runway_identifications	VARCHAR (7),
runway_end_identifiers	VARCHAR (3),
type_of_aircraft_arresting_devices	VARCHAR (9));


# Create table for apt_RMK
CREATE TABLE apt_rmks (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
landing_facility_site_numbers	VARCHAR (11),
landing_facility_state_post_office_codes	VARCHAR (2),
remark_element_names	VARCHAR (11),
remarks	VARCHAR (1500));


# Create table for arb_ARB
CREATE TABLE arb_arbs (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
names	VARCHAR (40),
structure_decode_names	VARCHAR (10),
boundary_point_latitudes	VARCHAR (14),
boundary_point_longitudes	VARCHAR (14),
description_boundary_line_connecting_points	VARCHAR (300),
six_digit_sequence_numbers	VARCHAR (6),
nas_only_descriptions	VARCHAR (1));


# Create table for ats_ATS1
CREATE TABLE ats_ATS1 (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
ats_airway_designations	VARCHAR (2),
ats_airway_ids	VARCHAR (12),
rnav_indicators	VARCHAR (1),
airway_types	VARCHAR (1),
airway_point_sequence_numbers	VARCHAR (5),
chartpublication_effective_dates	VARCHAR (10),
outbound_track_angles	VARCHAR (7),
changeover_point_distances	VARCHAR (5),
inbound_track_angles	VARCHAR (7),
distance_to_next_point_in_nautical_miles	VARCHAR (6),
bearings	VARCHAR (6),
segment_magnetic_courses	VARCHAR (6),
segment_magnetic_course_opposite_directions	VARCHAR (6),
distance_to_next_point_in_segment_in_nautical_miles	VARCHAR (6),
point_to_point_minimum_enroute_altitudes	VARCHAR (5),
point_to_point_minimum_enroute_directions	VARCHAR (7),
point_to_point_minimum_enroute_opposite_altitudes	VARCHAR (5),
point_to_point_minimum_enroute_opposite_directions	VARCHAR (7),
point_to_point_maximumauthorized_altitudes	VARCHAR (5),
point_to_point_minimum_obstruction_clearances	VARCHAR (5),
airway_gap_flag_indicators	VARCHAR (1),
point_to_the_changeover_distances	VARCHAR (3),
minimum_crossing_altitudes	VARCHAR (5),
direction_of_crossings	VARCHAR (7),
opposite_direction_minimum_crossing_altitudes	VARCHAR (5),
opposite_direction_direction_of_crossings	VARCHAR (7),
gap_in_signal_coverage_indicators	VARCHAR (1),
us_airspace_only_indicators	VARCHAR (1),
navaidfix_artccs	VARCHAR (3),
to_points VARCHAR (40),
next_mea_points	VARCHAR (50),
numeric_format_point_to_point_gnss_minimum_enroute_altitudes  	VARCHAR (5),
alpha_format_point_to_point_gnss_minimum_enroute_altitudes	VARCHAR (7),
opposite_direction_numeric_format_point_to_point_gnss_minimum_enroute_altitudes	VARCHAR (5),
opposite_direction_alpha_format_point_to_point_gnss_minimum_enroute_altitudes VARCHAR (7),
record_sort_sequence_numbers	VARCHAR (7));


# Create table for ats_ATS2
CREATE TABLE ats_ats2s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
ats_airway_designations	VARCHAR (2),
ats_airway_ids	VARCHAR (12),
rnav_indicators	VARCHAR (1),
ats_airway_types	VARCHAR (1),
airway_point_sequence_numbers	VARCHAR (5),
navaid_facilityfix_names	VARCHAR (40),
navaid_facilityfix_types	VARCHAR (25),
fix_types	VARCHAR (15),
navaid_facilityfix_state_po_codes	VARCHAR (2),
icao_region_codes
navaid_facilityfix_latitudes	VARCHAR (14),
navaid_facilityfix_longitudes	VARCHAR (14),
reception_fix_minimums	VARCHAR (5),
navaid_identifiers	VARCHAR (4),
from_points	VARCHAR (57),
record_sort_sequence_numbers	VARCHAR (7));


# Create table for ats_ATS3
CREATE TABLE ats_ats3s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
ats_airway_designations	VARCHAR (2),
ats_airway_ids	VARCHAR (12),
rnav_indicators	VARCHAR (1),
ats_airway_types	VARCHAR (1),
airway_point_sequence_numbers	VARCHAR (5),
navaid_facility_names	VARCHAR (30),
navaid_facility_types	VARCHAR (25),
navaid_facility_state_po_codes	VARCHAR (2),
navaid_facility_latitudes	VARCHAR (14),
navaid_facility_longitudes	VARCHAR (14),
record_sort_sequence_numbers	VARCHAR (7));


# Create table for ats_ATS4
CREATE TABLE ats_ats4s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
ats_airway_designations	VARCHAR (2),
ats_airway_ids	VARCHAR (12),
rnav_indicators	VARCHAR (1),
ats_airway_types	VARCHAR (1),
airway_point_sequence_numbers	VARCHAR (5),
remarks	VARCHAR (200),
record_sort_sequence_numbers	VARCHAR (7));


# Create table for ats_ATS5
CREATE TABLE ats_ats5s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
ats_airway_designations	VARCHAR (2),
ats_airway_ids	VARCHAR (12),
rnav_indicators	VARCHAR (1),
airway_types	VARCHAR (1),
airway_point_sequence_numbers	VARCHAR (5),
remarks	VARCHAR (200),
record_sort_sequence_numbers	VARCHAR (7));


# Create table for ats_RMK
CREATE TABLE ats_rmks (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
ats_airway_designations	VARCHAR (2),
ats_airway_ids	VARCHAR (12),
rnav_indicators	VARCHAR (1),
airway_types	VARCHAR (1),
remark_sequence_numbers	VARCHAR (3),
remark_references	VARCHAR (5),
remarks_texts	VARCHAR (200),
record_sort_sequence_numbers	VARCHAR (7));


# Create table for awos_AWOS1
CREATE TABLE awos_awos1s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
wx_sensor_idents	VARCHAR (4),
wx_sensor_types	VARCHAR (10),
commissioning_status	VARCHAR (1),
commissioningdecommissioning_dates	VARCHAR (10),
navaid_flags	VARCHAR (1),
station_latitudes	VARCHAR (14),
station_longitudes	VARCHAR (15),
elevations	VARCHAR (7),
survey_method_codes	VARCHAR (1),
station_frequencies	VARCHAR (7),
second_station_frequencies	VARCHAR (7),
station_telephone_numbers	VARCHAR (14),
second_station_telephone_numbers	VARCHAR (14),
station_located_landing_facility_site_numbers	VARCHAR (11),
station_cities	VARCHAR (40),
station_state_post_office_codes	VARCHAR (2),
information_effective_dates	VARCHAR (10));


# Create table for awos_AWOS2
CREATE TABLE awos_awos2s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
wx_sensor_idents	VARCHAR (4),
wx_sensor_types	VARCHAR (10),
asos_awos_remarks	VARCHAR (236));


# Create table for awy_AWY1
CREATE TABLE awy_awy1s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
airway_designations	VARCHAR (5),
airway_types	VARCHAR (1),
airway_point_sequence_numbers	VARCHAR (5),
chart_publication_effective_dates	VARCHAR (10),
outbound_track_angles	VARCHAR (7),
distance_to_changeover_points	VARCHAR (5),
inbound_track_angles	VARCHAR (7),
distance_nautical_miles_to_next_points	VARCHAR (6),
bearings	VARCHAR (6),
segment_magnetic_courses	VARCHAR (6),
opposite_direction_segment_magnetic_courses	VARCHAR (6),
opposite_direction_distance_nautical_miles_to_next_points	VARCHAR (6),
point_to_point_minimum_enroute_altitudes	VARCHAR (5),
point_to_point_minimum_enroute_directions	VARCHAR (6),
opposite_direction_point_to_point_minimum_enroute_altitudes	VARCHAR (5),
opposite_direction_point_to_point_minimum_enroute_directions	VARCHAR (6),
point_to_point_maximum_authorized_altitudes	VARCHAR (5),
point_to_point_minimum_obstruction_clearances	VARCHAR (5),
airway_gap_flag_indicators	VARCHAR (1),
from_this_point_to_the_changeover_distances	VARCHAR (3),
minimum_crossing_altitudes	VARCHAR (5),
crossing_directions	VARCHAR (7),
minimum_crossing_altitudes	VARCHAR (5),
opposite_direction_crossing_directions	VARCHAR (7),
gap_in_signal_coverage_indicators	VARCHAR (1),
us_airspace_only_indicators	VARCHAR (1),
navaid_fix_artccs	VARCHAR (3),
to_points	VARCHAR (33),
next_mea_points	VARCHAR (40),
numeric_format_point_to_point_gnss_minimum_enroute_altitudes  	VARCHAR (5),
alpha_format_point_to_point_gnss_minimum_enroute_altitudes	VARCHAR (6),
opposite_direction_numeric_format_point_to_point_gnss_minimum_enroute_altitudes	VARCHAR (5),
opposite_direction_alpha_format_point_to_point_gnss_minimum_enroute_altitudes VARCHAR (6),
record_sort_sequence_numbers	VARCHAR (7));


# Create table for awy_AWY2
CREATE TABLE awy_awy2s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
airway_designations	VARCHAR (5),
airway_types	VARCHAR (1),
airway_point_sequence_numbers	VARCHAR (5),
navaid_facilityfix_names	VARCHAR (30),
navaid_facilityfix_types	VARCHAR (19),
fix_types	VARCHAR (15),
navaid_facility_fix_state_po_codes	VARCHAR (2),
icao_region_codes	VARCHAR (2),
navaid_facility_fix_latitudes	VARCHAR (14),
navaid_facility_fix_longitudes	VARCHAR (14),
reception_fix_minimums	VARCHAR (5),
navaid_identifiers	VARCHAR (4),
from_points	VARCHAR (40),
record_sort_sequence_number	VARCHAR (7));


# Create table for awy_AWY3
CREATE TABLE awy_awy3s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
airway_designations	VARCHAR (5),
airway_types	VARCHAR (1),
airway_point_sequence_numbers	VARCHAR (5),
navaid_facility_names	VARCHAR (30),
navaid_facility_types	VARCHAR (19),
navaid_facility_state_po_codes	VARCHAR (2),
navaid_facility_latitudes	VARCHAR (14),
navaid_facility_longitudes	VARCHAR (14),
record_sort_sequence_numbers	VARCHAR (7));


# Create table for awy_AWY4
CREATE TABLE awy_awy4s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
airway_designations	VARCHAR (5),
airway_types	VARCHAR (1),
airway_point_sequence_numbers	VARCHAR (5),
remarks	VARCHAR (202),
record_sort_sequence_numbers	VARCHAR (7));


# Create table for awy_AWY5
CREATE TABLE awy_awy5s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
airway_designations	VARCHAR (5),
airway_types	VARCHAR (1),
airway_point_sequence_numbers	VARCHAR (5),
remarks	VARCHAR (202),
record_sort_sequence_number	VARCHAR (7));


# Create table for awy_RMK
CREATE TABLE awy_rmks (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
airway_designations	VARCHAR (5),
airway_types	VARCHAR (1),
remark_sequence_numbers	VARCHAR (3),
remark_references	VARCHAR (6),
remarks	VARCHAR (220),
record_sort_sequence_numbers	VARCHAR (7));


# Create table for com_COM
CREATE TABLE com_COMs (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
communications_outlet_types	VARCHAR (7),
associated_navaid_identifications	VARCHAR (4),
associated_navaid_types	VARCHAR (2),
associated_navaid_cities	VARCHAR (26),
associated_navaid_states	VARCHAR (20),
associated_navaid_names	VARCHAR (26),
associated_navaid_latitudes	VARCHAR (14),
associated_navaid_longitudes	VARCHAR (14),
communications_outlet_cities	VARCHAR (26),
communications_outlet_states	VARCHAR (20),
communications_outlet_region_names	VARCHAR (20),
communications_outlet_region_codes	VARCHAR (3),
communications_outlet_latitudes	VARCHAR (14),
communications_outlet_longitudes	VARCHAR (14),
communications_outlet_calls	VARCHAR (26),
communications_outlet_frequencies	VARCHAR (144),
fss_identifications	VARCHAR (4),
fss_identification_fss_names	VARCHAR (30),
alternate_fss_identification	VARCHAR (4),
alternate_fss_identification_names	VARCHAR (30),
operational_hours	VARCHAR (60),
owner_codes	VARCHAR (1),
owner_names	VARCHAR (69),
operator_codes	VARCHAR (1),
operator_names	VARCHAR (69),
charts	VARCHAR (8),
standard_time_zones	VARCHAR (2),
status	VARCHAR (20),
status_dates	VARCHAR (11));


# Create table for fix_FIX1
CREATE TABLE fix_FIX1s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
identifiers	VARCHAR (30),
state_identifiers	VARCHAR (30),
icao_region_codes	VARCHAR (2),
fix_Latitudes	VARCHAR (14),
fix_Longitudes	VARCHAR (14),
military_fixes	VARCHAR (3),
identifications	VARCHAR (22),
identification_approachend_runway_radar_component_distances	VARCHAR (22),
fix_previous_names	VARCHAR (33),
charting_information	VARCHAR (38),
published_fixes	VARCHAR (1),
fix_uses	VARCHAR (15),
airspace_identifiers	VARCHAR (5),
high_artcc_area_of_jurisdictions	VARCHAR (4),
low_artcc_area_of_jurisdictions	VARCHAR (4),
fix_country_names	VARCHAR (30),
pitches	VARCHAR (1),
catches	VARCHAR (1),
sua_atcaas	VARCHAR (1));


# Create table for fix_FIX2
CREATE TABLE fix_fix2s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
identifiers	VARCHAR (30),
identifier_states	VARCHAR (30),
icao_region_codes	VARCHAR (2),
facility_type_and_radials	VARCHAR (23));


# Create table for fix_FIX3
CREATE TABLE fix_fix3s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
identifiers	VARCHAR (30),
identifier_states	VARCHAR (30),
icao_region_codes	VARCHAR (2),
ident_facility_type_direction_or_course	VARCHAR (23));


# Create table for fix_FIX4
CREATE TABLE fix_fix4s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
identifiers	VARCHAR (30),
identifier_states	VARCHAR (30),
icao_region_codes	VARCHAR (2),
field_labels	VARCHAR (100),
remarks	VARCHAR (300));


# Create table for fix_FIX5
CREATE TABLE fix_fix5s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
identifiers	VARCHAR (30),
identifier_states	VARCHAR (30),
icao_region_codes	VARCHAR (2),
chart_types	VARCHAR (22));


# Create table for FSS_FSS
CREATE TABLE fss_fsss (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
fss_name	VARCHAR (26),
update_dates	VARCHAR (11),
associated_airport_site_numbers	VARCHAR (11),
airport_names	VARCHAR (50),
airport_associated_cities	VARCHAR (26),
airport_associated_states	VARCHAR (20),
airport_latitudes	VARCHAR (14),
airport_longitude	VARCHAR (14),
facility_types	VARCHAR (8),
facility_identifiers	VARCHAR (26),
fss_owner_codes	VARCHAR (1),
Fss_Owner_Namesl	VARCHAR (69),
fss_operator_codes	VARCHAR (1),
fss_operator_names	VARCHAR (69),
Primary_Fss_Frequencies	VARCHAR (2400),
fss_operation_hours	VARCHAR (100),
status_of_facilities	VARCHAR (20),
name_of_fss_with_circuit_b_teletype_capabilties	VARCHAR (3),
communications_outlet_identifications	VARCHAR (560),
navaid_identifier_and_facility_types	VARCHAR (525),
reserved_1	VARCHAR (20),
availability_of_weather_radars	VARCHAR (1),
enroute_flight_advisory_services	VARCHAR (10),
flight_watch_operation_hours	VARCHAR (50),
city_fss_not_on_airports	VARCHAR (26),
state_fss_not_on_airports	VARCHAR (20),
latitude_fss_not_on_airports	VARCHAR (14),
longitude_fss_not_on_airports	VARCHAR (14),
region_fss_not_on_airports	VARCHAR (3),
reserved_2	VARCHAR (3),
Airport_Advisory_Frequencies	VARCHAR (120),
volmet_meteorological_frequencies	VARCHAR (120),
volmet_opoeration_schedules	VARCHAR (240),
type_of_direction_finding_equipments	VARCHAR (30),
latitude_of_direction_finding_equipments	VARCHAR (14),
longitude_of_direction_finding_equipments	VARCHAR (14),
fss_low_altitude_enroute_chart_numbers	VARCHAR (40),
telephone_numbers VARCHAR (12),
reserved_3	VARCHAR (50),
remarks	VARCHAR (1050),
facility_cities	VARCHAR (780),
facility_states	VARCHAR (600),
communication_facility_latitudes	VARCHAR (420),
communication_Facility_longitudes	VARCHAR (420),
facility_owner_codes	VARCHAR (40),
facility_owner_names	VARCHAR (2760),
facility_operator_codes	VARCHAR (40),
facility_operator_names	VARCHAR (2760),
fss_associated_with_the_communication_facilities	VARCHAR (160),
communication_facility_frequencies	VARCHAR (540),
communication_facilities_operational_hours	VARCHAR (800),
status_of_communication_facilities	VARCHAR (800),
communication_facility_status_dates	VARCHAR (330),
navaid_identifiers	VARCHAR (140),
communication_facility_low_altitude_enroute_charts	VARCHAR (60),
communication_facility_standardt_ime_zones	VARCHAR (40),
communication_remarks	VARCHAR (1050),
information_extracted_dates	VARCHAR (11));

# Create table for harfix_HARFIX
CREATE TABLE harfix_harfixs (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
latitudes	VARCHAR (12),
longitudes	VARCHAR (13));


# Create table for hpf_HP1
CREATE TABLE hpf_HP1 (
recID           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
pattern_name_facility_types	VARCHAR (80),
number_to_uniquely_identify_holding_patterns	VARCHAR (3),
pattern_effective_dates	VARCHAR (11),
holding_on_the_navaid_or_fix_directions	VARCHAR (3),
magnetic_bearing_or_radial_of_holding_patterns	VARCHAR (3),
azimuths	VARCHAR (5),
ils_facility_course_ids	VARCHAR (7),
navaid_id_facility_providing_radials	VARCHAR (7),
facility_used_in_holding_pattern_makeups	VARCHAR (12),
inbound_courses	VARCHAR (3),
turning_directions	VARCHAR (3),
all_aircraft_altitudes	VARCHAR (7),
holding_alt_170_to_175_kts	VARCHAR (7),
holding_alt_200_to_230_kts	VARCHAR (7),
holding_alt_265_kts	VARCHAR (7),
holding_alt_280_kts	VARCHAR (7),
holding_alt_310_kts	VARCHAR (7),
holding_associated_fixes	VARCHAR (36),
associated_fix_artccs	VARCHAR (3),
associated_fix_latitudes	VARCHAR (14),
associated_fix_longitudes	VARCHAR (14),
high_route_artcc_associated_with_navaids	VARCHAR (3),
low_route_artcc_associated_with_navaids	VARCHAR (3),
associated_navaid_latitudes	VARCHAR (14),
associated_navaid_longitudes	VARCHAR (14),
outbound_leg_lengths	VARCHAR (8));


# Create table for hpf_HP2
CREATE TABLE hpf_hp2s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
holding_pattern_names	VARCHAR (80),
uniquely_holding_pattern_numbers	VARCHAR (3),
charting_descriptions	VARCHAR (21));


# Create table for hpf_HP3
CREATE TABLE hpf_hp3s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
holding_pattern_names	VARCHAR (80),
uniquely_holding_pattern_numbers	VARCHAR (3),
holding_altitudes	VARCHAR (15));


# Create table for hpf_HP4
CREATE TABLE hpf_HP4 (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
holding_pattern_names	VARCHAR (80),
uniquely_holding_pattern_numbers	VARCHAR (3),
field_Labels	VARCHAR (100),
remarks	VARCHAR (300));


# Create table for ils_ILS1
CREATE TABLE ils_ils1s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
airport_site_number_identifiers	VARCHAR (11),
ils_runway_end_identifiers	VARCHAR (3),
ils_system_types	VARCHAR (10),
ils_identification_codes	VARCHAR (6),
information_effective_dates	VARCHAR (10),
airport_names	VARCHAR (50),
associated_cities	VARCHAR (40),
two_letter_states	VARCHAR (2),
state_names	VARCHAR (20),
faa_region_codes	VARCHAR (3),
airport_identifiers	VARCHAR (4),
ils_runway_feet_lengths	VARCHAR (5),
ils_runway_feet_widths	VARCHAR (4),
ils_categories	VARCHAR (9),
ils_facility_owner_names	VARCHAR (50),
ils_facility_operator_names	VARCHAR (50),
ils_approach_bearing_magnetic_degrees	VARCHAR (6),
ils_magnetic_variations	VARCHAR (3));


# Create table for ils_ILS2
CREATE TABLE ils_ils2s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
airport_site_number_identifiers	VARCHAR (11),
ils_runway_end_identifiers	VARCHAR (3),
ils_system_types	VARCHAR (10),
ifr_status_of_localizers	VARCHAR (22),
localizer_operational_status_dates	VARCHAR (10),
localizer_formatted_latitudes	VARCHAR (14),
localizer_seconds_latitudes	VARCHAR (11),
localizer_formatted_longitudes	VARCHAR (14),
localizer_seconds_longitudes	VARCHAR (11),
latitude_longitude_source_codes	VARCHAR (2),
localizer_antenna_approach_end_distances	VARCHAR (7),
localizer_antenna_runway_centerline_distances	VARCHAR (4),
localizer_antenna_from_runway_directions	VARCHAR (1),
indicating_source_of_distance_codes	VARCHAR (2),
localizer_antenna_elevations	VARCHAR (7),
localizer_frequencies	VARCHAR (7),
back_course_status	VARCHAR (15),
localizer_course_widths	VARCHAR (5),
threshold_course_widths	VARCHAR (7),
localizer_stop_end_of_runway_distances	VARCHAR (7),
localizer_stop_end_of_runway_directions	VARCHAR (1),
localizer_services_code	VARCHAR (2));


# Create table for ils_ILS3
CREATE TABLE ils_ils3s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
airport_site_number_identifiers	VARCHAR (11),
ils_runway_end_identifiers	VARCHAR (3),
ils_system_types	VARCHAR (10),
ifr_status_of_glide_slopes	VARCHAR (22),
glide_slope_operational_status_dates VARCHAR (10),
glide_slope_formatted_latitudes	VARCHAR (14),
glide_slope_seconds_latitudes	VARCHAR (11),
glide_slope_formatted_longitudes	VARCHAR (14),
glide_slope_seconds_longitudes	VARCHAR (11),
latitude_longitude_source_codes	VARCHAR (2),
glide_slope_antenna_approach_end_distances	VARCHAR (7),
glide_slope_transmitter_antenna_distances	VARCHAR (4),
glide_slope_transmitter_antenna_directions	VARCHAR (1),
distance_indicating_sources	VARCHAR (2),
glide_slope_transmitter_antenna_elevations	VARCHAR (7),
glide_slope_class_types	VARCHAR (15),
glide_slope_angle_degrees	VARCHAR (5),
glide_slope_transmission_frequencies	VARCHAR (7),
adjacent_runway_tenth_of_foot_elevations	VARCHAR (8));


# Create table for ils_ILS4
CREATE TABLE ils_ils4s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
airport_site_number_identifiers	VARCHAR (11),
ils_runway_end_identifiers	VARCHAR (3),
ils_system_types	VARCHAR (10),
ifr_status_of_dmes	VARCHAR (22),
dme_operational_status_dates	VARCHAR (10),
dme_formatted_latitudes	VARCHAR (14),
dme_seconds_latitudes	VARCHAR (11),
dme_formatted_longitudes	VARCHAR (14),
dme_seconds_longitudes	VARCHAR (11),
latitude_longitude_source_codes	VARCHAR (2),
dme_antenna_approach_end_distances	VARCHAR (7),
dme_transmitter_antenna_distances	VARCHAR (4),
dme_transmitter_antenna_directions	VARCHAR (1),
distance_indicating_sources	VARCHAR (2),
dme_transmitter_antenna_elevations	VARCHAR (7),
dme_channels	VARCHAR (4),
dme_distance_runway_stop_end	VARCHAR (7));


# Create table for ils_ILS5
CREATE TABLE ils_ils5s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
airport_site_number_identifiers	VARCHAR (11),
ils_runway_end_identifiers	VARCHAR (3),
ils_system_types	VARCHAR (10),
marker_types	VARCHAR (2),
status_of_marker_beacons	VARCHAR (22),
marker_beacon_operational_status_dates	VARCHAR (10),
marker_formatted_latitudes	VARCHAR (14),
marker_seconds_latitudes	VARCHAR (11),
marker_formatted_longitudes	VARCHAR (14),
marker_seconds_longitudes	VARCHAR (11),
latitude_longitude_source_codes	VARCHAR (2),
marker_antenna_approach_end_distances	VARCHAR (7),
marker_transmitter_antenna_distances	VARCHAR (4),
marker_transmitter_antenna_directions	VARCHAR (1),
distance_indicating_sources	VARCHAR (2),
marker_beacon_elevations	VARCHAR (7),
marker_locator_types	VARCHAR (15),
marker_beacon_location_identifiers VARCHAR (2),
marker_locator_beacon_names	VARCHAR (30),
locator_beacon_at_middle_marker_frequencies	VARCHAR (3),
navaid_type_of_navigation_identifiers	VARCHAR (25),
powered_ndb_status_of_marker_beacons	VARCHAR (22),
marker_services	VARCHAR (30));


# Create table for ils_ILS6
CREATE TABLE ils_ils6s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
airport_site_number_identifiers	VARCHAR (11),
ils_runway_end_identifiers	VARCHAR (3),
ils_system_types	VARCHAR (10),
remarks	VARCHAR (350));


# Create table for lid_1
CREATE TABLE lid_1s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
identifier_group_codes	VARCHAR (3),
location_identifiers	VARCHAR (5),
faa_region_associated_with_the_location_identifiers	VARCHAR (3),
state_associated_with_the_location_identifiers	VARCHAR (2),
city_associated_with_the_location_identifiers	VARCHAR (40),
controlling_artccs	VARCHAR (4),
other_controlling_artccs	VARCHAR (3),
landing_facility_names	VARCHAR (50),
landing_facility_types	VARCHAR (13),
tiein_flight_service_station_identifiers	VARCHAR (4),
name1_navaid_facilities	VARCHAR (30),
type1_navaid_facilities	VARCHAR (20),
name2_navaid_facilities	VARCHAR (30),
type2_navaid_facilities	VARCHAR (20),
name3_navaid_facilities	VARCHAR (30),
type3_navaid_facilities	VARCHAR (20),
name4_navaid_facilities	VARCHAR (30),
type4_navaid_facilities	VARCHAR (20),
other_tiein_flight_service_station_identifiers	VARCHAR (4),
ils_runway_ends	VARCHAR (3),
ils_facility_types	VARCHAR (20),
location_identifier_of_ils_airports	VARCHAR (5),
ils_airport_names	VARCHAR (50),
other2_tiein_flight_service_station_identifier	VARCHAR (4),
fss_names	VARCHAR (30),
artcc_names	VARCHAR (30),
artcc_facility_types	VARCHAR (17),
flight_watch_station_indicators	VARCHAR (1),
other_facility_descriptions	VARCHAR (75),
other_facility_types	VARCHAR (15),
information_effective_dates	VARCHAR (10));


# Create table for lid_2
CREATE TABLE lid_2s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
identifier_group_codes	VARCHAR (3),
location_identifiers	VARCHAR (5),
associated_countries	VARCHAR (30),
second_level_qualifier_of_location_descriptions	VARCHAR (20),
associated_cities	VARCHAR (50),
landing_facility_names	VARCHAR (50),
landing_facility_types	VARCHAR (20),
navaid_facility1_names	VARCHAR (50),
navaid_facility1_types	VARCHAR (20),
navaid_facility2_names	VARCHAR (50),
navaid_facility2_types	VARCHAR (20),
other_facility1_names	VARCHAR (50),
other_facility1_types	VARCHAR (20),
other_facility2_names	VARCHAR (50),
other_facility2_types	VARCHAR (20),
information_effective_dates	VARCHAR (10));


# Create table for lid_3
CREATE TABLE lid_3s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
identifier_group_codes	VARCHAR (3),
location_identifiers	VARCHAR (5),
associated_canadian_provinces	VARCHAR (10),
associated_cities	VARCHAR (50),
landing_facility1_names	VARCHAR (50),
landing_facility1_remarks	VARCHAR (50),
landing_facility1_types	VARCHAR (20),
landing_facility2_names	VARCHAR (50),
landing_facility2_remarks	VARCHAR (50),
landing_facility2_types	VARCHAR (20),
landing_facility3_names	VARCHAR (50),
landing_facility3_remarks	VARCHAR (50),
landing_facility3_types	VARCHAR (20),
navaid_facility1_names	VARCHAR (30),
navaid_facility1_remarks	VARCHAR (50),
navaid_facility1_types	VARCHAR (20),
navaid_facility2_names	VARCHAR (30),
navaid_facility2_remarks	VARCHAR (50),
navaid_facility2_types	VARCHAR (20),
ils_facility1_names	VARCHAR (30),
ils_facility1_remarks	VARCHAR (50),
ils_facility1_types	VARCHAR (20),
ils_facility2_names	VARCHAR (30),
ils_facility2_remarks	VARCHAR (50),
ils_facility2_types	VARCHAR (20),
other_facility1_names	VARCHAR (30),
other_facility1_remarks	VARCHAR (50),
other_facility1_types	VARCHAR (20),
other_facility2_names	VARCHAR (30),
other_facility2_remarks	VARCHAR (50),
other_facility2_types	VARCHAR (20),
information_effective_dates	VARCHAR (10));


# Create table for mtr_MTR1
CREATE TABLE mtr_mtr1s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
route_types	VARCHAR (3),
route_identifiers	VARCHAR (5),
publication_effective_dates	VARCHAR (8),
faa_region_codes	VARCHAR (3),
artcc_identifiers	VARCHAR (80),
all_flight_service_station_identifiers	VARCHAR (160),
use_times	VARCHAR (50),
sort_sequence_numbers	VARCHAR (5));


# Create table for mtr_MTR2
CREATE TABLE mtr_mtr2s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
route_types	VARCHAR (3),
route_identifiers	VARCHAR (5),
standard_operating_procedures	VARCHAR (100),
sort_sequence_numbers	VARCHAR (5));


# Create table for mtr_MTR3
CREATE TABLE mtr_mtr3s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
route_types	VARCHAR (3),
route_identifiers	VARCHAR (5),
route_width_descriptions	VARCHAR (100),
sort_sequence_numbers	VARCHAR (5));


# Create table for mtr_MTR4
CREATE TABLE mtr_mtr4s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
route_types	VARCHAR (3),
route_identifiers	VARCHAR (5),
terrain_following_operations	VARCHAR (100),
sort_sequence_numbers	VARCHAR (5));


# Create table for mtr_MTR5
CREATE TABLE mtr_mtr5s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
route_types	VARCHAR (3),
route_identifiers	VARCHAR (5),
route_points	VARCHAR (5),
segment_leading_up_to_the_point_descriptions	VARCHAR (228),
segment_leaving_the_point_descriptions	VARCHAR (228),
related_navaid_identifications	VARCHAR (4),
navaid_from_point_bearings	VARCHAR (5),
navaid_from_point_distances	VARCHAR (4),
location_of_point_latitudes	VARCHAR (14),
location_of_point_longitudes	VARCHAR (14),
sort_sequence_numbers	VARCHAR (5));


# Create table for natfix_NATFIX
CREATE TABLE natfix_natfixs (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
fix_airport_navaid_id	VARCHAR (5),
latitudes	VARCHAR (7),
longitudes	VARCHAR (8),
quote_characters	VARCHAR (1),
artcc_identifications	VARCHAR (4),
post_office_codes	VARCHAR (2),
region_codes	VARCHAR (2),
fix_navaid_types	VARCHAR (7));


# Create table for nav_NAV1
CREATE TABLE nav_nav1s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
navaid_facility_identifiers	VARCHAR (4),
navaid_facility_types	VARCHAR (20),
official_navaid_facility_identifiers	VARCHAR (4),
effective_dates	VARCHAR (10),
navaid_names	VARCHAR (30),
associated_cities	VARCHAR (40),
associated_states	VARCHAR (30),
associated_state_post_office_codes	VARCHAR (2),
faa_region_responsible_for_navaids	VARCHAR (3),
Navaid_countries	VARCHAR (30),
Post_Office_country_Codes VARCHAR (2),
navaid_owner_names	VARCHAR (50),
navaid_operator_names	VARCHAR (50),
common_system_usages	VARCHAR (1),
navaid_public_usages	VARCHAR (1),
navaid_classes	VARCHAR (11),
operation_hours	VARCHAR (11),
artcc_with_high_altitude_boundary_that_the_navaid_identifiers	VARCHAR (4),
artcc_with_high_altitude_boundary_that_the_navaid_names	VARCHAR (30),
artcc_with_low_altitude_boundary_that_the_navaid_identifier	VARCHAR (4),
artcc_with_low_altitude_boundary_that_the_navaid_names	VARCHAR (30),
navaid_formatted_latitudes	VARCHAR (14),
navaid_seconds_latitudes	VARCHAR (11),
navaid_formatted_longitudes	VARCHAR (14),
navaid_seconds_longitude	VARCHAR (11),
latitude_longitude_survery_accuracies	VARCHAR (1),
tacan_not_at_vortac_formatted_latitudes	VARCHAR (14),
tacan_not_at_vortac_seconds_latitudes	VARCHAR (11),
tacan_not_at_vortac_formatted_longitudes	VARCHAR (14),
tacan_not_at_vortac_seconds_longitudes	VARCHAR (11),
elevations	VARCHAR (7),
magnetic_variation_degrees	VARCHAR (5),
magnetic_variation_epoch_years	VARCHAR (4),
simultaneous_voice_features	VARCHAR (3),
power_outputs	VARCHAR (4),
automatic_voice_identification_features	VARCHAR (3),
monitoring_categories	VARCHAR (1),
radio_voice_calls	VARCHAR (30),
navaid_channels	VARCHAR (4),
navaid_frequencies	VARCHAR (6),
transmitted_fan_markermarine_radio_beacons	VARCHAR (24),
fan_marker_types	VARCHAR (10),
true_bearing_of_major_axis_of_fan_markers	VARCHAR (3),
protected_frequency_altitudes	VARCHAR (1),
low_altitude_facility_used_in_high_structures	VARCHAR (3),
navaid_z_marker_availibilities	VARCHAR (3),
transcribed_weather_broadcast_hours	VARCHAR (9),
transcribed_weather_broadcast_phone_numbers	VARCHAR (20),
associated_controlling_fss_identifications	VARCHAR (4),
associated_controlling_fss_names	VARCHAR (30),
operation_of_controlling_fss_hours	VARCHAR (100),
notam_accountability_codes	VARCHAR (4),
quadrant_identification_and_range_leg_bearings	VARCHAR (16),
navigation_aid_status	VARCHAR (30),
pitch_flags	VARCHAR (1),
catch_flags	VARCHAR (1),
sua_atcaa_flags	VARCHAR (1),
navaid_restriction_flags	VARCHAR (1),
hiwas_flags	VARCHAR (1),
transcribed_weather_broadcast_restrictions	VARCHAR (1));


# Create table for nav_NAV2
CREATE TABLE nav_nav2s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
navaid_facility_identifiers	VARCHAR (4),
navaid_facility_types	VARCHAR (20),
navaid_remarks	VARCHAR (600),
fillers	VARCHAR (174));


# Create table for nav_NAV3
CREATE TABLE nav_nav3s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
navaid_facility_identifiers	VARCHAR (4),
navaid_facility_types	VARCHAR (20),
fix_names	VARCHAR (36),
additional_fixes	VARCHAR (720));


# Create table for nav_NAV4
CREATE TABLE nav_nav4s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
navaid_facility_identifiers	VARCHAR (4),
navaid_facility_types	VARCHAR (20),
fix_names	VARCHAR (36),
holding_pattern_numbers	VARCHAR (3),
additional_holding_pattern_numbers	VARCHAR (664));


# Create table for nav_NAV5
CREATE TABLE nav_nav5s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
navaid_facility_identifiers	VARCHAR (4),
navaid_facility_types	VARCHAR (20),
fan_marker_names	VARCHAR (30),
additional_fan_marker_names	VARCHAR (690));


# Create table for nav_NAV6
CREATE TABLE nav_nav6s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
navaid_facility_identifiers	VARCHAR (4),
navaid_facility_types	VARCHAR (20),
air_ground_codes	VARCHAR (2),
checkpoint_bearings	VARCHAR (3),
airborne_checkpoint_altitudes	VARCHAR (5),
airport_identifiers	VARCHAR (4),
state_codes	VARCHAR (2),
air_checkpoint_Narrative_Descriptions	VARCHAR (75),
ground_checkpoint_Narrative_Descriptions	VARCHAR (75));


# Create table for pfr_PFR1
CREATE TABLE pfr_pfr1s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
origin_facility_location_identifiers	VARCHAR (5),
destination_facility_location_identifiers	VARCHAR (5),
type_of_preferred_routes	VARCHAR (3),
route_identifier_sequence_numbers	VARCHAR (2),
type_of_preferred_routes	VARCHAR (30),
preferred_route_area_descriptions	VARCHAR (75),
preferred_route_altitude_descriptions	VARCHAR (40),
aircraft_allowed_limitations_descriptions	VARCHAR (50),
effective_hours1_descriptions	VARCHAR (15),
effective_hours2_descriptions	VARCHAR (15),
effective_hours3_descriptions	VARCHAR (15),
route_direction_limitations_descriptions	VARCHAR (20));


# Create table for pfr_PFR2
CREATE TABLE pfr_pfr2s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
origin_facility_location_identifiers	VARCHAR (5),
destination_facility_location_identifiers	VARCHAR (5),
type_of_preferred_routes	VARCHAR (3),
route_identifier_sequence_numbers	VARCHAR (2),
within_the_route_segment_sequence_numbers	VARCHAR (3),
segment_identifier_ident_awy_numbers	VARCHAR (48),
segment_types	VARCHAR (7),
fix_state_codes	VARCHAR (2),
icao_region_codes	VARCHAR (2),
navaid_facility_code_types	VARCHAR (2),
navaid_facility_described_types	VARCHAR (20),
radial_and_distance_from_navaids	VARCHAR (7));


# Create table for pja_PJA1
CREATE TABLE pja_pja1s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
pja_ids	VARCHAR (6),
navaid_identifiers	VARCHAR (4),
navaid_facility_code_types	VARCHAR (2),
navaid_facility_described_types	VARCHAR (25),
azimuth_from_navaids	VARCHAR (6),
distance_in_nautical_miles_from_navaids	VARCHAR (8),
navaid_names	VARCHAR (30),
pja_state_abbreviations	VARCHAR (2),
pja_state_names	VARCHAR (30),
pja_associated_city_names	VARCHAR (30),
pja_formatted_latitudes	VARCHAR (14),
pja_seconds_latitudes	VARCHAR (12),
pja_formatted_longitudes	VARCHAR (15),
pja_seconds_longitudes	VARCHAR (12),
associated_airport_names	VARCHAR (50),
associated_airport_site_numbers	VARCHAR (11),
pja_drop_zone_names	VARCHAR (50),
pja_maximum_allowed_altitudes	VARCHAR (8),
pja_area_radius_in_nautical_miles	VARCHAR (5),
Sectional_Charting_Requirements	VARCHAR (3),
area_to_be_published_in_airport_facility_directories	VARCHAR (3),
additional_remarks	VARCHAR (100),
associated_fss_idents	VARCHAR (4),
associated_fss_names	VARCHAR (30),
pja_uses	VARCHAR (8),
volumes	VARCHAR (1));


# Create table for pja_PJA2
CREATE TABLE pja_pja2s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
pja_ids	VARCHAR (6),
times_of_use_descriptions	VARCHAR (75));


# Create table for pja_PJA3
CREATE TABLE pja_pja3s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
pja_ids	VARCHAR (6),
pja_user_group_names	VARCHAR (75),
descriptions	VARCHAR (75));


# Create table for pja_PJA4
CREATE TABLE pja_pja4s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
pja_ids	VARCHAR (6),
contact_facility_ids	VARCHAR (4),
contact_facility_names	VARCHAR (48),
related_loc_ids	VARCHAR (4),
commercial_frequencies	VARCHAR (8),
commercial_chart_flags	VARCHAR (1),
military_frequencies	VARCHAR (8),
military_chart_flags	VARCHAR (1),
sectors	VARCHAR (30),
altitudes	VARCHAR (20));


# Create table for pja_PJA5
CREATE TABLE pja_pja5s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
pja_ids	VARCHAR (6),
additional_remarks	VARCHAR (300));


# Create table for ssd_SSD
CREATE TABLE ssd_ssds (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
used	VARCHAR (5),
type_code	VARCHAR (2),
not_used	VARCHAR (1),
latitudes	VARCHAR (8),
longitudes	VARCHAR (9),
identifiers	VARCHAR (6),
region_codes	VARCHAR (2),
computer_codes	VARCHAR (13),
names	VARCHAR (110),
using_numbered_fixes	VARCHAR (62));


# Create table for stardp_STARDP
CREATE TABLE stardp_stardps (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
not_used	VARCHAR (5),
type_codes	VARCHAR (2),
not2_used	VARCHAR (1),
latitudes	VARCHAR (8),
longitudes	VARCHAR (9),
identifiers	VARCHAR (6),
region_codes	VARCHAR (2),
computer_codes	VARCHAR (13),
names	VARCHAR (110),
using_numbered_fixes	VARCHAR (62));


# Create table for twr_TWR1
CREATE TABLE twr_twr1s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
terminal_communications_facility_identifiers	VARCHAR (4),
information_effective_dates	VARCHAR (10),
landing_facility_site_numbers	VARCHAR (11),
faa_region_codes	VARCHAR (3),
associated_state_names	VARCHAR (30),
associated_state_post_office_codes	VARCHAR (2),
associated_city_names	VARCHAR (40),
official_airport_names	VARCHAR (50),
airport_reference_point_formatted_latitudes	VARCHAR (14),
airport_reference_point_seconds_latitude	VARCHAR (11),
airport_reference_point_formatted_longitude	VARCHAR (14),
airport_reference_point_seconds_longitude	VARCHAR (11),
tiein_flight_service_station_identifiers	VARCHAR (4),
tiein_flight_service_station_names	VARCHAR (30),
facility_types	VARCHAR (12),
number_of_hours_of_daily_operations	VARCHAR (2),
number_of_regularity_hours_of_daily_operations	VARCHAR (3),
master_airport_location_identifiers	VARCHAR (4),
name_of_master_airport_furnishing_services	VARCHAR (50),
direction_finding_equipments	VARCHAR (15),
not_in_us_associated_landing_facility_names	VARCHAR (50),
not_in_us_associated_city_names	VARCHAR (40),
not_in_us_states	VARCHAR (20),
not_in_us_country_names	VARCHAR (25),
not_in_us_post_office_codes	VARCHAR (2),
not_in_us_faa_region_codes	VARCHAR (3),
airport_surveillance_radar_formatted_latitudes	VARCHAR (14),
airport_surveillance_radar_seconds_latitudes	VARCHAR (11),
airport_surveillance_radar_formatted_longitudes	VARCHAR (14),
airport_surveillance_radar_seconds_longitudes	VARCHAR (11),
direction_finding_antenna_formatted_latitudes	VARCHAR (14),
direction_finding_antenna_seconds_latitudes	VARCHAR (11),
direction_finding_formatted_longitudes	VARCHAR (14),
direction_finding_antenna_seconds_longitudes	VARCHAR (11),
tower_operation_agency_names	VARCHAR (40),
military_operation_agency_names	VARCHAR (40),
primary_approach_agency_names	VARCHAR (40),
secondary_approach_agency_names	VARCHAR (40),
primary_departure_control_agency_names	VARCHAR (40),
secondary_departure_control_agency_names	VARCHAR (40),
radio_call_used_by_pilot_to_contact_towers	VARCHAR (26),
radio_call_name_for_military_operations	VARCHAR (26),
radio_call_of_facility_that_furnishes_primary_approach_controls	VARCHAR (26),
radio_call_of_facility_that_takes_over_approach_controls	VARCHAR (26),
radio_call_of_facility_that_furnishes_primary_departure_controls	VARCHAR (26),
radio_call_of_facility_that_takes_over_departure_controls	VARCHAR (26));


# Create table for twr_TWR2
CREATE TABLE twr_twr2s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
terminal_communications_facility_identifiers	VARCHAR (4),
military_pmsv_hours	VARCHAR (200),
military_mcap_hours	VARCHAR (200),
military_operations_hours	VARCHAR (200),
primary_approach_hours	VARCHAR (200),
secondary_approach_hours	VARCHAR (200),
primary_departure_hours	VARCHAR (200),
secondary_departure_hours	VARCHAR (200),
tower_operation_hours	VARCHAR (200));


# Create table for twr_TWR3
CREATE TABLE twr_twr3s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
terminal_communications_facility_identifiers	VARCHAR (4),
master_use1_frequencies	VARCHAR (44),
frequency_use1_frequencies	VARCHAR (50),
master_use2_frequencies	VARCHAR (44),
frequency_use2_frequencies	VARCHAR (50),
master_use3_frequencies	VARCHAR (44),
frequency_use3_frequencies	VARCHAR (50),
master_use4_frequencies	VARCHAR (44),
frequency_use4_frequencies	VARCHAR (50),
master_use5_frequencies	VARCHAR (44),
frequency_use5_frequencies	VARCHAR (50),
master_use6_frequencies	VARCHAR (44),
frequency_use6_frequencies	VARCHAR (50),
master_use7_frequencies	VARCHAR (44),
frequency_use7_frequencies	VARCHAR (50),
master_use8_frequencies	VARCHAR (44),
frequency_use8_frequencies	VARCHAR (50),
master_use9_frequencies	VARCHAR (44),
frequency_use9_frequencies	VARCHAR (50),
master_not_truncated_use1_frequencies	VARCHAR (60),
master_not_truncated_use2_frequencies	VARCHAR (60),
master_not_truncated_use3_frequencies	VARCHAR (60),
master_not_truncated_use4_frequencies	VARCHAR (60),
master_not_truncated_use5_frequencies	VARCHAR (60),
master_not_truncated_use6_frequencies	VARCHAR (60),
master_not_truncated_use7_frequencies	VARCHAR (60),
master_not_truncated_use8_frequencies	VARCHAR (60),
master_not_truncated_use9_frequencies	VARCHAR (60));


# Create table for twr_TWR4
CREATE TABLE twr_twr4s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
terminal_communications_facility_identifiers	VARCHAR (4),
master_airport_services	VARCHAR (100));


# Create table for twr_TWR5
CREATE TABLE twr_twr5s (
recID           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
terminal_communications_facility_identifiers	VARCHAR (4),
radar_or_nonradar_primary_approach_calls	VARCHAR (9),
radar_or_nonradar_secondary_approach_calls	VARCHAR (9),
radar_or_nonradar_primary_departure_calls	VARCHAR (9),
radar_or_nonradar_secondary_departure_calls	VARCHAR (9),
tower_radar1_types	VARCHAR (10),
radar_operation1_hours	VARCHAR (200),
tower_radar2_types	VARCHAR (10),
radar_operation2_hours	VARCHAR (200),
tower_radar3_types	VARCHAR (10),
radar_operation3_hours	VARCHAR (200),
tower_radar4_types	VARCHAR (10),
radar_operation4_hours	VARCHAR (200));


# Create table for twr_TWR6
CREATE TABLE twr_twr6s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
terminal_communications_facility_identifiers	VARCHAR (4),
tower_element_numbers	VARCHAR (5),
tower_remarks	VARCHAR (800));


# Create table for twr_TWR7
CREATE TABLE twr_twr7s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
terminal_communications_facility_identifiers	VARCHAR (4),
satellite_frequencies	VARCHAR (44),
satellite_frequency_uses	VARCHAR (50),
satellite_airport_site_numbers	VARCHAR (11),
satellite_airport_location_identifiers	VARCHAR (4),
satellite_faa_region_codes VARCHAR (3),
satellite_associated_state_names	VARCHAR (30),
satellite_associated_state_post_office_codes	VARCHAR (2),
satellite_associated_cities	VARCHAR (40),
satellite_arpt_names	VARCHAR (50),
airport_formatted_latitude	VARCHAR (14),
airport_seconds_latitude	VARCHAR (11),
airport_formatted_longitude	VARCHAR (14),
airport_seconds_longitude	VARCHAR (11),
flight_service_station_identifiers	VARCHAR (4),
flight_service_station_names	VARCHAR (30),
master_airport_information_types	VARCHAR (11),
master_airport_faa_region_codes	VARCHAR (3),
master_airport_associated_state_names	VARCHAR (30),
master_airport_associated_state_post_office_codes	VARCHAR (2),
master_airport_associated_cities	VARCHAR (40),
master_airport_names	VARCHAR (50),
satellite_not_truncated_frequencies	VARCHAR (60));


# Create table for twr_TWR8
CREATE TABLE twr_twr8s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
terminal_communications_facility_identifiers	VARCHAR (4),
class_b_airspaces	VARCHAR (1),
class_c_airspaces	VARCHAR (1),
class_d_airspaces	VARCHAR (1),
class_e_airspaces	VARCHAR (1),
airspace_hours	VARCHAR (300));


# Create table for twr_TWR9
CREATE TABLE twr_twr9s (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
terminal_communications_facility_identifiers	VARCHAR (4),
atis_serial_numbers	VARCHAR (4),
atis_operation_local_hours	VARCHAR (200),
optional_atis_purposes	VARCHAR (100),
atis_phone_numbers	VARCHAR (18));


# Create table for wxl_WXL
CREATE TABLE wxl_wxls (
id           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT,
weather_reporting_location_latitudes	VARCHAR (8),
weather_reporting_location_longitudes	VARCHAR (9),
associated_cities	VARCHAR (26),
associated_state_po_codes	VARCHAR (2),
associated_country_numeric_codes	VARCHAR (3),
weather_reporting_location_elevations	VARCHAR (5),
weather_reporting_location_elevation_accuracies	VARCHAR (1),
weather_services	VARCHAR (60));
