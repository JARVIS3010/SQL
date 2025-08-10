create database if not exists myantra;

use myantra;

select * from products;

select product_name as "Product Name", 
brand_name as "Brand Name", 
marked_price as "Marked Price", 
discounted_price as "Discount Price", 
marked_price - discounted_price as "Discounted Amount",
round(((marked_price - discounted_price)/marked_price) * 100,2) as "Discount Precentage"
 from products;
 
 select * from products;
select count(*) from products;

select count(distinct product_link) as "Unique Products"  from products;

select count(distinct brand_name) as "Unique Brand Names", 
	count(distinct brand_tag) as "Unique Brand Tag"
    from products;
    
select count(distinct brand_name), brand_name from products;

select count(distinct brand_name), count(distinct product_link) from products;



