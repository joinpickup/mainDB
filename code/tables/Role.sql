CREATE TABLE IF NOT EXISTS "Role" (
    "RoleID" serial PRIMARY KEY,
    "RoleName" VARCHAR UNIQUE NOT NULL,
    "RoleDescription" VARCHAR
);