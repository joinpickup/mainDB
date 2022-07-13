create or replace function "AddSport"(
	sportName VARCHAR,
	sportDescription VARCHAR
) returns void
language plpgsql
as $$
declare
-- variable declaration
begin
-- stored procedure body
	INSERT INTO "Sport"("SportName",
		"SportDescription"
	)
	VALUES (sportName,
		sportDescription
	);
end; $$