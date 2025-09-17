create database myntradb;
use myntradb;
select * from myntradb.myntra_dataset;
-- what are the top ten most expensive products?
select brand_name, pants_description, price from myntra_dataset order by price desc limit 10;
-- which brand has the highest average product price?
select brand_name, round(avg(price), 2) as Avg_Price FROM myntra_dataset group by brand_name order by Avg_Price desc limit 1;
-- which brands have the highest number of products listed?
select brand_name, count(*) as Product_Count from myntra_dataset group by brand_name order by Product_Count desc;
-- what is the average percentage discount for each category?
select pants_description, round(avg(price), 2) as Avg_Discount from myntra_dataset group by pants_description order by Avg_Discount desc;
-- which products have the highest customer ratings?
select brand_name, pants_description, ratings from myntra_dataset order by ratings desc limit 10;
-- which brands receive the most ratings from customer?
select brand_name, sum(ratings) as Total_Ratings from myntra_dataset group by brand_name order by Total_Ratings desc limit 10;
-- which brand is performing best in terms of “value-for-money” (rating ÷ price)?
select brand_name, round( avg(ratings/price), 3) as Value_for_money from myntra_dataset where price > 0 group by brand_name order by Value_for_money desc limit 5;
-- how many products fall under Budget, Mid-Range, and Premium segments?
select case when price < 500 then 'Budget' when price between 500 and 1500 then 'Mid-Range' else 'Premium' end as Price_Segment, count(*) as  Product_Count from myntra_dataset group by Price_Segment order by Product_Count desc;
-- Do higher discounts lead to more customer reviews?
select case when discount_percent < 20 then 'Low Discount' when discount_percent between 20 and 50 then 'Moderate Discount' else 'High Discount' end as Discount_Bucket, round(avg(ratings), 0) as Avg_Ratings from myntra_dataset group by Discount_Bucket order by Avg_Ratings desc;  
-- 
