CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    reservation_id INT,
    amount DECIMAL(10, 2),
    payment_date DATE,
    payment_method VARCHAR(20),
    FOREIGN KEY (reservation_id) REFERENCES Reservations(reservation_id)
);
