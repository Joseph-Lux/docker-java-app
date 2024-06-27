-- Create user if not exists
CREATE USER IF NOT EXISTS 'myuser'@'localhost' IDENTIFIED BY 'mypassword';

-- Grant privileges
GRANT ALL PRIVILEGES ON *.* TO 'myuser'@'localhost';
