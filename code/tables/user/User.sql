CREATE TABLE IF NOT EXISTS "user" (
    "id" serial PRIMARY KEY,
    "email" VARCHAR (50) UNIQUE NOT NULL,
    "password_hash" VARCHAR NOT NULL,
    "name" VARCHAR,
    -- "phone" VARCHAR,
    -- "address" VARCHAR,
    -- "created_on" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- "last_login" TIMESTAMP,
    -- "last_updated" TIMESTAMP
);
s
