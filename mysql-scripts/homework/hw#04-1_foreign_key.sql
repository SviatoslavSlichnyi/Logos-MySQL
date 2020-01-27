CREATE DATABASE IF NOT EXISTS new_library;
USE new_library;

CREATE TABLE IF NOT EXISTS narrative_forms
(
    id   INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(32) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS author
(
    id        INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name      VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    email     VARCHAR(64) NOT NULL,
    birthday  DATE
);

CREATE TABLE IF NOT EXISTS book
(
    id                 INT            NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name               VARCHAR(64)    NOT NULL UNIQUE,
    description        TEXT,
    price              DECIMAL(10, 4) NOT NULL,
    isbn               VARCHAR(30)    NOT NULL UNIQUE,
    author_id          INT            NOT NULL,
    narrative_forms_id INT            NOT NULL
);

ALTER TABLE book
    ADD FOREIGN KEY (author_id) REFERENCES author (id);
ALTER TABLE book
    ADD FOREIGN KEY (narrative_forms_id) REFERENCES narrative_forms (id);
