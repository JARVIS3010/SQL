use myantra;

select * from products where brand_name = 'Biba';

 select * from products 
 where brand_name = 'Biba' and product_tag = "kurtis";
 
 select product_name, brand_name, marked_price, discounted_price from products 
 where brand_name = 'Biba' and product_tag = "kurtis";
 
select avg(marked_price), avg(discounted_price) from products 
 where brand_name = 'Biba' and product_tag = "kurtis";
 
 select distinct product_tag from products 
 where brand_name = 'Biba';
 
 select avg(marked_price), avg(discounted_price) from products 
 where brand_name = 'Biba' and product_tag = "kurta-sets";
 
  select avg(marked_price), avg(discounted_price) from products 
		where brand_name = 'Biba' and product_tag = 'dupatta';
        
  select * from products 
		where brand_name = 'Biba' and product_tag = 'dupatta'
		order by rating_count desc
        limit 10;
        
	select product_name, brand_name, rating_count, discounted_price, rating_count * discounted_price from products where brand_name = "roadster"; 
    
    select sum(rating_count * discounted_price) from products where brand_name = "roadster";