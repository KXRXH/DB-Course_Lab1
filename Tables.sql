-- Table with all genders
CREATE TABLE Gender
(
    gender_id   serial PRIMARY KEY,
    gender_name text NOT NULL
);
-- Table with all AVAILABLE nations
CREATE TABLE Nation
(
    nation_id   serial PRIMARY KEY,
    nation_name text NOT NULL
);
-- Table with all countries
CREATE TABLE Country
(
    country_id   serial PRIMARY KEY,
    country_name text NOT NULL
);
-- Human table
CREATE TABLE Human
(
    -- Auto-generated id
    id          serial PRIMARY KEY,
    name        text    NOT NULL,
    surname     text    NOT NULL,
    -- Id of the gender (there are only 2)
    sex         integer NOT NULL,
    age         integer NOT NULL,
    nationality integer NOT NULL,
    is_alive    boolean NOT NULL,
    FOREIGN KEY (nationality) REFERENCES Nation (nation_id),
    FOREIGN KEY (sex) REFERENCES Gender (gender_id)
        ON DELETE CASCADE
);
-- Table with all conferences
CREATE TABLE Conference
(
    id              serial PRIMARY KEY,
    conference_name text,
    country_id      integer NOT NULL,
    FOREIGN KEY (country_id) REFERENCES Country (country_id)
        ON DELETE CASCADE
);
-- Table with conferences participants
CREATE TABLE ConferenceParticipants
(
    conference_id  integer NOT NULL,
    participant_id integer NOT NULL,
    FOREIGN KEY (conference_id) REFERENCES Conference (id),
    FOREIGN KEY (participant_id) REFERENCES Human (id)
);
