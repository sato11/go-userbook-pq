DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id   SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  age  INTEGER NOT NULL);

INSERT INTO users(name, age) VALUES('Alice', 18);
INSERT INTO users(name, age) VALUES('Bob', 26);
