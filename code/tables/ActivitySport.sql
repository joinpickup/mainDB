CREATE TABLE IF NOT EXISTS "ActivitySport" (
    "ActivityID" INT,
    FOREIGN KEY ("ActivityID") REFERENCES "Activity"("ActivityID"),
    "SportID" INT
    FOREIGN KEY ("SportID") REFERENCES "Sport"("SportID"),
    PRIMARY KEY ("ActivityID", "SportID")
);