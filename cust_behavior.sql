use customer_behavior
select   * from customer_behavior_table
--1.Total revenue by male vs female 
select gender,sum(purchase_amount) as Total_revenue from customer_behavior_table
group by gender
--customer used discount but still spent more than avg purchase amount
select customer_id ,purchase_amount from customer_behavior_table
where discount_applied='Yes' AND purchase_amount>(select AVG(purchase_amount) from customer_behavior_table)

--top 5 products with the highest avg review reting
select top 5 item_purchased from customer_behavior_table 
group by item_purchased
order by avg(review_rating) desc


--comparison b/w standard and express shipping purchase amount
select shipping_type,AVG(purchase_amount) Purchase_amount from customer_behavior_table
where shipping_type in ('Express','Standard')
group by shipping_type


--checking if subscribed customer spend more 
select subscription_status ,  avg(purchase_amount) as average_spend
,count(customer_id) as total_customers,sum(purchase_amount) as Total_revenue
from customer_behavior_table
group by subscription_status
order by Total_revenue desc

--5 products that have the highest percentage of purchases with discount applied
select top 5 item_purchased,
round(100*sum(case when discount_applied='yes' then 1 else 0 end )/count(*),2) as discount_rate
from customer_behavior_table
group by item_purchased
order by discount_rate desc

--segmentation of customers based on their previos purchases
with customer_type as (
select customer_id,previous_purchases ,
case
when previous_purchases=1 then 'new'
when previous_purchases between 2 and 10 then 'returning'
else 'loyal'
end as customer_segment

from customer_behavior_table 

)
select customer_segment,count(*) as 'number of customers' from customer_type
group by customer_segment

--top 3 most purchased product with in each category
select item_rank,category,item_purchased,total_orders from (
select category,item_purchased,count(customer_id) as total_orders,
ROW_NUMBER() over(partition by category order by count(customer_id) desc) as item_rank
from customer_behavior_table
group by category,item_purchased


) as d
where item_rank<=3


--coustomer who are repeat buyers also like to subscribe
 select subscription_status,count(customer_id) as repeat_buyers
 from customer_behavior_table
 where previous_purchases>5
 group by subscription_status

 --revenue by age group 
 select age_gp,sum(purchase_amount) as revenue from customer_behavior_table
 group by age_gp
 order by revenue desc
