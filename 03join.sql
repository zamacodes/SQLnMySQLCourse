SELECT count(*) from books;
SELECT * from authors WHERE author_id > 0 and author_id <=5;
SELECT * from books WHERE author_id BETWEEN 1 AND 5;
SELECT book_id, author_id, title from books WHERE author_id BETWEEN 1 AND 5;

SELECT a.name as "author", a.author_id, b.title as "books name", b.book_id
   FROM books as b
   JOIN authors as a
      on a.author_id = b.author_id
   WHERE a.author_id between 1 AND 5;


SELECT c.name as client, b.title as book, a.name as author, t.type
FROM transactions as t
JOIN books as b 
   on t.book_id=b.book_id
JOIN clients as c
   on t.client_id = c.client_id
JOIN authors as a
   on b.author_id = a.author_id
WHERE t.transaction_id BETWEEN 1 AND 10
AND c.gender = "F"
AND t.type IN ("sold", "returned")
;

