ALTER TABLE authors ADD COLUMN birth_year INTEGER default 1930 AFTER name;

ALTER TABLE authors modify COLUMN birth_year year DEFAULT 1920;

ALTER TABLE authors DROP COLUMN birth_year;

SHOW tables LIKE "%i%";

