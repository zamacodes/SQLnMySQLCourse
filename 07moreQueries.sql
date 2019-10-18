SELECT DISTINCT nationality FROM authors;

SELECT SUM(price) FROM books WHERE SELLABLE = 1;

SELECT SUM(copíes) FROM books WHERE SELLABLE = 1;

SELECT SUM(copies*price) FROM books WHERE SELLABLE = 1;

SELECT SUM(copies*price) FROM books WHERE SELLABLE = 1;

SELECT COUNT(book_id), SUM(IF(year < 1950, 1, 0)) as "<1950" FROM books;

SELECT COUNT(book_id), 
   SUM(IF(year < 1950, 1, 0)) as "0 - 1950",
   SUM(IF(year >= 1950 AND year <1990, 1, 0)) as "1950 - 1990",
   SUM(IF(year >= 1990 AND year < 2000, 1, 0)) as "1990 - 2000",
   SUM(IF(year > 2000,1,0)) AS "2000 - TODAY"
FROM books;

SELECT nationality,
   COUNT(book_id), 
   SUM(IF(year < 1950, 1, 0)) as "0 - 1950",
   SUM(IF(year >= 1950 AND year <1990, 1, 0)) as "1950 - 1990",
   SUM(IF(year >= 1990 AND year < 2000, 1, 0)) as "1990 - 2000",
   SUM(IF(year > 2000,1,0)) AS "2000 - TODAY"
FROM books as b
JOIN authors as a
   ON a.author_id = b.author_id
WHERE nationality IS NOT NULL
GROUP BY nationality
ORDER BY nationality
;
