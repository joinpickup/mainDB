create table if not exists "EventTag" (
    "EventID" int,
    foreign key ("EventID") references "Event"("EventID"),
    "TagID" int,
    foreign key ("TagID") references "Tag"("TagID"),
    primary key ("EventID", "TagID")
)