create or replace procedure "AddUser"(email VARCHAR,
	passwordHash VARCHAR,
	firstName VARCHAR DEFAULT NULL,
	lastName VARCHAR DEFAULT NULL,
	phone VARCHAR DEFAULT NULL,
	userType INT DEFAULT 1,
	userAddress INT DEFAULT NULL
)
language plpgsql
as $$
declare
-- variable declaration
begin
-- stored procedure body
	INSERT INTO "User"("Email",
		"PasswordHash",
		"FirstName",
		"LastName",
		"Phone",
		"UserType",
		"UserAddress"
	)
	VALUES (email,
		passwordHash,
		firstName,
		lastName,
		phone,
		userType,
		userAddress
	);
end; $$