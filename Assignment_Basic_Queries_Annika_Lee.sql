# ASSIGNMENT: BASIC QUERIES
# Annika Lee
# QMBE 3750


### BITS
USE bits_copy2;
SHOW TABLES;

# Question 1
SELECT ClientNum, ClientName
FROM client;

# Question 2
SELECT *
FROM tasks;



### COLONIAL
USE colonial_copy;
SHOW TABLES;

# Question 3
SELECT *
FROM trip
WHERE type = 'Hiking' AND distance > 6;

# Question 4
SELECT *
FROM trip
WHERE type = 'Paddling' AND state = 'VT';



### SPORTS
USE sports_copy;
SHOW TABLES;

# Question 3
SELECT *
FROM therapist
WHERE city = 'Palm Rivers';

# Question 4
SELECT *
FROM therapist
WHERE city != 'Palm Rivers';

# Question 5
SELECT patientnum, firstname, lastname
FROM patient
WHERE balance >= 3000;

# Question 11
SELECT patientnum, lastname
FROM patient
WHERE city IN ('Palm Rivers', 'Waterville', 'Munster');

# Question 21
SELECT patientnum, lastname
FROM patient
WHERE (city = 'Palm Rivers' OR city = 'Waterville' OR city = 'Munster');

# Question 22
SELECT therapycode, description, unitoftime
FROM therapies
WHERE description LIKE '*training*';


