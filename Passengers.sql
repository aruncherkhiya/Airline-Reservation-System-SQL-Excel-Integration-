CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    passport_no VARCHAR(50) UNIQUE,
    nationality VARCHAR(50),
    contact VARCHAR(100)
);
