# Annika Lee
# Assignment: More Queries
# February 23, 2024


## BITS

USE bits;

# 8.
SELECT COUNT(*) ClientName
FROM client
WHERE CreditLimit = 10000;

# 10.
SELECT ClientName, CreditLimit-Balance AS RemainingCredit
FROM client;

# 12.
SELECT *
FROM tasks
ORDER BY Category, Price;


## COLONIAL

USE colonial;

# 9.
SELECT State, COUNT(*)
FROM trip
GROUP BY State;

# 10.
SELECT COUNT(*)
FROM reservation
WHERE TripPrice > 20 AND TripPrice < 75;


## SPORTS

USE sports;

# 8.
SELECT TherapyCode, Description
FROM therapies
WHERE UnitOfTime = 15
ORDER BY Description ASC;

# 14.

# All sessions were in October
SELECT AVG(LengthOfSession) AS AverageSessionTime
FROM session;

# Here is am alternative but more specific query
SELECT AVG(LengthOfSession) AS AverageSessionTime
FROM session
WHERE SessionDate LIKE '2018-10-*';

