# Annika Lee
# QMBE 3750
# Assignment: JOINS, etc.
# March 24, 2024


### BITS
USE bits_copy2;

# Q3
SELECT ClientNum, ClientName
FROM Client
WHERE ConsltNum = 22;

# Q13
SELECT COUNT(*), AVG(Balance), Consultant.LastName
FROM Client
JOIN Consultant ON Client.ConsltNum = Consultant.ConsltNum
GROUP BY Consultant.LastName
ORDER BY Consultant.LastName;


### COLONIAL
USE colonial_copy;

# Q7
SELECT TripName, State
FROM Trip
WHERE Season = 'Summer'
ORDER BY State, TripName;

# Q12
SELECT Trip.TripName, Guide.FirstName, Guide.LastName
FROM Trip, Guide, TripGuides
WHERE Trip.TripID = TripGuides.TripID
AND Guide.GuideNum = TripGuides.GuideNum
AND Trip.State = 'NH'
ORDER BY Trip.TripName, Guide.LastName;

# Q14
SELECT Reservation.TripPrice + OtherFees AS TotalCost, Reservation.ReservationID, Trip.TripName, Customer.LastName, Customer.FirstName
FROM Reservation, Trip, Customer
WHERE Reservation.TripID = Trip.TripID
AND Customer.CustomerNum = Reservation.CustomerNum
AND NumPersons > 4;


### SPORTS
USE sports_copy;
SHOW TABLES;

# Q15
SELECT concat(Therapist.FirstName, ' ', LastName) AS TherapistName
FROM Therapist, Therapies, Session
WHERE Session.TherapyCode = Therapies.TherapyCode
AND Session.TherapistID = Therapist.TherapistID
AND Description = 'Massage' OR 'Whirlpool';

