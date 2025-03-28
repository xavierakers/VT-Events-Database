-- Database setup script

DROP DATABASE IF EXISTS vt_event_database;
CREATE DATABASE vt_event_database;
USE vt_event_database;

SOURCE schema/create_tables.sql;
SOURCE schema/add_constraints.sql;

SOURCE dummy_data/dummy_venues.sql;
SOURCE dummy_data/dummy_users.sql;
SOURCE dummy_data/dummy_roles.sql;
SOURCE dummy_data/dummy_events.sql;
SOURCE dummy_data/dummy_organizations.sql;
SOURCE dummy_data/dummy_registrations.sql;

-- SELECT * FROM venues;
-- SELECT * FROM users;
-- SELECT * FROM roles;
-- SELECT * FROM events;
