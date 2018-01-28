CREATE TABLE users (
  username VARCHAR(50) NOT NULL PRIMARY KEY,
  password VARCHAR(50) NOT NULL,
  enabled  BOOLEAN     NOT NULL
);

CREATE TABLE authorities (
  username  VARCHAR(50) NOT NULL,
  authority VARCHAR(50) NOT NULL,
  CONSTRAINT fk_authorities_users
  FOREIGN KEY (username) REFERENCES users (username)
);

CREATE UNIQUE INDEX ix_auth_username
  ON
    authorities (username, authority);

# PERMISSIONS

CREATE TABLE permissions (
  username VARCHAR(50) NOT NULL,
  target VARCHAR(50) NOT NULL,
  permission VARCHAR(50) NOT NULL,
  CONSTRAINT fk_permissions_users FOREIGN KEY (username) REFERENCES users(username)
);

CREATE UNIQUE INDEX ix_perm_username on permissions (username, target, permission);

INSERT INTO permissions (username, target, permission)
VALUES ('chris', 'com.pluralsight.model.Goal', 'createGoal');