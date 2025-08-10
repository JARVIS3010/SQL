use openai;

select * from users;

update users set name = 'Jangra' where user_id = '1001';

update users set name = 'Ashish', mail = 'j@gmail.com' where user_id= '1001';

update users set name = 'Manish' where name = 'Manssh';		#Can Update Multiple rows

select * from users;

-- update based on non-primary key condition
-- update multiple rows