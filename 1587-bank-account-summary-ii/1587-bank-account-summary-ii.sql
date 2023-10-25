# Write your MySQL query statement below
select name,x.Balance
from users
join 
(select account,sum(amount)as Balance
from transactions
group by account 
having Balance>10000 ) x
on x.account=users.account;