use myantra;

select * from products;

# 1. Brand Report Card


# 2. Which product_category of any brand is sold the most?
select product_name brand_tag, product_tag, sum(rating_count) from products
group by brand_tag, product_tag
order by sum(rating_count) desc
limit 1;

# 3. List top 5 brands which has sold most number of tshirts
select product_name, brand_name, brand_tag, sum(rating_count) from products
where product_tag = 'tshirts'
group by brand_name
order by sum(rating_count) desc
limit 5;

# 4. List top 5 brands which has sold most number of shirts
select product_name, brand_name, brand_tag, sum(rating_count) from products
where product_tag = 'shirts'
group by brand_name
order by sum(rating_count) desc
limit 5;

# 5. List top 5 brands which has sold most number of jeans
select product_name, brand_name, brand_tag, sum(rating_count) from products
where product_tag = 'jeans'
group by brand_name
order by sum(rating_count) desc
limit 5;

# 6. List top 5 brands which has sold most number of dresses
select product_name, brand_name, brand_tag, sum(rating_count) from products
where product_tag = 'dresses'
group by brand_name
order by sum(rating_count) desc
limit 5;

# 7. Most popular product name listed in Myntra
select product_name, sum(rating_count) from products
group by product_name
order by sum(rating_count) desc
limit 1;

# 8. Number of products sold for every rating (0 - 5)
select rating, count(product_name) from products
where rating BETWEEN 0 AND 5
group by rating
order by rating;

# 9. Number of products sold for every rating by bike
select rating, count(product_name) from products
where brand_name = 'nike' and rating between 0 and 5
group by rating
order by rating;

# 10. Number of products sold for every rating in tshirt category
select rating, count(product_name) from products
where product_tag = 'tshirts' and rating between 0 and 5
group by rating
order by rating;

-- Bonus : Relation between price of the thisrt and its rating with respect to people rated
select product_name, discounted_price, rating, rating_count from products
where product_tag = 'tshirts'
order by discounted_price;