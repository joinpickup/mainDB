create table if not exists "GameDetails"(
    "GameDetailsID" serial primary key,
    "ActivityID" int,
    foreign key ("ActivityID") references "Activity"("ActivityID")

    -- team info
    "HomeTeam" int,
    foreign key ("HomeTeam") references "Team"("TeamID")
    "AwayTeam" int,
    foreign key ("AwayTeam") references "Team"("TeamID")
    
    -- TODO: add more details
    -- details 
    "HomeTeamScore" int,
    "AwayTeamScore" int,
    "ElapsedTime" varchar
)