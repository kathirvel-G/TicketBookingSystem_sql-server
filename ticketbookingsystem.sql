use TicketBookingSystemFinal;

CREATE TABLE Venue(
  venue_id INT PRIMARY KEY NOT NULL,
  venue_name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL
);

CREATE TABLE Event (
  event_id INT PRIMARY KEY,
  event_name VARCHAR(255) NOT NULL,
  event_date DATE NOT NULL,
  event_time TIME NOT NULL,
  total_seats INT NOT NULL,
  available_seats INT NOT NULL,
  ticket_price DECIMAL(10, 2) NOT NULL,
  event_type VARCHAR(20),
  venue_id INT,
  CONSTRAINT FK_VenueID FOREIGN KEY (venue_id) REFERENCES Venue (venue_id)
);

CREATE TABLE Booking(
  booking_id INT PRIMARY KEY,
  num_tickets INT NOT NULL,
  total_cost DECIMAL(10, 2) NOT NULL,
  booking_date DATE NOT NULL,
  event_id INT,
  CONSTRAINT FK_EventID FOREIGN KEY (event_id) REFERENCES Event (event_id)
);

CREATE TABLE Customer (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE, 
  phone_number VARCHAR(20),
  booking_id INT,
  CONSTRAINT FK_BookingID FOREIGN KEY (booking_id) REFERENCES Booking (booking_id)
  
);

INSERT INTO Venue (venue_id, venue_name, address) VALUES
(1, 'Sunset Theater', '123 Main Street'),
(2, 'Grand Arena', '456 Oak Avenue'),
(3, 'City Convention Center', '789 Pine Street'),
(4, 'Central Stadium', '101 Elm Street'),
(5, 'Oakwood Concert Hall', '234 Maple Avenue'),
(6, 'Riverside Arena', '567 Cedar Street'),
(7, 'Metropolitan Exhibition Center', '890 Birch Avenue'),
(8, 'Downtown Pavilion', '112 Pinecone Road'),
(9, 'Cozy Theater', '345 Walnut Street'),
(10, 'Hilltop Amphitheater', '678 Oakwood Lane'),
(11, 'Garden Gallery', '901 Elm Avenue'),
(12, 'Lakeview Studio', '234 Birch Street'),
(13, 'Central Park Pavilion', '567 Maple Road'),
(14, 'Skyline Club', '890 Pinecone Lane'),
(15, 'Seaside Bar', '123 Walnut Avenue');


INSERT INTO Event (event_id, event_name, event_date, event_time, total_seats, available_seats, ticket_price, event_type, venue_id) VALUES
(1, 'Movie Night: The Classics', '2024-03-15', '18:00:00', 200, 200, 15.00, 'Movie', 1),
(2, 'Concert: Rock & Roll Revival', '2024-04-20', '20:00:00', 1000, 800, 50.00, 'Concert', 2),
(3, 'Basketball Game: City Rivals Clash', '2024-05-10', '17:00:00', 15000, 14000, 30.00, 'Sports', 3),
(4, 'Live Stand-Up Comedy Show', '2024-06-25', '19:30:00', 300, 280, 40.00, 'Comedy', 4),
(5, 'Music Festival: Summer Vibes', '2024-07-05', '16:00:00', 5000, 4800, 60.00, 'Music', 5),
(6, 'Broadway Musical: The Phantom of the Opera', '2024-08-12', '19:00:00', 800, 750, 80.00, 'Theater', 6),
(7, 'Art Exhibition: Modern Art Showcase', '2024-09-08', '11:00:00', 200, 180, 20.00, 'Art', 7),
(8, 'Soccer Match: International Friendly', '2024-10-15', '15:30:00', 30000, 29000, 40.00, 'Sports', 8),
(9, 'Jazz Night: Smooth Sounds', '2024-11-20', '20:00:00', 400, 380, 35.00, 'Music', 9),
(10, 'Movie Marathon: Sci-Fi Extravaganza', '2024-12-05', '12:00:00', 100, 90, 25.00, 'Movie', 10),
(11, 'Concert: Classical Masterpieces', '2025-01-10', '19:30:00', 800, 780, 70.00, 'Concert', 11),
(12, 'Football Game: Championship Final', '2025-02-15', '16:00:00', 25000, 24800, 50.00, 'Sports', 12),
(13, 'Dance Performance: Ballet Gala', '2025-03-20', '18:30:00', 600, 550, 45.00, 'Dance', 13),
(14, 'Concert: Pop Sensations Live', '2025-04-10', '20:00:00', 1200, 1150, 55.00, 'Music', 14),
(15, 'Movie Night: Family Favorites', '2025-05-15', '17:00:00', 300, 280, 20.00, 'Movie', 15);


