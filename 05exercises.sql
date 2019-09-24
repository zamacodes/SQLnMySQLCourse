How many natiionalities are thereHo?
SELECT DISTINCT nationality from authors WHERE nationality IS NOT NULL;
SELECT nationality FROM authors WHERE nationality IS NOT NULL GROUP BY nationality;

How many writers are there by nationality?
SELECT nationality, count(author_id) as number_authors 
FROM authors 
WHERE nationality IS NOT NULL
GROUP BY nationality 
ORDER BY number_authors DESC, nationality;

SELECT nationality, count(author_id) as number_authors 
FROM authors 
WHERE nationality IS NOT NULL
AND nationality NOT IN('RUS','AUT')
GROUP BY nationality 
ORDER BY number_authors DESC, nationality;


How many books are there by nationality?
SELECT a.nationality, COUNT(b.book_id) as number_books
FROM authors as a
JOIN books as b
   on a.author_id = b.author_id
WHERE nationality IS NOT NULL
GROUP BY nationality
ORDER BY number_books DESC, nationality
;


What is the average and the standard deviation?
UPDATE books 
SET price = FLOOR(RAND()*(35-10+1))+10
WHERE book_id BETWEEN 13 AND 198
;


SELECT AVG(price) from books;
SELECT AVG(price), STDDEV(price) from books;

The same but by nationality

SELECT a.nationality,COUNT(book_id) as books, AVG(b.price) as avg, STDDEV(b.price) as stddev 
FROM books as b
JOIN authors as a
   on b.author_id = a.author_id
GROUP BY nationality
ORDER BY books desc
;


Which is the maximum and minumum price of a book?
SELECT price 
FROM books 
ORDER BY price ASC 
LIMIT 1;

SELECT price 
FROM books 
ORDER BY price DESC 
LIMIT 1;

SELECT nationality, MAX(price),MIN(price)
FROM books as b
JOIN authors as a
   ON a.author_id = b.author_id
GROUP BY nationality
ORDER BY nationality ASC
;

Loans report

random date
UPDATE transactions 
SET created_at = (select date_format(
    from_unixtime(
         rand() * 
            (unix_timestamp('2000-01-30 16:00:00') - unix_timestamp('2019-11-13 23:00:00')) + 
             unix_timestamp('2019-11-13 23:00:00')
                  ), '%Y-%m-%d %H:%i:%s') as datum_roden);

Quien rento, que libro y cuando





