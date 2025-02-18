Create table If Not Exists Accounts (account_id int, income int);
insert into Accounts (account_id, income) values ('3', '108939');
insert into Accounts (account_id, income) values ('2', '12747');
insert into Accounts (account_id, income) values ('8', '87709');
insert into Accounts (account_id, income) values ('6', '91796');

with categories as (select "Low Salary" as category union all select "Average Salary" union all select "High Salary")
select c.category as category, count(a.account_id) as accounts_count from categories c left join Accounts a on case when a.income < 20000 and a.income >=0 then "Low Salary" when a.income >=20000 and a.income <=50000  then "Average Salary" else "High Salary" end = c.category group by c.category;