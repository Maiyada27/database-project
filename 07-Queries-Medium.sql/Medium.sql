--Basic Level
--1. List all flights and their current status, ordered by departure datetime from earliest to latest.
SELECT FlightNO, Status, DepartureDateTime
FROM FLIGHT
ORDER BY DepartureDateTime ASC;

--2. Show all passengers, ordered alphabetically by full name.
SELECT NationalID,Fname, Lname, DOB, Nationality, NationalID
FROM PASSENGER
ORDER BY Fname ASC, Lname ASC;

--3. List all aircraft and their seating capacity, ordered from largest to smallest.
SELECT AircraftID, Model, Capacity
FROM AIRCRAFT 
ORDER BY Capacity DESC;

--4. Show all bookings and their class. Display only distinct class values that exist in the system.
SELECT DISTINCT Class
FROM BOOKING;

--5. List all flights that have a status of 'Delayed' or 'Cancelled'.
SELECT FlightNO, Status, DepartureDateTime
FROM FLIGHT
WHERE Status IN ('Delayed', 'Cancelled');

--6. Show all passengers whose nationality is 'Omani'.
SELECT NationalID,Fname, Lname, DOB, Nationality, NationalID
FROM PASSENGER
WHERE Nationality = 'Omani';

--7. List all airports, ordered by country.
SELECT IATA_CODE, Name, City, Country
FROM AIRPORT 
ORDER BY Country ASC;
