create database hotel_reservation_system;

use hotel_reservation_system;

# create a Guests table
create table Guests (
	guest_id INT primary key,
    name varchar(100),
    phone varchar(20),
    email varchar(100)
);

# create a Rooms Table
create table Rooms (
	room_id INT primary key,
    room_type varchar(50),
    price decimal(10,2),
    status varchar(20)
);

# create a bookings table 
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    guest_id INT,
    room_id INT,
    check_in DATE,
    check_out DATE,
    FOREIGN KEY (guest_id) REFERENCES Guests(guest_id),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);

# insert 20 Guests Records
INSERT INTO Guests (guest_id, name, phone, email) VALUES
(1, 'Rahul Sharma', '9876543210', 'rahul.sharma@gmail.com'),
(2, 'Priya Patel', '9988776655', 'priya.patel@gmail.com'),
(3, 'Amit Verma', '9786543212', 'amitv@gmail.com'),
(4, 'Sneha Gupta', '9098877655', 'sneha.g@gmail.com'),
(5, 'Karan Singh', '8899776655', 'karan.singh@gmail.com'),
(6, 'Riya Mehta', '9988001122', 'riya.m@gmail.com'),
(7, 'Manoj Kumar', '7766554433', 'manojk@gmail.com'),
(8, 'Aisha Khan', '8877665544', 'aisha.k@gmail.com'),
(9, 'Vishal Yadav', '9123456780', 'vishaly@gmail.com'),
(10, 'Pooja Rao', '9001122334', 'poojarao@gmail.com'),
(11, 'Harshit Jain', '7878787878', 'harshitj@gmail.com'),
(12, 'Neha Kapoor', '9090909090', 'nehak@gmail.com'),
(13, 'Arjun Desai', '7888999955', 'arjund@gmail.com'),
(14, 'Simran Kaur', '9988442211', 'simrank@gmail.com'),
(15, 'Raghav Bansal', '9000556611', 'raghavb@gmail.com'),
(16, 'Tanvi Nair', '8000778899', 'tanvi.nair@gmail.com'),
(17, 'Aditya Mishra', '9333445566', 'adityam@gmail.com'),
(18, 'Krishna Das', '9445566778', 'krishnadas@gmail.com'),
(19, 'Meera Joshi', '9776655443', 'meeraj@gmail.com'),
(20, 'Sahil Arora', '9556677882', 'sahila@gmail.com');

# insert 15 rooms table 
INSERT INTO Rooms (room_id, room_type, price, status) VALUES
(101, 'Standard', 2000, 'Available'),
(102, 'Deluxe', 3500, 'Available'),
(103, 'Suite', 5500, 'Available'),
(104, 'Standard', 2100, 'Booked'),
(105, 'Deluxe', 3600, 'Available'),
(106, 'Suite', 5800, 'Maintenance'),
(107, 'Standard', 2200, 'Available'),
(108, 'Deluxe', 3400, 'Booked'),
(109, 'Suite', 6000, 'Available'),
(110, 'Standard', 2300, 'Booked'),
(111, 'Deluxe', 3700, 'Available'),
(112, 'Suite', 6200, 'Available'),
(113, 'Standard', 2400, 'Available'),
(114, 'Deluxe', 3300, 'Available'),
(115, 'Suite', 6500, 'Booked');

# insert 15 bookings table
INSERT INTO Bookings (booking_id, guest_id, room_id, check_in, check_out) VALUES
(1, 1, 104, '2025-01-05', '2025-01-07'),
(2, 2, 108, '2025-01-10', '2025-01-12'),
(3, 3, 110, '2025-02-01', '2025-02-03'),
(4, 4, 115, '2025-02-15', '2025-02-20'),
(5, 5, 104, '2025-03-01', '2025-03-02'),
(6, 6, 108, '2025-03-05', '2025-03-08'),
(7, 7, 110, '2025-03-10', '2025-03-13'),
(8, 8, 115, '2025-03-20', '2025-03-25'),
(9, 9, 104, '2025-04-01', '2025-04-04'),
(10, 10, 108, '2025-04-08', '2025-04-10'),
(11, 11, 110, '2025-04-15', '2025-04-18'),
(12, 12, 115, '2025-04-20', '2025-04-23'),
(13, 13, 104, '2025-05-01', '2025-05-03'),
(14, 14, 108, '2025-05-10', '2025-05-12'),
(15, 15, 110, '2025-05-15', '2025-05-17');

# show all available rooms
SELECT * FROM Rooms
WHERE status = 'Available';

# show all bookings with guest details
SELECT b.booking_id, g.name, r.room_type, b.check_in, b.check_out
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id;

# Find rooms NOT booked
SELECT r.*
FROM Rooms r
LEFT JOIN Bookings b ON r.room_id = b.room_id
WHERE b.booking_id IS NULL;