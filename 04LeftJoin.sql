SELECT b.title, a.name
FROM authors AS a, books AS b
WHERE a.author_id = b.author_id
limit 10
;


SELECT b.title, a.name
FROM authors AS a
INNER JOIN books AS b
   ON a.author_id = b.author_id
LIMIT 10
;

____

SELECT a.author_id, a.name, a.nationality, b.title
FROM authors as a
JOIN books as b
   ON b.author_id = a.author_id
WHERE a.author_id between 1 and 5

SELECT a.author_id, a.name, a.nationality, b.title
FROM authors as a
LEFT JOIN books as b
   ON b.author_id = a.author_id
WHERE a.author_id between 1 and 5
ORDER BY a.author_id
;

SELECT a.author_id, a.name, a.nationality, COUNT(b.book_id)
FROM authors as a
LEFT JOIN books as b
   ON b.author_id = a.author_id
WHERE a.author_id between 1 and 5
GROUP BY a.author_id
ORDER BY a.author_id
;
