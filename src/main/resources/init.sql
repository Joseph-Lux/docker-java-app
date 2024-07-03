-- Create user if not exists
CREATE USER IF NOT EXISTS 'myuser'@'localhost' IDENTIFIED BY 'mypassword';

-- Grant privileges
GRANT ALL PRIVILEGES ON *.* TO 'myuser'@'localhost';

CREATE DATABASE IF NOT EXISTS mydatabase;

USE mydatabase;

-- Create applicants table
CREATE TABLE IF NOT EXISTS applicants (
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    email VARCHAR(255),
    PRIMARY KEY (id)
);