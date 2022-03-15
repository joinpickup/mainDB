CREATE TABLE IF NOT EXISTS activity (
    ActivityID serial PRIMARY KEY,
    ActivityName VARCHAR,
    ActivityDescription VARCHAR,
    ActivityHost INT,  -- reference userID
    ActivityType INT
);