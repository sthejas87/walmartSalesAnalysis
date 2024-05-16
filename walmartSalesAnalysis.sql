-- language: sql

create database if not exists walmart;

create table if not exists sales(
	invoice_id varchar(30) not null primary key,
    branch varchar(30) not null,
    city varchar(30) not null,
    customer_type varchar(30) not null,
    gender varchar(30) not null,
    product_line varchar(100) not null,
    unit_price decimal(10,2) not null,
    quantity int not null,
    tax_pct float not null,
    total decimal(12,4) not null,
    date datetime not null,
    time time not null,
    payment varchar(15) not null,
    cogs decimal(10,2) not null,
    gross_margin_pct float,
    gross_income decimal(12,4),
    rating float
);
 
alter table sales add column time_of_day varchar(20);
 
 update sales set time_of_day = (
	case
		when `time` between '00:00:00' and '12:00:00' then 'Morning'
      	when `time` between '12:00:01' and '16:00:00' then 'Afternoon'
        else 'Evening'
	end
);

alter table sales add column day_name varchar(10);
 
update sales set day_name=dayname(date);
 
alter table sales add column month_name varchar(10);
 
update sales set month_name=monthname(date);
 
-- Generic
select distinct city from sales;
 
select distinct city, branch from sales;
 
-- Product
select count(distinct product_line) as unique_product_lines from sales;

select payment, count(payment) as cnt from sales group by payment order by cnt desc;

select sum(quantity) as qty, product_line from sales group by product_line order by qty desc;

select month_name as month, sum(total) as total_revenue from sales group by month_name order by total_revenue desc;

select month_name as month, sum(cogs) as cogs from sales group by month_name order by cogs desc;

select product_line, sum(total) as total_revenue from sales group by product_line order by total_revenue desc;

select branch, city, sum(total) as total_revenue from sales group by city, branch order by total_revenue desc;

select product_line, avg(tax_pct) as avg_tax from sales group by product_line order by avg_tax desc;

select branch, sum(quantity) as qty from sales group by branch having sum(quantity)>(select avg(quantity) from sales);

select gender, product_line, count(gender) as total_cnt from sales group by gender, product_line order by total_cnt desc;

select round(avg(rating),2) as avg_rating, product_line from sales group by product_line order by avg_rating desc;

-- Sales
select time_of_day, count(*)  as total_sales from sales group by time_of_day order by total_sales desc;

select customer_type, sum(total) as total_rev from sales group by customer_type order by total_rev desc;

select city, avg(tax_pct) as vat from sales group by city order by vat desc;

select customer_type, avg(tax_pct) as vat from sales group by customer_type order by vat desc;

-- Customer
select count(distinct customer_type) as unique_ctypes from sales;

select count(distinct payment) as unique_payment from sales;

select customer_type from sales group by customer_type order by count(*) desc limit 1;

select customer_type, count(*) as stm_cnt from sales group by customer_type;

select gender from sales group by gender order by count(*) desc limit 1;

select branch, gender, count(*) as gender_cnt from sales group by branch, gender order by branch;

select time_of_day, avg(rating) as avg_rating from sales group by time_of_day order by avg_rating desc limit 1;

select branch, time_of_day, avg(rating) as avg_rating from sales group by branch, time_of_day order by branch, avg_rating desc;

select day_name, avg(rating) as avg_rating from sales group by day_name order by avg_rating desc;

select branch, day_name, avg(rating) as avg_rating from sales group by branch, day_name order by branch, avg_rating desc;

