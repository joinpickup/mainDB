CREATE TABLE IF NOT EXISTS "Activity" (
    "ActivityID" serial PRIMARY KEY,
    "ActivityName" VARCHAR,
    "ActivityDescription" VARCHAR,
    "ActivityHost" INT,
    FOREIGN KEY ("ActivityHost") REFERENCES "User"("UserID"),
    "ActivityType" INT,
    FOREIGN KEY ("ActivityType") REFERENCES "ActivityType"("ActivityTypeID")
);