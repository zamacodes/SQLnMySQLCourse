DELETE FROM TABLE

SELECT * FROM authors 
ORDER BY rand() 
LIMIT 10;

DELETE FROM authors
WHERE author_id = 161 LIMIT 1;

SELECT * FROM authors
WHERE author_id = 161 LIMIT 1;

select client_id, name from clients ORDER BY rand() LIMIT 10;
select client_id, name from clients where active <> 1;


UPDATE clients
SET active = 0
WHERE client_id = 80
LIMIT 1
;

UPDATE clients
SET email = "anewemail@gmail.com"
WHERE client_id = 7
OR client_id = 9
LIMIT 1 
;

UPDATE clients
SET active = "0"
WHERE client_id IN (1,6,8,27,90)
OR name LIKE "%Lopez%"
;

SELECT client_id, name, active from clients 
WHERE client_id IN (1,6,8,27,90)
OR name LIKE "%Lopez%"
;

