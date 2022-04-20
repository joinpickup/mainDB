create table if not exists "GroupMember"(
    "GroupID" int,
    foreign key ("GroupID") references "Group"("GroupID"),
    "UserID" int,
    foreign key ("UserID") references "User"("UserID"),
    primary key ("GroupID", "UserID")

    "Role" int,
    foreign key ("Role") references "Role"("RoleID"),
    "Status" "MemberStatus"
)