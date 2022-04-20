create table if not exists "Event" (
    "EventID" serial primary key,

    -- TODO: add event details
    "EventName" varchar,
    "EventDescription" varchar,
    "Owner" int,
    foreign key ("Owner") references "User"("UserID"),
    "Place" int,
    foreign key ("Place") references "Place"("PlaceID")
);