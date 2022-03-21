create or replace function "AddRole"(
	roleName VARCHAR,
	roleDescription VARCHAR
) returns void
language plpgsql
as $$
declare
-- variable declaration
begin
-- stored procedure body
	INSERT INTO "Role"("RoleName",
		"RoleDescription"
	)
	VALUES (roleName,
		roleDescription
	);
end; $$