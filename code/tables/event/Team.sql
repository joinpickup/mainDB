create table if not exists "Team"(
    "TeamID" serial primary key,
    
    -- TODO: add more team details
    "TeamName" varchar,
    "TeamDescription" varchar,
    "TeamCaptain" int,
    foreign key ("TeamCaptain") references "User"("UserID"),
)