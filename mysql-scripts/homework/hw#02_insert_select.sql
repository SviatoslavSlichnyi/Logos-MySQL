CREATE DATABASE IF NOT EXISTS library;
USE library;

DROP TABLE books;
CREATE TABLE IF NOT EXISTS books
(
    id               INT PRIMARY KEY AUTO_INCREMENT,
    name             VARCHAR(120),
    description      TEXT,
    date             VARCHAR(10)    NOT NULL,
    category         VARCHAR(30)    NOT NULL,
    isbn             VARCHAR(20)    NOT NULL UNIQUE,
    number_of_pages  INT            NOT NULL,
    price            DECIMAL(10, 5) NOT NULL,
    author_name      VARCHAR(45)    NOT NULL,
    author_last_name VARCHAR(45),
    author_email     VARCHAR(50)    NOT NULL,
    author_age       INT            NOT NULL,
    author_birthday  DATE           NOT NULL,
    author_awards    VARCHAR(120)
);

INSERT INTO books (name, description, date, category, isbn, number_of_pages, price, author_name, author_last_name,
                   author_email, author_age, author_birthday, author_awards)
VALUES ('Sapiens', NULL, '2016', 'science', '978-617-12-1533-3', 544, 143.0, 'Ulian', 'Harrary', 'hararri@gmail.com',
        67,
        '1954-04-20', 'science'),
       ('Inferno', NULL, '2018', 'novel', '978-617-12-4966-0', 608, 120.0, 'Dan', 'Brown', 'danbrown@gmail.com', 55,
        '1962-06-22', 'Humo''s Gouden Bladwijzer'),
       ('Davinci Code', NULL, '2018', 'novel', '978-617-12-4758-1', 480, 189.0, 'Dan', 'Brown', 'danbrown@gmail.com',
        55,
        '1962-06-22', 'Humo''s Gouden Bladwijzer'),
       ('Digit Fortress', NULL, '2018', 'novel', '978-617-12-4963-9', 416, 99.0, 'Dan', 'Brown', 'danbrown@gmail.com',
        55,
        '1962-06-22', 'Humo''s Gouden Bladwijzer'),
       ('Don\'t look back and keep quit', NULL, '2017', 'novel', '978-617-12-3865-7', 512, 506.234, 'Maksym', 'Kidruk',
        'kidruk@gmail.com', 35, '1984-04-01', NULL),
       ('Sunset 707', NULL, '2018', 'novel', '978-617-12-4950-9', 480, 707.453, 'Maksym', 'Kidruk', 'kidruk@gmail.com',
        35,
        '1984-04-01', NULL),
       ('Steve 606', NULL, '2018', 'horror', '978-617-12-4950-1', 80, 606.23, 'Maksym', 'Kidruk', 'kidruk@gmail.com',
        35,
        '1984-04-01', NULL),
       ('Steve 956', NULL, '2018', 'horror', '978-617-12-4950-2', 160, 956.654, 'Steven', 'King', 'morty@gmail.com', 63,
        '1954-04-20', NULL),
       ('Steve 843', NULL, '2018', 'horror', '978-617-12-4950-3', 94, 843.876, 'Steven', 'King', 'max@gmail.com', 72,
        '1954-04-20', NULL),
       ('Steve 344', NULL, '2018', 'horror', '978-617-12-4950-4', 706, 344.56, 'Steven', 'King', 'robert@gmail.com', 18,
        '1954-04-20', NULL),
       ('Steve 234', NULL, '2018', 'horror', '978-617-12-4950-5', 270, 234.23, 'Steven', 'King', 'choco@gmail.com', 21,
        '1954-04-20', NULL),
       ('Steve 543', NULL, '2018', 'horror', '978-617-12-4950-6', 340, 543.45, 'Steven', 'King', 'sara@gmail.com', 54,
        '1954-04-20', NULL),
       ('Steve 473', NULL, '2018', 'horror', '978-617-12-4950-7', 452, 473.53, 'Steven', 'King', 'katy@gmail.com', 25,
        '1954-04-20', NULL),
       ('Steve 132', NULL, '2018', 'horror', '978-617-12-4950-8', 99, 132.72, 'Steven', 'King', 'lola@gmail.com', 43,
        '1954-04-20', NULL),
       ('Steve 324', NULL, '2018', 'horror', '978-617-12-4951-1', 344, 324.16, 'Steven', 'King', 'barry@gmail.com', 74,
        '1954-04-20', NULL),
       ('Steve 206', NULL, '2018', 'horror', '978-617-12-4951-2', 505, 206.84, 'Steven', 'King', 'steve@gmail.com', 45,
        '1954-04-20', NULL),
       ('Steve 469', NULL, '2018', 'horror', '978-617-12-4951-3', 303, 469.15, 'Steven', 'King', 'orest@gmail.com', 64,
        '1954-04-20', NULL),
       ('Steve 85', NULL, '2018', 'horror', '978-617-12-4951-4', 205, 85.74, 'Steven', 'King', 'queen@gmail.com', 25,
        '1954-04-20', NULL),
       ('Steve 400', NULL, '2018', 'horror', '978-617-12-4951-5', 174, 400.12, 'Steven', 'King', 'Alex@gmail.com', 38,
        '1954-04-20', NULL),
       ('Steve 1000', NULL, '2018', 'horror', '978-617-12-4951-6', 256, 1000.4, 'Steven', 'King', 'Hix@gmail.com', 30,
        '1954-04-20', NULL),
       ('Steve 800', NULL, '2018', 'horror', '978-617-12-4951-7', 675, 800.0, 'Steven', 'King', 'jerry@gmail.com', 20,
        '1954-04-20', NULL),
       ('Steve 755', NULL, '2018', 'horror', '978-617-12-4951-8', 676, 755.5, 'Steven', 'King', 'klinton@gmail.com', 41,
        '1954-04-20', NULL),
       ('Steve 365', NULL, '2018', 'horror', '978-617-12-0000-1', 978, 365.6, 'Steven', 'King', 'mikle@gmail.com', 33,
        '1954-04-20', NULL),
       ('Steve 125', NULL, '2018', 'horror', '978-617-12-0000-2', 999, 125.5, 'Steven', 'King', 'jack@gmail.com', 52,
        '1954-04-20', NULL),
       ('Steve 255', NULL, '2018', 'horror', '978-617-12-0000-3', 24, 255.0, 'Steven', 'King', 'patric@gmail.com', 60,
        '1954-04-20', NULL);

SELECT *
FROM books;

SELECT *
FROM books
WHERE id IN (5, 10, 13);

SELECT *
FROM books
WHERE number_of_pages > 150;

SELECT *
FROM books
WHERE author_age > 30;

SELECT *
FROM books
WHERE author_awards IS NULL;

SELECT *
FROM books
WHERE author_awards IS NOT NULL;

SELECT *
FROM books
WHERE author_email = 'patric@gmail.com';

SELECT *
FROM books
WHERE isbn = '978-617-12-1531-3';

SELECT *
FROM books
WHERE category = 'horror';

SELECT *
FROM books
WHERE number_of_pages > 200
  AND author_age > 25;

SELECT *
FROM books
WHERE category = 'novel'
   OR category = 'science';

SELECT *
FROM books
ORDER BY name;

SELECT *
FROM books
ORDER BY author_email;

SELECT *
FROM books
ORDER BY number_of_pages DESC;

SELECT DISTINCT category
FROM books;

SELECT DISTINCT author_name
FROM books;

SELECT *
FROM books
WHERE date > '1965-01-01'
ORDER BY date;

SELECT *
FROM books
WHERE author_birthday < '1965-01-01'
ORDER BY date;

SELECT *
FROM books;
