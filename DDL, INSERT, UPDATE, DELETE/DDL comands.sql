use openai;
select * from inventories;

#Add column
alter table inventory add new_column_4 INT;

#Modify Column
alter table inventory modify new_column_4 VARCHAR(10);

#Rename Column
alter table inventory rename column new_column_4 to new_column_5;

#Drop Column 
alter table inventory drop column new_column_5;

#Rename table
rename table inventory to inventories;
 