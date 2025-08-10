use openai;

select * from users;

-- Insert 
-- user_id, name, mail, phone, dob, city, marital_status, sex

insert into users values
		("1001", "Ashish", "ashish@gmail.com", 9078061028, "1998/10/10", "Delhi", "Unmarried", "Male");

insert into users values
		("1002", "Manish", "manish@gmail.com", 9058061028, "1998/10/10", "Delhi", "Unmarried", "Male");

insert into users values
		("1003", "Manish", "mansh@gmail.com", 9008061028, "1998-10-10", "Delhi", "Umarried", "MALE");
    
insert into users(user_id, name, mail, phone) values
		("1004", "Manssh", "a@gmail.com", 9698317021);
        
insert into users(user_id, name, mail, phone) values
		("Manssh", "1004", "b@gmail.com", 9692317021);
        
    
insert into users (user_id, name, mail, phone) values
		("1005", "Manish", "c@gmail.com", 8698317021),
		("1006", "Manish", "d@gmail.com", 7698317021);
    
 insert into users(name, user_id, mail, phone) values
		("Manish", "1007", "e@gmail.com", 5698317021);

    
select * from users

    
    
-- Update
-- Delete
-- Truncate
