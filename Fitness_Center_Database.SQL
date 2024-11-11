CREATE DATABASE Fitness_Center;

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);
CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);
INSERT INTO Members (id, name, age) 
VALUES 
(1, 'Jerry West', 22),
(2, 'Jeremy Lin', 28),
(3, 'Stewart Jr', 66),
(4, 'Lisa Montgomery', 37)
;
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES
(1, 1, '11-11-2024', '07:00', 'Strength Training'),
(2, 3, '11-22-2024', '13:00', 'Swimming'),
(3, 3, '11-23-2024', '14:00', 'Cardio'),
(4, 2, '11-14-2024', '11:00', 'Recovery Exercises')
;

DELETE FROM WorkoutSessions
WHERE member_id = 2;

DELETE FROM Members
WHERE name = 'Jeremy Lin'
