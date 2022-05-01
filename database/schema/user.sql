DROP TABLE IF EXISTS user;

CREATE TABLE user (
  uid INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT NOT NULL,
  display_name TEXT NOT NULL,
  password TEXT NOT NULL,
  role TEXT NOT NULL
);

INSERT INTO user (username, display_name, password, role)
VALUES ("jenders", "Jacob Enders", "password", "admin");

INSERT INTO user (username, display_name, password, role)
VALUES ("dhague", "DMAN Epic", "goodpassword", "user");