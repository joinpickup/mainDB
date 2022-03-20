create or replace procedure "AddRole"(
	roleName VARCHAR,
	roleDescription VARCHAR
)
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