INSERT INTO Booking (booking_id, num_tickets, total_cost, booking_date, event_id) VALUES
(1, 2, 30.00, '2024-03-10', 1),
(2, 4, 200.00, '2024-04-18', 2),
(3, 5, 150.00, '2024-05-05', 3),
(4, 3, 120.00, '2024-06-20', 4),
(5, 6, 360.00, '2024-07-01', 5),
(6, 1, 80.00, '2024-08-10', 6),
(7, 3, 60.00, '2024-09-05', 7),
(8, 2, 80.00, '2024-10-12', 8),
(9, 4, 140.00, '2024-11-18', 9),
(10, 2, 50.00, '2024-12-03', 10),
(11, 1, 35.00, '2025-01-08', 11),
(12, 5, 250.00, '2025-02-20', 12),
(13, 2, 90.00, '2025-03-18', 13),
(14, 3, 165.00, '2025-04-05', 14),
(15, 4, 80.00, '2025-05-10', 15);

UPDATE Booking SET total_cost = 30.00 WHERE booking_id =1;
UPDATE Booking SET total_cost = 200.00 WHERE booking_id =2;
UPDATE Booking SET total_cost = 150.00 WHERE booking_id =3;
UPDATE Booking SET total_cost = 120.00 WHERE booking_id =4;
UPDATE Booking SET total_cost = 360.00 WHERE booking_id =5;
UPDATE Booking SET total_cost = 80.00 WHERE booking_id =6;
UPDATE Booking SET total_cost = 60.00 WHERE booking_id =7;
UPDATE Booking SET total_cost = 80.00 WHERE booking_id =8;
UPDATE Booking SET total_cost = 140.00 WHERE booking_id =9;
UPDATE Booking SET total_cost = 50.00 WHERE booking_id =10;
UPDATE Booking SET total_cost = 35.00 WHERE booking_id =11;
UPDATE Booking SET total_cost = 250.00 WHERE booking_id =12;
UPDATE Booking SET total_cost = 90.00 WHERE booking_id =13;
UPDATE Booking SET total_cost = 165.00 WHERE booking_id =14;
UPDATE Booking SET total_cost = 80.00 WHERE booking_id =15;



INSERT INTO Customer (customer_id, customer_name, email, phone_number, booking_id) VALUES
(1, 'John Smith', 'john@example.com', '123-456-7890', 1),
(2, 'Emily Johnson', 'emily@example.com', '234-567-8901', 2),
(3, 'Michael Williams', 'michael@example.com', '345-678-9012', 3),
(4, 'Jessica Brown', 'jessica@example.com', '456-789-0123', 4),
(5, 'Christopher Davis', 'christopher@example.com', '567-890-1234', 5),
(6, 'Ashley Miller', 'ashley@example.com', '678-901-2345', 6),
(7, 'Matthew Wilson', 'matthew@example.com', '789-012-3456', 7),
(8, 'Emma Moore', 'emma@example.com', '890-123-4567', 8),
(9, 'Daniel Taylor', 'daniel@example.com', '901-234-5678', 9),
(10, 'Olivia Anderson', 'olivia@example.com', '012-345-6789', 10),
(11, 'Alexander Thomas', 'alexander@example.com', '123-456-7890', 11),
(12, 'Sophia Jackson', 'sophia@example.com', '234-567-8901', 12),
(13, 'William White', 'william@example.com', '345-678-9012', 13),
(14, 'Ava Harris', 'ava@example.com', '456-789-0123', 14),
(15, 'Ethan Martin', 'ethan@example.com', '567-890-1234', 15);

ALTER TABLE Event ADD booking_id INT NULL;

