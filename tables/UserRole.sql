CREATE TABLE IF NOT EXISTS user_role (
    UserID INT,
    RoleID INT,
    RoleEnabled BOOLEAN,
    PRIMARY KEY (UserID, RoleID)
);