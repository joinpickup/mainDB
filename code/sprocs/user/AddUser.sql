create or replace procedure AddUser(email VARCHAR)
language plpgsql
as $$
declare
-- variable declaration
begin
-- stored procedure body
INSERT INTO public.users(email, passwordhash)
	VALUES (email, 'test');
end; $$