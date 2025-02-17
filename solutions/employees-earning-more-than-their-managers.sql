Create table If Not Exists Employee (id int, name varchar(255), salary int, managerId int);
insert into Employee (id, name, salary, managerId) values ('1', 'Joe', '70000', '3');
insert into Employee (id, name, salary, managerId) values ('2', 'Henry', '80000', '4');
insert into Employee (id, name, salary, managerId) values ('5', 'sriram', '10000', '4');
insert into Employee (id, name, salary, managerId) values ('3', 'Sam', '60000', NULL);
insert into Employee (id, name, salary, managerId) values ('4', 'Max', '90000', NULL);

select e.name as Employee from Employee e join Employee m on e.managerId = m.id where e.salary > m.salary;