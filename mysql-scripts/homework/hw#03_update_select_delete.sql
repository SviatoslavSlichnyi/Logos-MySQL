USE `library`;

UPDATE books
SET author_name      = 'Black',
    author_last_name = 'Jack'
WHERE id = 10;

UPDATE books
SET author_name      = 'Patric',
    author_last_name = 'Jane'
WHERE id = 11;

SELECT count(*)
FROM books
WHERE author_awards IS NOT NULL;

SELECT *
FROM books
WHERE number_of_pages = (SELECT min(number_of_pages) FROM books);

SELECT *
FROM books
WHERE number_of_pages = (SELECT max(number_of_pages) FROM books);

SELECT avg(price) averange_price
FROM books;

SELECT sum(price)
FROM books
WHERE category = 'novel';

SELECT min(price)
FROM books;

SELECT *
FROM books
WHERE price = (SELECT min(price) FROM books);

SELECT id, name, description, date, category, isbn, number_of_pages, round(price, 4), author_name, author_last_name, author_email, author_age, author_birthday, author_awards
FROM books
ORDER BY name;

SELECT *
FROM books
ORDER BY date
LIMIT 5,5;

SELECT *
FROM books
ORDER BY date
LIMIT 10,6;

SELECT *
FROM books
WHERE name LIKE 'Steve%';

SELECT *
FROM books
WHERE isbn LIKE '978-617-12-4950-_';

SELECT *
FROM books
WHERE isbn LIKE '978-617-12-495_-1';

SELECT *
FROM books
WHERE price BETWEEN 50 AND 120;

SELECT *
FROM books
WHERE price NOT BETWEEN 200 and 600;

DELETE FROM books
WHERE id = 1;

DELETE FROM books
WHERE name = 'Inferno';

DELETE FROM books
WHERE isbn = '978-617-12-4950-1';

SELECT *
FROM books;

INSERT INTO books (name, description, date, category, isbn, number_of_pages, price, author_name, author_last_name,
                   author_email, author_age, author_birthday, author_awards)
VALUES ('Sapiens', NULL, '2016', 'science', '978-617-12-1531-3', 544, 143, 'Ulian', 'Harrary', 'hararri@gmail.com', 67,
        '1954-04-20', 'science'),
       ('Inferno', NULL, '2018', 'novel', '978-617-12-4966-0', 608, 120, 'Dan', 'Brown', 'danbrown@gmail.com', 55,
        '1962-06-22', 'Humo''s Gouden Bladwijzer'),
       ('Steve 606', NULL, '2018', 'horror', '978-617-12-4950-1', 80, 606, 'Maksym', 'Kidruk', 'kidruk@gmail.com', 35,
        '1984-04-01', NULL);