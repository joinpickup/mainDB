create table if not exists "GroupSetting" (
    "GroupSettingID" serial primary key,
    "GroupID" int,
    foreign key ("GroupID") references "Group"("GroupID"),

    -- settings info
    "SettingKey" varchar,
    "SettingValue" varchar
)