DROP TABLE IF EXISTS issue_comment;

CREATE TABLE issue_comment (
  uid INTEGER PRIMARY KEY AUTOINCREMENT,
  for_issue INTEGER NOT NULL,
  created_by INTEGER NOT NULL,
  body TEXT NOT NULL,
  post_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY(for_issue) REFERENCES issue(uid),
  FOREIGN KEY(created_by) REFERENCES user(uid)
);

PRAGMA foreign_keys = ON;

INSERT INTO issue_comment (for_issue, created_by, body) VALUES (2, 1, "this is my comment");