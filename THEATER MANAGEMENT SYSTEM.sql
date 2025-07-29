CREATE DATABASE theatre_db;
USE theatre_db;
CREATE TABLE IF NOT EXISTS movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    show_time VARCHAR(50) NOT NULL,
    total_seats INT NOT NULL,
    available_seats INT NOT NULL
);

CREATE TABLE IF NOT EXISTS bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT,
    customer_name VARCHAR(100) NOT NULL,
    seats_booked INT NOT NULL,
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);
DESCRIBE movies;
DESCRIBE bookings;
INSERT INTO movies (title, show_time, total_seats, available_seats)
VALUES
    ('The Matrix', '14:00', 100, 100),
    ('Inception', '17:00', 80, 80),
    ('Avengers: Endgame', '20:00', 120, 120);
    
SELECT * FROM movies;