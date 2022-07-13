create table if not exists "group" (
    "group_id" serial primary key,

    -- TODO: add more group details
    "group_name" varchar,
    "group_description" varchar,
    "is_archived" boolean
)
