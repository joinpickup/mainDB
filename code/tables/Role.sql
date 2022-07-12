CREATE TABLE IF NOT EXISTS "role" (
    "role_id" serial PRIMARY KEY,
    "role_name" VARCHAR UNIQUE NOT NULL,
    "role_description" VARCHAR
);
