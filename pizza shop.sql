select sum(total_price) as Total_Revenue
from pizza_sales;

select sum(total_price)/count(distinct order_id) as Average_order_value
from pizza_sales;

select*from pizza_sales

select sum(quantity) as Total_Pizza_Sold
from pizza_sales;

select count(distinct order_id) as Total_Order
from pizza_sales;


select cast(cast(sum(quantity) as decimal(10,2)) / cast(count(distinct order_id)as decimal(10,2)) as decimal(10,2)) as Average_Pizzas_Per_Order
from pizza_sales;

SELECT DATENAME(DW,Order_date) as Order_day , COUNT(DISTINCT Order_id) as Total_order
from pizza_sales
group by DATENAME(DW,Order_date);


SELECT DATENAME(Month,Order_date) as Month , COUNT(DISTINCT Order_id) as Total_order
from pizza_sales
group by DATENAME(Month,Order_date);

select pizza_category , sum(total_price) as total_sale , sum(total_price)*100/(select sum(total_price) from pizza_sales 
where month(order_date)=1) as percentage_of_total
from pizza_sales
where month(order_date)=1
group by pizza_category

select pizza_size, sum(total_price) as total_sale , sum(total_price)*100/(select sum(total_price) from pizza_sales ) as percentage_of_total
from pizza_sales
group by pizza_size
order by percentage_of_total desc;

select top 5 pizza_name , sum(total_price) as total_revenue from pizza_sales
group by pizza_name
order by total_revenue desc;

select top 5 pizza_name , sum(total_price) as total_revenue from pizza_sales
group by pizza_name
order by total_revenue asc;

select top 5 pizza_name , sum(quantity) as total_quantity from pizza_sales
group by pizza_name
order by total_quantity desc;
