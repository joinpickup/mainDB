create table if not exists "Tag" (
    "TagID" serial primary key,
    "Tag" varchar unique,
)