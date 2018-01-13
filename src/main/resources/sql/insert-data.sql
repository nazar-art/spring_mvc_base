#### users SQL
INSERT INTO users (username, password, enabled) VALUES ("bryan", "secret", TRUE);

INSERT INTO users (username, password, enabled) VALUES ("chris", "secret", TRUE);

SELECT * FROM users;

#### authorities SQL
INSERT INTO authorities (username, authority) VALUES ("bryan", "ROLE_USER");

INSERT INTO authorities (username, authority) VALUES ("chris", "ROLE_ADMIN");
INSERT INTO authorities (username, authority) VALUES ("chris", "ROLE_USER");

SELECT * FROM authorities;

