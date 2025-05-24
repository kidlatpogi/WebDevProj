CREATE DATABASE IF NOT EXISTS reservationTry;
USE reservationTry;

CREATE TABLE IF NOT EXISTS simple_reservations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fname VARCHAR(100) NOT NULL,
    lname VARCHAR(100) NOT NULL,
    floor VARCHAR(10) NOT NULL,
    room_type VARCHAR(20) NOT NULL,
    room VARCHAR(20) NOT NULL,
    reservation_date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    UNIQUE KEY unique_reservation (room, reservation_date, start_time, end_time)
);

SELECT * FROM simple_reservations;
