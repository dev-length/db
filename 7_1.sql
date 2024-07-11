use sqldb;

select * from usertbl;
select * from buytbl;

select * from usertbl u join buytbl b on u.userID = b.userID
where b.price is not null and u.userID = 'jyp';

select
u.userID,
u.name,
b.prodName,
u.addr,
concat(u.mobile1, u.mobile2) '연락처' 
from usertbl u 
left outer join buytbl b on u.userID = b.userID
order by u.userID;

select * from usertbl where mobile1 and mobile2 is not null;

select * from usertbl where mobile1 is null and mobile2 is null;