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



