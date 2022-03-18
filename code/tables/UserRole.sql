CREATE TABLE IF NOT EXISTS "UserRole" (
    "UserID" INT,
    FOREIGN KEY ("UserID") REFERENCES "User"("UserID"),
    "RoleID" INT,
    FOREIGN KEY ("RoleID") REFERENCES "Role"("RoleID"),
    "RoleEnabled" BOOLEAN,
    PRIMARY KEY ("UserID", "RoleID")
);