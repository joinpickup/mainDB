create or replace procedure "AddRole"(
	roleName VARCHAR
)
language plpgsql
as $$
declare
-- variable declaration
begin
-- stored procedure body
    delete from "Role"
    where RoleName=roleName;
end; $$
