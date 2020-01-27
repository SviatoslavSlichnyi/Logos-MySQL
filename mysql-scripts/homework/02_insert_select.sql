CREATE DATABASE IF NOT EXISTS library;
USE library;

DROP TABLE books;
CREATE TABLE IF NOT EXISTS books(
                                    id INT PRIMARY KEY AUTO_INCREMENT,
                                    name VARCHAR(120),
                                    description TEXT,
                                    date VARCHAR(4) NOT NULL,
                                    category VARCHAR(30) NOT NULL,
                                    isbn VARCHAR(20) NOT NULL UNIQUE,
                                    number_of_pages INT NOT NULL,
                                    author_name VARCHAR(45) NOT NULL,
                                    author_last_name VARCHAR(45),
                                    author_email VARCHAR(50) NOT NULL,
                                    author_age INT NOT NULL,
                                    author_birthday DATE NOT NULL,
                                    author_awards VARCHAR(120)
);

INSERT INTO books (name, description, date, category, isbn, number_of_pages, author_name, author_last_name, author_email, author_age, author_birthday, author_awards)
VALUES
('Sapiens', NULL, '2016', 'science', '978-617-12-1531-3', 544, 'Ulian', 'Harrary', 'hararri@gmai.com', 67, '1954-04-20', 'science'),
('Inferno', NULL, '2018', 'novel', '978-617-12-4966-0', 608, 'Dan', 'Brown', 'danbrown@gmai.com', 55, '1962-06-22', 'Humo\'\'s Gouden Bladwijzer'),
('Davinci Code', NULL, '2018', 'novel', '978-617-12-4758-1', 480, 'Dan', 'Brown', 'danbrown@gmai.com', 55, '1962-06-22', 'Humo\'\'s Gouden Bladwijzer'),
('Digit Fortress', NULL, '2018', 'novel', '978-617-12-4963-9', 416, 'Dan', 'Brown', 'danbrown@gmai.com', 55, '1962-06-22', 'Humo\'\'s Gouden Bladwijzer'),
('Don\'t look back and keep quit', NULL, '2017', 'novel', '978-617-12-3865-7', 512, 'Maksym', 'Kidruk', 'kidruk@gmai.com', 35, '1984-04-01', NULL),
('Sunset', NULL, '2018', 'novel', '978-617-12-4950-9', 480, 'Maksym', 'Kidruk', 'kidruk@gmai.com', 35, '1984-04-01', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-4950-1',  80, 'Maksym', 'Kidruk', 'kidruk@gmai.com', 35, '1984-04-01', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-4950-2', 160, 'Steven', 'King', 'morty@gmai.com', 63, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-4950-3',  94, 'Steven', 'King', 'max@gmai.com', 72, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-4950-4', 706, 'Steven', 'King', 'robert@gmai.com', 18, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-4950-5', 270, 'Steven', 'King', 'choco@gmai.com', 21, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-4950-6', 340, 'Steven', 'King', 'sara@gmai.com', 54, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-4950-7', 452, 'Steven', 'King', 'katy@gmai.com', 25, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-4950-8',  99, 'Steven', 'King', 'lola@gmai.com', 43, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-4951-1', 344, 'Steven', 'King', 'barry@gmai.com', 74, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-4951-2', 505, 'Steven', 'King', 'steve@gmai.com', 45, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-4951-3', 303, 'Steven', 'King', 'orest@gmai.com', 64, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-4951-4', 205, 'Steven', 'King', 'queen@gmai.com', 25, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-4951-5', 174, 'Steven', 'King', 'Alex@gmai.com', 38, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-4951-6', 256, 'Steven', 'King', 'Hix@gmai.com', 30, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-4951-7', 675, 'Steven', 'King', 'jerry@gmai.com', 20, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-4951-8', 676, 'Steven', 'King', 'klinton@gmai.com', 41, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-0000-1', 978, 'Steven', 'King', 'mikle@gmai.com', 33, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-0000-2', 999, 'Steven', 'King', 'jack@gmai.com', 52, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-0000-3',  24, 'Steven', 'King', 'patric@gmai.com', 60, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-0000-4', 686, 'Steven', 'King', 'jane@gmai.com', 50, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-0000-5', 676, 'Steven', 'King', 'oleg@gmai.com', 74, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-0000-6', 666, 'Steven', 'King', 'frog@gmai.com', 63, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-0000-7', 656, 'Steven', 'King', 'olia@gmai.com', 25, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-0000-8', 646, 'Steven', 'King', 'dog@gmai.com', 46, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-0000-9', 636, 'Steven', 'King', 'cat@gmai.com', 36, '1954-04-20', NULL),
('Steve', NULL, '2018', 'horror', '978-617-12-0110-0', 626, 'Steven', 'King', 'cow@gmai.com', 523, '1954-04-20', NULL);

SELECT * FROM books;
SELECT * FROM books WHERE id = 5 AND id = 10 AND id = 13;
SELECT * FROM books WHERE number_of_pages > 150;
SELECT * FROM books WHERE author_age > 30;
SELECT * FROM books WHERE author_awards IS NULL;
SELECT * FROM books WHERE author_email = 'email@gmail.com';
SELECT * FROM books WHERE isbn = 'isbn';
SELECT * FROM books WHERE category = 'hello';
SELECT * FROM books WHERE number_of_pages > 200 AND author_age > 25;
SELECT * FROM books WHERE category = 'comedy' OR category = 'drama';
SELECT * FROM books ORDER BY name;
SELECT * FROM books ORDER BY author_email;
SELECT * FROM books ORDER BY number_of_pages DESC;
SELECT DISTINCT category FROM books;
SELECT DISTINCT author_name FROM books;
SELECT * FROM books WHERE date > '2000-01-01' ORDER BY date;
SELECT * FROM books WHERE date < '2000-01-01' ORDER BY date;

SELECT * FROM books;