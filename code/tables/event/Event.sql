create table if not exists "event" (
    "event_id" serial primary key,
    "event_name" varchar,
    "event_description" varchar,
    "group" int,
    foreign key ("group") references "group"("group_id") on delete set null,
    "owner" int,
    foreign key ("owner") references "user"("user_id") on delete set null,
    "place" int,
    foreign key ("place") references "place"("place_id") on delete set null
);
