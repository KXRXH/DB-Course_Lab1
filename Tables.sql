-- Table with all genders
CREATE TABLE Genders
(
    gender_id   SERIAl primary key,
    gender_name text NOT NULL
);
-- Table with all AVAILABLE nations
CREATE TABLE Nations
(
    nation_id   SERIAL primary key,
    nation_name text NOT NULL
);
-- Table with all countries
CREATE TABLE Countries
(
    country_id   SERIAL primary key,
    country_name TEXT not null
);

-- Main table
CREATE TABLE Humans
(
    -- Auto-generated id
    id          SERIAL primary key,
    first_name  text    not null,
    second_name text,
    -- Id of the gender (there are only 2)
    sex         integer,
    age         integer,
    nationality integer not null,
    is_alive    boolean not null,
    FOREIGN KEY (nationality) REFERENCES Nations (nation_id),
    FOREIGN KEY (sex) REFERENCES Genders (gender_id)
);
-- Table with all conferences
CREATE TABLE Conferences
(
    id              SERIAL primary key,
    conference_name TEXT,
    country_id      integer,
    FOREIGN KEY (country_id) REFERENCES Countries (country_id)
);

CREATE TABLE conference_participants
(
    conference_id  INTEGER REFERENCES Conferences (id),
    participant_id INTEGER REFERENCES Humans (id),
    PRIMARY KEY (conference_id, participant_id)
);
