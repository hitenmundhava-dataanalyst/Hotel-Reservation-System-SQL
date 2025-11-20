# Hotel Reservation System (SQL)

A simple, self-contained **Hotel Reservation System** implemented as SQL schema + sample data.  
Includes entities for guests, rooms and bookings, sample inserts and useful queries to get you started.

**Files**
- `Hotel Reservation System.sql` — full schema, inserts and example queries.

---

## Features
- Relational schema with `Guests`, `Rooms`, and `Bookings` tables. 
- Sample data: 20 guests, 15 rooms, 15 bookings (ready to run).
- Example queries for:
  - Listing available rooms.
  - Joining bookings with guest & room details.
  - Finding rooms without any bookings.

---

## Schema (quick overview)

**Guests**
- `guest_id INT PRIMARY KEY`
- `name VARCHAR(100)`
- `phone VARCHAR(20)`
- `email VARCHAR(100)`

**Rooms**
- `room_id INT PRIMARY KEY`
- `room_type VARCHAR(50)`
- `price DECIMAL(10,2)`
- `status VARCHAR(20)`

**Bookings**
- `booking_id INT PRIMARY KEY`
- `guest_id INT` — FK → `Guests(guest_id)`
- `room_id INT` — FK → `Rooms(room_id)`
- `check_in DATE`, `check_out DATE`

(Full DDL + inserts are in `Hotel Reservation System.sql`.)
