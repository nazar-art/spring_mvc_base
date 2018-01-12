#### users SQL
INSERT INTO users (username, password, enabled)
VALUES ("bryan", "secret", TRUE);

#### authorities SQL
INSERT INTO authorities (username, authority) VALUES ("bryan", "ROLE_USER");
