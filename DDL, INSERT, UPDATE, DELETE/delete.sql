use openai;

select * from users;

delete from users where user_id = '1001';

delete from users where name = 'Ashish'and mail = 'j@gmail.com';

select * from users;

-- truncate table user;