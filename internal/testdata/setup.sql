CREATE TABLE Snippets(
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    created DATETIME NOT NULL,
    expires DATETIME NOT NULL,
);

CREATE INDEX idx_Snippets_created ON Snippets(created);

CREATE TABLE users (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    hashed_password CHAR(60) NOT NULL,
    created DATETIME NOT NULL
);
ALTER TABLE users ADD CONSTRAINT users_uc_email UNIQUE (email);

INSERT INTO users(name, email, hashed_password, created) VALUES (
                                                                 'Alo Oluwapelumi David',
                                                                 'pelumi@example.com',
                                                                 'tuyt362835%$#!46573',
                                                                 '2022-01-01 10:00:00'
                                                                );