ALTER TABLE Event
ADD CONSTRAINT FKD_Booking_Event
FOREIGN KEY (booking_id) REFERENCES Booking  (booking_id);


UPDATE Event SET booking_id = 1 WHERE event_id = 1;
UPDATE Event SET booking_id = 2 WHERE event_id = 2;
UPDATE Event SET booking_id = 3 WHERE event_id = 3;
UPDATE Event SET booking_id = 4 WHERE event_id = 4;
UPDATE Event SET booking_id = 5 WHERE event_id = 5;
UPDATE Event SET booking_id = 6 WHERE event_id = 6;
UPDATE Event SET booking_id = 7 WHERE event_id = 7;
UPDATE Event SET booking_id = 8 WHERE event_id = 8;
UPDATE Event SET booking_id = 9 WHERE event_id = 9;
UPDATE Event SET booking_id = 10 WHERE event_id =10;
UPDATE Event SET booking_id = 11 WHERE event_id = 11;
UPDATE Event SET booking_id = 12 WHERE event_id = 12;
UPDATE Event SET booking_id = 13 WHERE event_id = 13;
UPDATE Event SET booking_id = 14 WHERE event_id = 14;
UPDATE Event SET booking_id = 15 WHERE event_id = 15;

ALTER TABLE Booking ADD customer_id INT;
ALTER TABLE Booking
ADD CONSTRAINT FKE_Customer_Id
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id);

UPDATE Booking SET customer_id = 1 WHERE booking_id = 1;
UPDATE Booking SET customer_id = 2 WHERE booking_id = 2;
UPDATE Booking SET customer_id = 3 WHERE booking_id = 3;
UPDATE Booking SET customer_id = 4 WHERE booking_id = 4;
UPDATE Booking SET customer_id = 5 WHERE booking_id = 5;
UPDATE Booking SET customer_id = 6 WHERE booking_id = 6;
UPDATE Booking SET customer_id = 7 WHERE booking_id = 7;
UPDATE Booking SET customer_id = 8 WHERE booking_id = 8;
UPDATE Booking SET customer_id = 9 WHERE booking_id = 9;
UPDATE Booking SET customer_id = 10 WHERE booking_id = 10;
UPDATE Booking SET customer_id = 11 WHERE booking_id = 11;
UPDATE Booking SET customer_id = 12 WHERE booking_id = 12;
UPDATE Booking SET customer_id = 13 WHERE booking_id = 13;
UPDATE Booking SET customer_id = 14 WHERE booking_id = 14;
UPDATE Booking SET customer_id = 15 WHERE booking_id = 15;

select * from Booking;
select * from Venue;
select * from Event;
select * from Customer;

--TASK 2
--Write a SQL query to list all Events. 
select * from Event;

--Write a SQL query to select events with available tickets.
Select event_name from Event where available_seats>0;

--Write a SQL query to select events name partial match with ‘cup’
select event_name from Event where event_name like '%cup%';

--Write a SQL query to select events with ticket price range is between 1000 to 2500.
select event_name from Event where ticket_price between 1000 and 2500;

--Write a SQL query to retrieve events with dates falling within a specific range.
select event_name from Event where event_date between '2024-01-01' and '2024-09-01';

--Write a SQL query to retrieve events with available tickets that also have "Concert" in their name.
select event_name from Event where available_seats > 0 and event_name like '%Concert%';

--Write a SQL query to retrieve users in batches of 5, starting from the 6th user
select customer_name from Customer order by customer_name offset 5 rows fetch next 10 rows only;

--Write a SQL query to retrieve bookings details contains booked no of ticket more than 4.
select * from Booking where num_tickets > 4;

--Write a SQL query to retrieve customer information whose phone number end with ‘000’
select * from Customer where phone_number like '%000';

--Write a SQL query to retrieve the events in order whose seat capacity more than 15000.
select event_name from Event where total_seats > 15000;

--. Write a SQL query to select events name not start with ‘x’, ‘y’, ‘z’
select event_name from Event where event_name not like 'x%' and event_name not like 'y%'and event_name not like 'z%'

--TASK 3
--Write a SQL query to List Events and Their Average Ticket Prices.
select  event_name, AVG(ticket_price) as average_ticket_price from Event group by event_name order by event_name ;


