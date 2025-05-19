CREATE DATABASE RoomReservation;

USE RoomReservation;

CREATE TABLE USERS (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    username VARCHAR(50) UNIQUE,
    password_hash VARCHAR(255),
    role ENUM('student', 'professor', 'admin') NOT NULL
);

CREATE TABLE ROOMS (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_name VARCHAR(50) UNIQUE,
    capacity INT
);

CREATE TABLE ROOM_AVAILABILITY (
    availability_id INT AUTO_INCREMENT PRIMARY KEY,
    room_id INT,
    day_of_week ENUM('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'),
    start_time TIME,
    end_time TIME,
    FOREIGN KEY (room_id) REFERENCES ROOMS(room_id)
);

CREATE TABLE RESERVATIONS (
    reservation_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    room_id INT,
    reservation_date DATE,
    start_time TIME,
    end_time TIME,
    status ENUM('RESERVED', 'CANCELLED') DEFAULT 'RESERVED',
    FOREIGN KEY (user_id) REFERENCES USERS(user_id),
    FOREIGN KEY (room_id) REFERENCES ROOMS(room_id)
);

CREATE TABLE CLASS_SCHEDULE (
    class_schedule_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    room_id INT,
    course_code VARCHAR(20),       -- e.g., ABC231
    section_code VARCHAR(20),      -- e.g., ABCOM16X
    subject_day ENUM('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'),
    start_time TIME,
    end_time TIME,
    instructor_name VARCHAR(100),
    FOREIGN KEY (room_id) REFERENCES ROOMS(room_id)
);

-- WAG GAGALAWIN YUNG MGA TABLE

-- STEP 1
-- ITO GAMITIN PAG MAG LALAGAY NG ROOMS
INSERT INTO ROOMS (room_id, room_name, capacity, room_type)
VALUES (401, 'Room401', 40, 'Lecture');

-- STEP 2
-- ITO GAMITIN PAG MAG LALAGAY NG ROOM SCHEDULE
-- AND ROOM ID AY YUNG ROOM NUMBNER FOR EXAMPLE ROOM 401 EDI ANG room_id AY 401 
INSERT INTO CLASS_SCHEDULE 
(room_id, course_code, section_code, subject_day, start_time, end_time, instructor_name)
VALUES (
    401,
    'ABC231',
    'ABCOM16X',
    'Monday',
    '09:00:00',
    '11:00:00',
    'R. BUELO'
);

-- STEP 3
-- ITO GAGAMITIN PAG TITIGNAN KUNG TAMA SCHEDULE 
SELECT * FROM CLASS_SCHEDULE;

-- ITO GAGAMITIN KUNG TITIGNAN KUNG TAMA BA ROOM_NAME, CAPACITY AT ROOM_TYPE
SELECT * FROM ROOMS WHERE room_name = 'Room401';


