CREATE OR REPLACE function "AddUser"(
	email VARCHAR,
	passwordhash VARCHAR,
	userid int DEFAULT NULL,
	firstname VARCHAR DEFAULT NULL,
	lastname VARCHAR DEFAULT NULL,
	phone VARCHAR DEFAULT NULL,
	usertype integer DEFAULT 1,
	useraddress integer DEFAULT NULL)
	returns void
LANGUAGE 'plpgsql'
AS $$
declare
-- variable declaration
begin

-- stored procedure body
IF userID is NULL then
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
else
	INSERT INTO "User"("UserID","Email",
		"PasswordHash",
		"FirstName",
		"LastName",
		"Phone",
		"UserType",
		"UserAddress"
	)
	VALUES (userID, email,
		passwordHash,
		firstName,
		lastName,
		phone,
		userType,
		userAddress
	);
end if;
end; $$