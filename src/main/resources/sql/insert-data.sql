#### users SQL
INSERT INTO users (username, password, enabled) VALUES ("bryan", "secret", TRUE);

INSERT INTO users (username, password, enabled) VALUES ("chris", "secret", TRUE);

SELECT *
FROM users;

#### authorities SQL
INSERT INTO authorities (username, authority) VALUES ("bryan", "ROLE_USER");

INSERT INTO authorities (username, authority) VALUES ("chris", "ROLE_ADMIN");
INSERT INTO authorities (username, authority) VALUES ("chris", "ROLE_USER");

SELECT *
FROM authorities;

####

UPDATE users
SET password = "5ebe2294ecd0e0f08eab7690d2a6ee69"
WHERE username = "bryan" OR username = "chris";

####
ALTER TABLE users MODIFY  password VARCHAR(60);

UPDATE users
SET password = "$2a$10$SwhxYcADJLD4fwYe.NtS4er2c7u5lJvp8V4aiaSCgwBdJD1/OCrPO/"
WHERE username = "bryan" OR username = "chris";


