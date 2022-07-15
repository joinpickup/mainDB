create table if not exists "user" (
  "id" serial primary key,
  "username" varchar (50) unique,
  "email" varchar (50) unique not null,
  "password_hash" varchar not null
)

