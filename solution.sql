--QUESTION 1

SELECT first_name, last_name FROM authors

--QUESTION 2

SELECT first_name, last_name FROM distinguished_authors

--QUESTION 3

SELECT authors.first_name from authors 
LEFT JOIN distinguished_authors 
ON authors.first_name = distinguished_authors.first_name 
WHERE award IS null;

--QUESTION 4

SELECT COUNT(id) FROM authors

--QUESTION 5

SELECT authors_and_titles FROM employees 
LEFT JOIN favorite_authors 
ON employees.id = favorite_authors.employee_id
WHERE LOWER(first_name) = 'michael';

--QUESTION 6

SELECT title FROM books JOIN editions 
ON books.id = editions.book_id 
JOIN daily_inventory
ON editions.isbn = daily_inventory.isbn
WHERE is_stocked = 'T';

--QUESTION 7

INSERT INTO books (id, title, author_id, subject_id)
VALUES (8675309, Harry Potter, 9035768, 2);

INSERT INTO editions (isbn, book_id, edition, publisher_id, publication)
VALUES (292929, 8675309, 3, 1998-06-10, (p);

INSERT INTO authors (id, last_name, first_name)
VALUES (9035768, rowling, jk);
--QUESTION 8

SELECT * FROM authors JOIN books 
ON authors.id = books.author_id 
JOIN editions
ON books.id = editions.book_id
JOIN daily_inventory
ON editions.isbn = daily_inventory.isbn
WHERE is_stocked = 'f';

--QUESTION 9

SELECT T FROM books JOIN editions 
ON books.id = editions.book_id
JOIN stock
ON editions.isbn= stock.isbn
ORDER BY stock DESC
LIMIT 1;


