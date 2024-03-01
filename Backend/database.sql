-- Create a new database
CREATE DATABASE IF NOT EXISTS ambulance_management;

-- Use the newly created database
USE ambulance_management;

-- Create a table for ambulance drivers
CREATE TABLE IF NOT EXISTS ambulance_drivers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    ambulance_reg_number VARCHAR(20) NOT NULL,
    place VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);