CREATE TABLE IF NOT EXISTS "User" (
    "UserID" serial PRIMARY KEY,
    "Email" VARCHAR (50) UNIQUE NOT NULL,
    "PasswordHash" VARCHAR NOT NULL,
    "FirstName" VARCHAR,
    "LastName" VARCHAR,
    "Phone" VARCHAR,
    "UserType" INT,
    "UserAddress" INT,
    FOREIGN KEY ("UserAddress") REFERENCES "Place"("PlaceID"),
    "CreatedOn" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "LastLogin" TIMESTAMP,
    "LastUpdated" TIMESTAMP
);