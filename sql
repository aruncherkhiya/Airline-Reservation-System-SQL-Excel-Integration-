CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY,
    name VARCHAR(100),
    passport_no VARCHAR(50) UNIQUE,
    nationality VARCHAR(50),
    contact VARCHAR(100)
);

CREATE TABLE Flights (
    flight_id INT PRIMARY KEY,
    flight_no VARCHAR(10),
    origin VARCHAR(50),
    destination VARCHAR(50),
    departure_time DATETIME,
    arrival_time DATETIME,
    total_seats INT
);

CREATE TABLE Reservations (
    reservation_id INT PRIMARY KEY,
    passenger_id INT,
    flight_id INT,
    booking_date DATE,
    seat_no VARCHAR(5),
    class VARCHAR(20),
    status VARCHAR(20),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    reservation_id INT,
    amount DECIMAL(10, 2),
    payment_date DATE,
    payment_method VARCHAR(20),
    FOREIGN KEY (reservation_id) REFERENCES Reservations(reservation_id)
);
