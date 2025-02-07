# Basic Queries

#1
SELECT Name FROM students;

#2
SELECT * FROM students WHERE (Age > 30);

#3
SELECT Name FROM students WHERE (Gender='F' AND Age > 30);

#4
SELECT points FROM students WHERE Name='Alex'; 

#5
INSERT INTO students ('Name', 'Age', 'Gender', 'Points')
VALUES ('Ibrahim', '28', 'M','200');

#6
UPDATE students SET Points= Points+500 WHERE Name= 'Basma';

#7
UPDATE students SET Points= Points-200 WHERE Name= 'Alex';

#8 Done

#9 Done

#Creating Table

CREATE TABLE "graduates" (
	"ID"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER,
	"Gender"	TEXT,
	"Points"	INTEGER,
	"Graduation"	TEXT
);

INSERT INTO graduates (ID,Name,Age,Gender,Points)
SELECT ID,name,age,gender,points FROM students
WHERE name='Layal';

UPDATE graduates
SET Graduation="08/09/2018"
WHERE Name="Layal";

DELETE from students WHERE name="ahmad";

#Joins

#1
SELECT employees.Name
FROM employees
INNER JOIN companies
ON companies.data > 2000;

#2
SELECT employees.Name
FROM employees
INNER JOIN companies
ON companies.name = employees.Company
WHERE companies.Date>2000;

#3
SELECT companies.Name
FROM employees
INNER JOIN companies
ON companies.name = employees.Company
WHERE employees.Role= 'Graphic Designer';

#Count & Filter

#1
SELECT name FROM students
WHERE Points = (SELECT MAX(Points) FROM students);

#2
SELECT AVG(Points) FROM students;

#3
SELECT COUNT(Points)
FROM students
WHERE Points=500;

#4
SELECT name
FROM students
WHERE name LIKE '%s%';

#5
SELECT name, points
FROM students
ORDER BY points DESC;