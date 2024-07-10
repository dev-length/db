use sqldb;

select userID as '사용자 아이디', sum(amount) as '총 구매 개수' from buytbl group by userID;

select userID as '사용자 아이디', sum(price) as '총 구매액' from buytbl group by userID;

select avg(amount) '평균 구매 개수' from buytbl;

select userID, avg(amount) '평균 구매 개수' from buytbl group by userID;

SELECT name, height FROM usertbl where name in((SELECT name FROM usertbl ORDER BY height ASC LIMIT 1),(SELECT name FROM usertbl ORDER BY height DESC LIMIT 1));

select count(mobile1) from usertbl where mobile1 is not null;

select userID as '사용자 아이디', sum(price) as '총 구매액' from buytbl group by userID having sum(price) >= 1000;

use world;

select * from city;

select countrycode, sum(population) from city where countrycode = 'kor';

SELECT name, population '최솟값'
FROM city
WHERE countrycode = 'KOR'
ORDER BY population ASC
LIMIT 1;

select countrycode,avg(population) from city where countrycode = 'kor';

SELECT name, population '최대값'
FROM city
WHERE countrycode = 'KOR'
ORDER BY population desc
LIMIT 1;

SELECT name, LENGTH(name) AS '글자수'
FROM country;

SELECT CONCAT(UCASE(SUBSTRING(name, 1, 3)), SUBSTRING(name, 4)) AS '앞세글자_대문자_나머지'
FROM country;

SELECT name, lifeexpectancy
FROM country;

SELECT name, ROUND(lifeexpectancy,1) '첫째자리에서 반올림`'
FROM country;