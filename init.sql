CREATE TABLE todo_lists(
    list_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE list_item(
    item_id SERIAL PRIMARY KEY,
    list_id INT REFERENCES todo_lists(list_id),
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    login VARCHAR(50) UNIQUE NOT NULL ,
    password_hash TEXT NOT NULL
);