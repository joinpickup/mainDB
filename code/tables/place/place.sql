CREATE TABLE IF NOT EXISTS "place" (
    "place_id" serial PRIMARY KEY,
    "place_name" VARCHAR,
    "place_description" VARCHAR,
    "street_number" VARCHAR,
    "street_name" VARCHAR,
    "city" VARCHAR,
    "state" INT,
    "country" VARCHAR,
    "postal_code" VARCHAR
);
