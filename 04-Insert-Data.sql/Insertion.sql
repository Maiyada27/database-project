
INSERT INTO Airport (IATA_Code, Name, City, Country)
VALUES ('MCT', 'Muscat International Airport', 'Muscat', 'Oman'),             
('DXB', 'Dubai International Airport', 'Dubai', 'United Arab Emirates'), 
('LHR', 'Heathrow Airport', 'London', 'United Kingdom'),                
('JFK', 'JFK International Airport', 'New York', 'United States'), 
('CDG', 'Charles de Gaulle Airport', 'Paris', 'France');    

INSERT INTO Aircraft (REGNO, Model, Manufacturer, Capacity, YearOfManufature) VALUES
('A4O-SKA', 'A320',    'Airbus', 2015, 180),
('A4O-SKB', '737-800', 'Boeing', 2017, 189), 
('A4O-SKC', 'E190',    'Embraer', 2019, 100),
('A4O-SKD', 'A330-200','Airbus', 2012, 277), 
('A4O-SKE', '787-9',   'Boeing', 2020, 296);

INSERT INTO Flight (FlightNO, Status, DepartureDateTime, ArrivalDateTime, AircraftID, DepAirportID, ArrAirportID) 
VALUES
('SK101', 'Scheduled', '2026-10-01 08:00', '2026-10-01 09:30','A4O-SKA', 'MCT','DXB'),
('SK102', 'Scheduled', '2026-10-01 11:00', '2026-10-01 15:15','A4O-SKC', 'DXB', 'LHR'), 
('SK103', 'Delayed', '2026-10-02 07:30', '2026-10-02 15:45', 'A4O-SKD', 'LHR','JFK'), 
('SK104', 'Cancelled', '2026-10-02 18:00', '2026-10-02 20:30','A4O-SKE', 'JFK', 'CDG'), 
('SK105', 'Completed', '2026-09-15 06:00', '2026-09-15 13:20', 'A4O-SKE', 'CDG','MCT'), 
('SK106', 'Completed', '2026-09-18 09:00', '2026-09-18 16:10', 'A4O-SKC', 'MCT','LHR'), 
('SK107', 'Scheduled', '2026-10-05 13:00', '2026-10-05 22:40','A4O-SKD','DXB', 'JFK'), 
('SK108', 'Delayed', '2026-10-03 10:00', '2026-10-03 17:20','A4O-SKE','LHR','CDG'),
('SK109', 'Completed', '2026-09-20 21:00', '2026-09-21 09:15', 'A4O-SKB', 'LHR','JFK'); 

INSERT INTO Passenger (NationalID, Fname, Lname, Nationality, DOB, Phone, Email) 
VALUES
('8725472', 'Ahmed',  'Al-Busaidi', 'Omani', '1990-05-14', '+968-91112222', 'ahmed.albusaidi@gmail.com'),
('7463523', 'Amna',   'Al-Ajmi',    'Omani', '1985-03-22', '+968-98763274', 'amna98@gmail.com'),
('9887626', 'Ali',    'AlRasbi',    'Omani', '1980-09-17', '+968-98009770', 'ali.rasbi@hotmail.com'),
('9887627', 'Fatma',  'AlHarthy',   'Omani', '1985-03-12', '+968-91234567', 'fatma.harthy@gmail.com'),
('9887628', 'Salim',  'AlBalushi',  'Omani', '1978-07-25', '+968-92345678', 'salim.balushi@yahoo.com'),
('9887629', 'Maha',   'AlHinai',    'Omani', '1992-11-05', '+968-93456789', 'maha.hinai@outlook.com'),
('9887630', 'Hassan', 'AlShukaili', 'Omani', '1988-01-30', '+968-94567890', 'hassan.shukaili@hotmail.com'),
('9887631', 'Aisha',  'AlKalbani',  'Omani', '1975-06-14', '+968-95678901', 'aisha.kalbani@gmail.com');

INSERT INTO Booking ( Class, Price, SeatNO, BookingDate, FlightID, PassengerID) 
VALUES ('Economy', 120.00, '12A', '2026-09-23', 11, '9887626'),
('Business', 450.00, '2C', '2026-09-23', 13, '9887627'),
('Economy', 150.00, '18B', '2026-09-24', 15, '9887628'),
('First', 800.00, '1A', '2026-09-25', 14, '9887629'),
('Economy', 100.00, '22D', '2026-09-25', 12, '9887630'),
('Business', 500.00, '3F', '2026-09-26', 15, '9887631'),
('Economy', 130.00, '15C', '2026-09-27', 13, '9887626'),
('Business', 480.00, '4B', '2026-09-28', 14, '9887627'),
('Economy', 140.00, '19A', '2026-09-29', 14, '9887628'),
('First', 850.00, '1B', '2026-09-30', 11, '9887629');

INSERT INTO CrewMember (LicenseNO, Fname, Lname, Role)
VALUES ('LIC-P-1001', 'Khalid', 'Al-Saidi', 'Pilot'),   
('LIC-P-1002', 'Noora',  'Al-Habsi', 'Pilot'), 
('LIC-C-2001', 'Yousef', 'Al-Rawahi', 'Co-Pilot'), 
('LIC-C-2002', 'Aisha',  'Al-Balushi', 'Co-Pilot'), 
('LIC-F-3001', 'Layla',  'Ahmed', 'Flight Attendant'),
('LIC-F-3002', 'Omar',   'Khalfan', 'Flight Attendant'),
('LIC-E-4001', 'Rashid', 'Al-Amri', 'Engineer'), 
('LIC-E-4002', 'Salim',  'Al-Harthy', 'Engineer');    

INSERT INTO FlightCrew (LicenseNO, FlightID) 
VALUES
 ('LIC-P-1001', '11'),  
('LIC-C-2001', '11'),  
('LIC-F-3001', '11'),   
('LIC-E-4001', '11'),   

-- Flight 2
('LIC-P-1002', '12'),  
('LIC-C-2002', '12'),   
('LIC-F-3002', '12'),   
('LIC-E-4002', '12'),   

-- Flight 3
('LIC-P-1001', '13'),   
('LIC-C-2001', '13'),   
('LIC-F-3001', '13'), 

-- Flight 4
('LIC-P-1002', '14'),   
('LIC-C-2002', '14'),  
('LIC-F-3002', '14'),  

-- Flight 5
('LIC-P-1001', '15'),  
('LIC-C-2001', '15'),  
('LIC-F-3001', '15'),  
('LIC-E-4002', '15');   