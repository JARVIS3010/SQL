use myantra;

select * from products;

#How many brands are associated with us?
select count(distinct(brand_tag)) from products;

#How many tshirts do we have in databse?
select count(*) from products where product_tag = 'tshirts';

#How many tshirts do we have in database under 2000?
select count(distinct(product_link)) from products where product_tag = 'tshirts' and discounted_price < 2000;

#How many brands are selling tshirts?
select count(distinct(brand_tag)) from products where product_tag = 'tshirts';

#How many different product categories H&M selling?
select count(distinct(product_tag)) from products where brand_tag = "HM";

#List top 5 tshirts of nike.
select * from products 
where brand_name = "nike" and product_tag = "tshirts" order by rating_count desc limit 6;

#List top 5 worse rataed products from GUESS.
select * from products
where brand_name = "guess" and rating_count > 0 order by rating asc limit 5;

#Find total products sold by levis?
select sum(rating_count) from products where brand_name = "levis";

#How many tshirts are sold in total?
select sum(rating_count) from products where product_tag = "tshirts";

#Which category among tshirts and shirt has generated more revenue?
select sum(rating_count * discounted_price) from products where product_tag = "tshirts";
select sum(rating_count * discounted_price) from products where product_tag = "shirts";

#List top 5 best selling brands
select brand_name, sum(rating_count) as "product_sold" from products 
	group by brand_name
    order by product_sold desc
    limit 5;

#List top 5 best selling product categories
select product_tag, sum(rating_count) as "product_sold" from products 
	group by product_tag
    order by product_sold desc
    limit 5;


#Which brand has generated maximum revenue?
select brand_name, sum(rating_count * discounted_price) as "revenue_generated" from products 
	group by brand_name
    order by revenue_generated desc
    limit 5;
    
#Which product_category has generated maximum revenue?
select product_tag, sum(rating_count * discounted_price) as "revenue_generated" from products 
	group by product_tag
    order by revenue_generated desc
    limit 5;

#Which category among tshirts and shirt has generated more revenue?
select product_tag, sum(rating_count * discounted_price) as "revenue" from products 
	where product_tag in ("shirts" ,"tshirts")
    group by product_tag
    order by revenue desc;