--Write a SQL query to Calculate the Total Revenue Generated by Events.
SELECT SUM(total_cost) AS total_revenue
FROM Booking;

select * from Booking;
select * from Customer;
select * from Event;

--Write a SQL query to find the event with the highest ticket sales.
select top 1 event_name, MAX(num_tickets) as HighestTicket from Event e
join Booking b on b.booking_id = e.booking_id group by event_name order by HighestTicket desc;

select event_name, MAX(num_tickets) as HighestTicket from Booking;


--Write a SQL query to Calculate the Total Number of Tickets Sold for Each Event.
select num_tickets, event_name from Event e join Booking b on b.booking_id = e.booking_id order by num_tickets;
--Write a SQL query to Find Events with No Ticket Sales.
select num_tickets, event_name from Event e join Booking b on b.booking_id = e.booking_id where num_tickets =0;

--Write a SQL query to Find the User Who Has Booked the Most Tickets.
select top 1 customer_name, MAX(num_tickets) as MostTicket from Customer c join Booking b on c.booking_id = b.booking_id group by customer_name order by MostTicket desc;
select top 1 customer_name, MAX(num_tickets) as maximumTickets from Customer c join Booking b on b.booking_id = c.booking_id group by customer_name order by maximumTickets desc ;

--Write a SQL query to List Events and the total number of tickets sold for each month.



select * from Event;
select * from Booking;
select MONTH(event_date) as month, SUM(num_tickets) as TotalTickets from Event e join Booking b on e.booking_id = b.booking_id group by MONTH(event_date);
select * from Event e join Booking b on b.booking_id = e.booking_id;

--Write a SQL query to calculate the average Ticket Price for Events in Each Venue


select v.venue_id, venue_name, event_name, AVG(ticket_price) as averageticketprice from Event e join Venue v on v.venue_id = e.venue_id group by venue_name, event_name, v.venue_id;

--Write a SQL query to calculate the total Number of Tickets Sold for Each Event Type.
select event_type, sum(num_tickets) TotalTickets from Event as e join Booking as b on e.booking_id = b.booking_id group by event_type;
select event_type, SUM(num_tickets) as numofTickets from Event e join Booking b on e.event_id = b.event_id group by event_type;

--. Write a SQL query to calculate the total Revenue Generated by Events in Each Year
select YEAR(event_date) years, SUM(total_cost) TotalRevenue from Event e join Booking b on e.event_id = b.event_id group by YEAR(event_date);


select year(booking_date) as year, SUM(total_cost) as TotalCost from Booking group by year(booking_date);

--Write a SQL query to list users who have booked tickets for multiple events.
select customer_name, event_name from Customer c join Event e on e.booking_id = c.booking_id group by customer_name, event_name;
select * from Customer;

select customer_name, num_tickets,b.event_id from Customer c join Booking b on c.booking_id = b.booking_id group by customer_name, num_tickets, b.event_id HAVING COUNT(b.event_id) > 1;

--Write a SQL query to calculate the Total Revenue Generated by Events for Each User.
select event_id, total_cost, customer_id from Booking;
select * from Booking;
SELECT 
    c.customer_id, 
    customer_name, 
    SUM(total_cost) AS total_revenue
FROM Customer c
JOIN Booking b ON C.booking_id = b.booking_id
GROUP BY c.customer_id, customer_name;

--Write a SQL query to calculate the Average Ticket Price for Events in Each Category and Venue

SELECT 
    venue_id, 
    event_type,
    AVG(ticket_price) AS avg_ticket_price
FROM Event
GROUP BY venue_id, event_type;
 
--List Users and the Total Number of Tickets They've Purchased in the Last 30 Days:
SELECT 
    Customer.customer_id, 
    customer_name,
    COUNT(Customer.booking_id) AS total_tickets_purchased
FROM Customer
JOIN Booking ON Customer.booking_id = Booking.booking_id
WHERE booking_date >= DATEADD(DAY, -30, GETDATE())
GROUP BY Customer.customer_id, customer_name;

--TASK 4
--Average Ticket Price for Events in Each Venue Using a Subquery
select * from Event;
select * from Venue;

select 
	venue_name, event_name, AVG(ticket_price) as AVGticketprice 
from 
	Event e 
