create or replace function "GetActiveRolesForUser"(userID INT) returns setof "Role"
language plpgsql
as $$
begin
return query select "Role"."RoleID", "Role"."RoleName", "Role"."RoleDescription" from "Role" inner join "UserRole" on "UserRole"."RoleID" = "Role"."RoleID" inner join "User" on "User"."UserID" = "UserRole"."UserID" where "User"."UserID" = userID and "UserRole"."RoleEnabled";

end; $$