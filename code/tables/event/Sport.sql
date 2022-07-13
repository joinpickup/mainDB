create table if not exists "Sport" (
    "SportID" serial primary key,

    -- add sport details
    "SportName" varchar unique,
    "SportDescription" varchar
);