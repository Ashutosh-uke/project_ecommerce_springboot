CREATE USER 'admin1'@'localhost' IDENTIFIED BY 'admin1';

GRANT ALL PRIVILEGES ON * . * TO 'admin1'@'localhost';

-- if want to delete user
DROP USER 'admin1'@'localhost';



