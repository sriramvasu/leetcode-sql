Create table If Not Exists Followers(user_id int, follower_id int);
insert into Followers (user_id, follower_id) values ('0', '1');
insert into Followers (user_id, follower_id) values ('1', '0');
insert into Followers (user_id, follower_id) values ('2', '0');
insert into Followers (user_id, follower_id) values ('2', '1');

select f.user_id as user_id, count(f.follower_id) as followers_count from Followers f group by f.user_id order by f.user_id;