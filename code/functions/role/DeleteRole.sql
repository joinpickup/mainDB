create or replace function "DeleteRole"(
	roleName VARCHAR
) returns void
language plpgsql
as $$
declare
-- variable declaration
begin
-- stored procedure body
    delete from "Role"
    where RoleName=roleName;
end; $$
