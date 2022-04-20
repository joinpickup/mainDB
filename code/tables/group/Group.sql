create table if not exists "Group" (
    "GroupID" serial primary key,

    -- TODO: add more group details
    "GroupName" varchar,
    "GroupDesription" varchar,
    "CoverImage" varchar, -- file path
    "ProfileImage" varchar, -- file path, different name
    "IsArchived" boolean,
    "Visibility" "visibility",
    "Owner" int,
    foreign key ("Owner") references "User"("UserID")
)