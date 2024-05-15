CREATE DATABASE HOSPITAL
USE HOSPITAL
CREATE TABLE Patient (
    patientId INT PRIMARY KEY,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    dateOfBirth DATE,
    gender VARCHAR(10),
    contactNumber VARCHAR(15),
    address VARCHAR(255)
);

CREATE TABLE Doctor (
    doctorId INT PRIMARY KEY,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    specialization VARCHAR(255),
    contactNumber VARCHAR(15)
);

CREATE TABLE Appointment (
    appointmentId INT PRIMARY KEY,
    patientId INT,
    doctorId INT,
    appointmentDate DATETIME,
    description TEXT,
    FOREIGN KEY (patientId) REFERENCES Patient(patientId),
    FOREIGN KEY (doctorId) REFERENCES Doctor(doctorId)
);
-- Inserting values into the Patient table
INSERT INTO Patient (patientId, firstName, lastName, dateOfBirth, gender, contactNumber, address)
VALUES (1, 'Sanjay', 'Kumar', '1990-05-15', 'Male', '1234567890', '123 Main St, Anytown'),
(2, 'Ram', 'Raj', '1985-09-25', 'Female', '555-555-5555', '456 Oak St, Springfield'),
(3, 'Sheela', 'Shree', '1980-03-10', 'Female', '999-999-9999', '789 Maple Ave, Cityville');
-- Inserting values into the Doctor table
INSERT INTO Doctor (doctorId, firstName, lastName, specialization, contactNumber)
VALUES (1, 'Dr. Kumar', 'Jay', 'Cardiology', '9876543210'),
(2, 'Dr. Taran', 'Raj', 'Pediatrics', '111-111-1111'),
(3, 'Dr. Prakash', 'Kumar', 'Dermatology', '222-222-2222');


-- Inserting values into the Appointment table
INSERT INTO Appointment (appointmentId, patientId, doctorId, appointmentDate, description)
VALUES (1, 1, 1, '2024-05-20 10:00:00', 'Routine checkup'),
(2, 2, 2, '2024-06-10 14:30:00', 'Child wellness checkup'),
(3, 3, 3, '2024-07-05 09:00:00', 'Skin consultation');

