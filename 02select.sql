SELECT name birthdate from clients;

SELECT name, email, gender
   FROM clients
   WHERE gender = 'F'
;

SELECT name, email, gender
   FROM clients
   WHERE gender = 'F'
;

SELECT YEAR(birthdate) from clients;

SELECT YEAR(birthdate) from clients;

SELECT NOW();

SELECT YEAR(NOW());

SELECT name, YEAR(NOW()) - YEAR(birthdate) AS Age FROM clients;

SELECT name, YEAR(NOW()) - YEAR(birthdate) from clients where name like "%Saave*";

   SELECT name, email, YEAR(NOW()) - YEAR(birthdate) as age
      FROM clients
      WHERE gender = 'F'
      AND name like "%Lop%"
   ;
