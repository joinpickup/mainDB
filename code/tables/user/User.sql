CREATE TABLE IF NOT EXISTS "user" (
    "user_id" serial PRIMARY KEY,
    "email" VARCHAR (50) UNIQUE NOT NULL,
    "password_hash" VARCHAR NOT NULL,
    "name" VARCHAR,
    "phone" VARCHAR,
    "user_address" INT,
    FOREIGN KEY ("user_address") REFERENCES "place"("place_id"),
    "created_on" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "last_login" TIMESTAMP,
    "last_updated" TIMESTAMP
);
s