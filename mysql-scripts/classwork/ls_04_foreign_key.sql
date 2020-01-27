#Foreign key
#Connection between tables

#Foreign key - possibility to build connections

DROP DATABASE IF EXISTS car_rent;
CREATE DATABASE IF NOT EXISTS car_rent;
USE car_rent;


CREATE TABLE town
(
    id         INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name       VARCHAR(60) NOT NULL,
    country_id INT         NOT NULL
);

CREATE TABLE country
(
    id   INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS manufacturer
(
    id      INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(50) NOT NULL UNIQUE,
    details TEXT
);

CREATE TABLE model
(
    id              INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name            VARCHAR(50) NOT NULL UNIQUE,
    year            DATE        NOT NULL,
    manufacturer_id INT         NOT NULL
);

CREATE TABLE color
(
    id   INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE fuel_type
(
    id   INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(25) NOT NULL UNIQUE
);

CREATE TABLE vehicle_category
(
    id          INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(50) NOT NULL UNIQUE,
    description BLOB        NOT NULL
);

CREATE TABLE drive_type
(
    id          INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(50) NOT NULL UNIQUE,
    description TEXT
);

CREATE TABLE transmission_type
(
    id   INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE vehicle
(
    id                   INT           NOT NULL PRIMARY KEY AUTO_INCREMENT,
    req_number           VARCHAR(12)   NOT NULL UNIQUE,
    current_km           DECIMAL(8, 2) NOT NULL,
    engine_size          DECIMAL(2, 1) NOT NULL,
    daily_hire_rate      DECIMAL(7, 2) NOT NULL,
    model_id             INT           NOT NULL,
    vehicle_category_id  INT           NOT NULL,
    color_id             INT           NOT NULL,
    fuel_type_id         INT           NOT NULL,
    drive_type_id        INT           NOT NULL,
    transmission_type_id INT           NOT NULL
);

CREATE TABLE gender
(
    id   INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE customer
(
    id           INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name   VARCHAR(45) NOT NULL,
    last_name    VARCHAR(45) NOT NULL,
    details      TEXT,
    email        VARCHAR(80) NOT NULL UNIQUE,
    birthday     DATE        NOT NULL,
    phone_number VARCHAR(20) NOT NULL UNIQUE,
    town_id      INT         NOT NULL,
    gender_id    INT         NOT NULL
);

CREATE TABLE booking
(
    id                INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_from         DATE NOT NULL,
    date_to           DATE NOT NULL,
    payment_received  BOOLEAN DEFAULT FALSE,
    customer_id       INT  NOT NULL,
    vehicle_id        INT  NOT NULL,
    booking_status_id INT  NOT NULL
);

CREATE TABLE booking_status
(
    id          INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(15) NOT NULL UNIQUE,
    description VARCHAR(255)
);


ALTER TABLE town
    ADD FOREIGN KEY (country_id) REFERENCES country (id);

ALTER TABLE model
    ADD FOREIGN KEY (manufacturer_id)
        REFERENCES manufacturer (id);
ALTER TABLE vehicle
    ADD FOREIGN KEY (model_id) REFERENCES model (id);
ALTER TABLE vehicle
    ADD FOREIGN KEY (vehicle_category_id) REFERENCES vehicle_category (id);
ALTER TABLE vehicle
    ADD FOREIGN KEY (color_id) REFERENCES color (id);
ALTER TABLE vehicle
    ADD FOREIGN KEY (fuel_type_id) REFERENCES fuel_type (id);
ALTER TABLE vehicle
    ADD FOREIGN KEY (drive_type_id) REFERENCES drive_type (id);
ALTER TABLE vehicle
    ADD FOREIGN KEY (transmission_type_id) REFERENCES transmission_type (id);

ALTER TABLE customer
    ADD FOREIGN KEY (town_id) REFERENCES town (id);
ALTER TABLE customer
    ADD FOREIGN KEY (gender_id) REFERENCES gender (id);

ALTER TABLE booking
    ADD FOREIGN KEY (customer_id) REFERENCES customer (id);
ALTER TABLE booking
    ADD FOREIGN KEY (vehicle_id) REFERENCES vehicle (id);
ALTER TABLE booking
    ADD FOREIGN KEY (booking_status_id) REFERENCES booking_status (id);