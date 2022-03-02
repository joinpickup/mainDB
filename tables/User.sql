CREATE TABLE IF NOT EXISTS users (
    UserID serial PRIMARY KEY,
    Email VARCHAR (50) UNIQUE NOT NULL,
    PasswordHash VARCHAR NOT NULL,
    FirstName VARCHAR,
    LastName VARCHAR,
    Phone VARCHAR,
    UserType INT,
    UserAddress varchar (80),
    CreatedOn TIMESTAMP,
    LastLogin TIMESTAMP,
    LastUpdated TIMESTAMP
);