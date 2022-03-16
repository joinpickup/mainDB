CREATE TABLE IF NOT EXISTS "UserRole" (
    UserID INT,
    RoleID INT,
    RoleEnabled BOOLEAN,
    PRIMARY KEY (UserID, RoleID)
);