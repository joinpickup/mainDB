CREATE TABLE IF NOT EXISTS "Sport" (
    "SportID" serial PRIMARY KEY,
    "SportName" VARCHAR UNIQUE,
    "SportDescription" VARCHAR
);