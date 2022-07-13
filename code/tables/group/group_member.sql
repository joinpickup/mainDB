create table if not exists "group_member"(
    "group_id" int,
    foreign key ("group_id") references "group"("group_id"),
    "user_id" int,
    foreign key ("user_id") references "user"("user_id"),
    primary key ("group_id", "user_id"),

    "role" int,
    foreign key ("role") references "role"("role_id"),
    "status" "member_status"
)
