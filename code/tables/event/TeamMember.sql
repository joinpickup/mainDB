create table if not exists "TeamMember"(
    "TeamID" int,
    foreign key ("TeamID") references "Team"("TeamID"),
    "UserID" int,
    foreign key ("UserID") references "User"("UserID"),
    primary key ("UserID, TeamID")

    -- TODO: add member details
    "Role" int,
    foreign key ("Role") references "Role"("RoleID"),
    "MemberType" "TeamMemberType"
)