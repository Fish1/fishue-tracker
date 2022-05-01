DROP TABLE IF EXISTS issue;

CREATE TABLE issue (
  uid INTEGER PRIMARY KEY AUTOINCREMENT,
  created_by INTEGER NOT NULL,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  post_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY(created_by) REFERENCES user(uid)
);

PRAGMA foreign_keys = ON;

INSERT INTO issue (created_by, title, body) VALUES (123, "hello there", "this is the body");
INSERT INTO issue (created_by, title, body) VALUES (1, "jacobs first post", "this is is the body");
INSERT INTO issue (created_by, title, body) VALUES (1, "jacobs first post", "this is is the body");
INSERT INTO issue (created_by, title, body) VALUES (1, "jacobs first post", "this is is the body");
INSERT INTO issue (created_by, title, body) VALUES (126, "hello there", "this is the body");