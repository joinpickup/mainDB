create or replace function "GetEnabledRolesForUser"(userID INT) returns table (
    "RoleID" int,
    "RoleName" VARCHAR,
    "RoleDescription" VARCHAR,
    "RoleEnabled" boolean
)
language plpgsql
as $$
begin
return query select "Role"."RoleID", "Role"."RoleName", "Role"."RoleDescription", "UserRole"."RoleEnabled" from "Role" inner join "UserRole" on "UserRole"."RoleID" = "Role"."RoleID" inner join "User" on "User"."UserID" = "UserRole"."UserID" where "User"."UserID" = userID and "UserRole"."RoleEnabled";

end; $$