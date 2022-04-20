create table if not exists "GroupEvent" (
    "GroupID" int,
    foreign key ("GroupID") references "Group"("GroupID"),
    "EventID" int,
    foreign key ("EventID") references "Event"("EventID"),
    primary key ("GroupID", "EventID")
)

