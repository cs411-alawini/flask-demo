CREATE TABLE Pokemon_in_Bay(
    s2_id BIGINT PRIMARY KEY,
    s2_token VARCHAR(255),
    num INT,
    name VARCHAR(255),
    lat float,
    lng float,
    encounter_ms BIGINT,
    disappear_ms BIGINT
);