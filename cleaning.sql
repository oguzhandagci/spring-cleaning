-- I created the newdatabase. 
CREATE DATABASE shirts_db;

-- I created the table. 
CREATE TABLE shirts(
shirt_id INT AUTO_INCREMENT,
article VARCHAR(20),
color VARCHAR(20),
shirt_size VARCHAR(7),
last_worn INT,
PRIMARY KEY (shirt_id)
);

-- I inserted the items to the table.
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES('t-shirt','white','S',10);
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES('t-shirt','green','S',200);
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES('polo shirt','black','M',10);
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES('tank top','blue','S',50);
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES('t-shirt','pink','S',0);
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES('polo shirt','red','M',5);
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES('tank top','white','S',200);
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES('tank top','blue','M',15);

-- ----------------Q1
SELECT * FROM shirts;
-- ----------------Q2
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES('polo shirt','purple','M',50);
-- ----------------Q3
SELECT article, color FROM shirts;
-- ----------------Q4
SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size = 'M';
-- ----------------Q5
UPDATE shirts
SET shirt_size = 'L'
WHERE article = 'polo shirt';
-- ----------------Q6
UPDATE shirts
SET last_worn = 0
WHERE last_worn = 15;
-- ----------------Q7
UPDATE shirts
SET color = 'off white', shirt_size = 'XS'
WHERE color = 'white';
-- ----------------Q8
DELETE FROM shirts
WHERE last_worn =200;
-- ----------------Q9
DELETE FROM shirts
WHERE article ='tank top';
-- ----------------Q10
DELETE FROM shirts;
-- ----------------Q11
DROP TABLE shirts;