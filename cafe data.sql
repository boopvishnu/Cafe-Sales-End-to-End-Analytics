create database end_projects;
use end_projects;
select count(*) from sales_data;

select distinct location from sales_data;

select count(*) from sales_data where Location = "Takeaway"; /* 3022 Takeaway Orders */
select count(*) from sales_data where Location = "In-store"; /* 3017 In-store Orders */

select distinct item from sales_data;

select count(*) from sales_data where item = "Coffee"; /* 1165 Coffee Orders */
select count(*) from sales_data where item = "Cake"; /* 1139 In-store Orders */
select count(*) from sales_data where item = "Cookie"; /* 1092 In-store Orders */
select count(*) from sales_data where item = "Salad"; /* 1148 In-store Orders */
select count(*) from sales_data where item = "Smoothie"; /* 1096 In-store Orders */
select count(*) from sales_data where item = "Sandwich"; /* 1131 In-store Orders */
select count(*) from sales_data where item = "Juice"; /* 1171 In-store Orders */
select count(*) from sales_data where item = "Tea"; /* 1089 In-store Orders */

select distinct Payment_Method from sales_data;

select count(*) from sales_data where Payment_Method = "Credit Card"; /* 2273 Credit Card Payments */
select count(*) from sales_data where Payment_Method = "Cash"; /* 2258 Cash Payments */
select count(*) from sales_data where Payment_Method = "Digital Wallet"; /* 2291 Digital Payments */

select distinct Location from sales_data;
select * from sales_data;

select distinct Item,Price_Per_Unit from sales_data;

select * from sales_data where Item="na";


set SQL_SAFE_UPDATES=0;

select item from sales_data where Price_Per_Unit = 1;
update sales_data set Item = "Cookie" where Price_Per_Unit =1;

select item from sales_data where Price_Per_Unit = 1.5;
update sales_data set Item = "Tea" where Price_Per_Unit =1.5;

select item from sales_data where Price_Per_Unit = 2;
update sales_data set Item = "Coffee" where Price_Per_Unit =2;

select item from sales_data where Price_Per_Unit = 3;
update sales_data set Item = "Cake" where Price_Per_Unit =3;

select item from sales_data where Price_Per_Unit = 5;
update sales_data set Item = "Salad" where Price_Per_Unit =5;

select item from sales_data where Price_Per_Unit = 4;
update sales_data set Item = "Smoothie" where Price_Per_Unit =4;

update sales_data set Item = "na" where Price_Per_Unit = 0;
update sales_data set Location = "Online" where Location = "na" or Location is null; /* set Online Where Location is null or na*/
update sales_data set Payment_Method = "UPI" where Payment_Method = "na" or Payment_Method is null; /* set UPI where value is na or is null */

SELECT DISTINCT Location FROM sales_data;

SET SQL_SAFE_UPDATES = 1;

select Transaction_date from sales_data;

select * from sales_data;

SELECT Transaction_Date FROM sales_data LIMIT 5;