join 
	Venue v on v.venue_id = e.venue_id 
group by 
	venue_name, event_name;
--from
select 
	venue_name, event_name, AVGTicketprice
from (
	select
		venue_name, event_name, AVG(ticket_price) as AVGticketprice 
	from 
		Event e 
	join 
		Venue v on v.venue_id = e.venue_id 
	group by 
		venue_name, event_name
) AS subquery_alias;
--select
SELECT 
    Venue.venue_id,
    Venue.venue_name,
    (SELECT AVG(ticket_price)
     FROM Event
     JOIN Booking ON Event.event_id = Booking.event_id
     WHERE Event.venue_id = Venue.venue_id
    ) AS average_ticket_price
FROM Venue;

--Find Events with More Than 50% of Tickets Sold using subquery:
SELECT 
    event_id,
    event_name
FROM Event
WHERE (
    SELECT (SUM(num_tickets) * 100.0 / total_seats)
    FROM Booking
    WHERE Booking.event_id = Event.event_id
) > 50;
select * from booking;
select * from Event;
--Calculate the Total Number of Tickets Sold for Each Event:
SELECT 
    Event.event_id,
    Event.event_name,
    (SELECT SUM(num_tickets) 
     FROM Booking 
     WHERE Booking.event_id = Event.event_id) AS Total_tickets
FROM 
    Event;

--Find Users Who Have Not Booked Any Tickets Using a NOT EXISTS Subquery:
SELECT *
FROM Customer c
WHERE NOT EXISTS (
    SELECT 
    FROM Booking b
    WHERE b.customer_id = c.customer_id
);

--List Events with No Ticket Sales Using a NOT IN Subquery:
SELECT event_id, event_name
FROM Event
WHERE event_id NOT IN (
    SELECT DISTINCT event_id
    FROM Booking
);

--Calculate the Total Number of Tickets Sold for Each Event Type Using a Subquery in the FROM Clause:

SELECT 
    event_type,
    SUM(EventType.total_tickets_sold) AS total_tickets_sold
FROM (
    SELECT 
        Event.event_type,
        SUM(num_tickets) AS total_tickets_sold
    FROM Event
    JOIN Booking ON Event.event_id = Booking.event_id
    GROUP BY Event.event_type
) AS EventType
GROUP BY EventType.event_type;


--Find Events with Ticket Prices Higher Than the Average Ticket Price Using a Subquery in the WHERE Clause:

SELECT 
    event_id,
    event_name
FROM Event
WHERE ticket_price > (
    SELECT AVG(ticket_price)
    FROM Event
);


--Calculate the Total Revenue Generated by Events for Each User Using a Correlated Subquery:
SELECT 
    user_id,
    (
        SELECT SUM(num_tickets * ticket_price)
        FROM Booking
        WHERE Booking.user_id = Users.user_id
    ) AS total_revenue
FROM Users;

--List Users Who Have Booked Tickets for Events in a Given Venue Using a Subquery in the WHERE Clause:

SELECT DISTINCT
    customer_id,
    customer_name
FROM Customer
WHERE customer_id IN (
    SELECT customer_id
    FROM Booking
    WHERE event_id IN (
        SELECT event_id
        FROM Event
        WHERE venue_id = event_id
    )
);

--Calculate the Total Number of Tickets Sold for Each Event Category Using a Subquery with GROUP BY:
SELECT 
    category,
    SUM(total_tickets_sold) AS total_tickets_sold
FROM (
    SELECT 
        e.event_id,
        e.event_name,
        e.event_type AS category,
        SUM(b.num_tickets) AS total_tickets_sold
    FROM Event e
    JOIN Booking b ON e.event_id = b.event_id
    GROUP BY e.event_id, e.event_name, e.event_type
) AS event_tickets
GROUP BY category;


--Find Users Who Have Booked Tickets for Events in each Month Using a Subquery with DATE_FORMAT:

SELECT 
	MONTH(booking_date) as month,
    Customer.customer_id,
    Customer.customer_name,
    COUNT(*) AS tickets_booked
FROM Booking
JOIN Customer ON Booking.customer_id = Customer.customer_id
GROUP BY MONTH(booking_date), Customer.customer_id, Customer.customer_name;

select * from Booking;



