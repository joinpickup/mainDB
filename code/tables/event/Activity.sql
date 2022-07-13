create table if not exists "Activity" (
    "ActivityID" serial primary key,
    "EventID" int,
    foreign key ("EventID") references "Event"."EventID",

    -- TODO: add details
    "ActivityName" varchar,
    "ActivityDescription" varchar,
    "StartDateTime" timestamp,
    "EndDateTime" timestamp,
    "ActivityType" "ActivityType"
)