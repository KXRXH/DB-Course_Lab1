-- Table with all genders
CREATE TABLE Genders
(
    gender_id   serial PRIMARY KEY,
    gender_name text NOT NULL
);
-- Table with all AVAILABLE nations
CREATE TABLE Nations
(
    nation_id   serial PRIMARY KEY,
    nation_name text NOT NULL
);
-- Table with all countries
CREATE TABLE Countries
(
    country_id   serial PRIMARY KEY,
    country_name text NOT NULL
);
-- Human table
CREATE TABLE Humans
(
    -- Auto-generated id
    id          serial PRIMARY KEY,
    first_name  text    NOT NULL,
    second_name text    NOT NULL,
    -- Id of the gender (there are only 2)
    sex         integer NOT NULL,
    age         integer NOT NULL,
    nationality integer NOT NULL,
    is_alive    boolean NOT NULL,
    FOREIGN KEY (nationality) REFERENCES Nations (nation_id),
    FOREIGN KEY (sex) REFERENCES Genders (gender_id)
);
-- Table with all conferences
CREATE TABLE Conferences
(
    id              serial PRIMARY KEY,
    conference_name text,
    country_id      integer,
    FOREIGN KEY (country_id) REFERENCES Countries (country_id)
);
-- Table with conferences participants
CREATE TABLE ConferenceParticipants
(
    conference_id  integer REFERENCES Conferences (id),
    participant_id integer REFERENCES Humans (id),
    PRIMARY KEY (conference_id, participant_id)
);
