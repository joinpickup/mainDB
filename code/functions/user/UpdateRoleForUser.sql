create or replace function "UpdateRoleForUser"(userID INT, roleID INT, roleEnabled boolean) returns void
language plpgsql
as $$
begin
update "UserRole" set "RoleEnabled"=roleEnabled where "UserID" = userID and "RoleID" = roleID;

end; $$