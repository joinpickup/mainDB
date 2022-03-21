create or replace function "AddRoleForUser"(userID int,
	roleName VARCHAR,
	roleEnabled boolean
) returns void
as $$
declare
-- variable declaration
	roleID INT;
begin
-- stored procedure body

-- get roleid for role
	select RoleID=roleID from "Role" where "RoleName"=roleName;
	INSERT INTO "UserRole"("UserID",
		"RoleID",
		"RoleEnabled"
	)
	VALUES (userID,
		roleID,
		roleEnabled
	);
end; $$