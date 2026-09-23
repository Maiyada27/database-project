
--UPDATE Tasks
--1. Update one flight status from 'Scheduled' to 'Completed'.
UPDATE FLIGHT
SET Status = 'Completed'
WHERE FLIGHTID = 11;

--2. Change one flight status from 'Delayed' to 'Cancelled'.
UPDATE FLIGHT 
SET Status = 'Cancelled'
WHERE FLIGHTID =13;

--3. Increase all Economy class booking prices by 10%.
UPDATE BOOKING
SET Price = Price * 1.1
WHERE Class = 'Economy';

--4. Update one passenger's phone number.
UPDATE PASSENGER
SET PHONE = '+968 96539643'
WHERE PassengerID =2;

--5. Move one crew member to a different role.
UPDATE CREWMEMBER
SET Role = 'Pilot'
WHERE CREWMEMBERID =3;

--DELETE Tasks
--1. Delete one cancelled flight.
SELECT * FROM FLIGHT WHERE Status = 'Cancelled';
DELETE FROM FLIGHT WHERE FLIGHTID = 13;

--2. Delete one booking linked to a cancelled flight.
SELECT * FROM FLIGHT WHERE Status = 'Cancelled';
DELETE FROM BOOKING 
WHERE FlightID =14;

--3. Try to delete a passenger who has existing bookings. Observe what happens and write a short comment in your SQL file explaining the result.
DELETE FROM PASSENGER
WHERE NationalID = '9887626';

