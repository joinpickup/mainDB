CREATE TABLE IF NOT EXISTS place (
    PlaceID serial PRIMARY KEY,
    PlaceName VARCHAR,
    PlaceDescription VARCHAR,
    StreetNumber VARCHAR,
    StreetName VARCHAR,
    City VARCHAR,
    State INT,
    Country VARCHAR,
    PostalCode VARCHAR
);