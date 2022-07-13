create table if not exists "EventSetting" (
    "EventSettingID" serial primary key,
    "EventID" int,
    foreign key ("EventID") references "Event"("EventID"),

    -- setting information
    "SettingKey" varchar,
    "SettingValue" varchar
)