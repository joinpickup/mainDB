create table if not exists "right" (
  "id" serial primary key,
  "name" varchar (70) unique not null,
  "description" varchar (254)
);

create table if not exists "role" (
  "id" serial primary key,
  "name" varchar (70) unique not null,
  "description" varchar (254)
);

create table if not exists "role_right" (
  "role_id" int,
  "right_id" int,
  "enabled" boolean,
  pimary key(role_id, right_id)
);

create table if not exists "user_role" (
  "role_id" int,
  "user_id" int,
  "enabled" boolean,
  primary key(user_id, role_id)
);
