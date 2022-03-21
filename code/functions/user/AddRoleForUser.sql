create or replace function "AddRoleForUser"(userID int,
	roleID int,
	roleEnabled boolean
) returns void
LANGUAGE 'plpgsql'
as $$
declare
-- variable declaration
begin
-- stored procedure body
	INSERT INTO "UserRole"("UserID",
		"RoleID",
		"RoleEnabled"
	)
	VALUES (userID,
		roleID,
		roleEnabled
	);
end; $$