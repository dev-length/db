-- 현재 서버에 존재하는 데이터베이스 학인
SHOW DATABASES;

-- 현재 데이터베이스를 employees로 설정하기
use employees;

-- employees 데이터베이스의 테이블 목록 보기
show tables from employees;

-- employees 테이블의 열 목록 출력하기
show columns from employees;

-- titles 테이블의 데이터 출력하기
select * from titles;

-- employees 테이블에서 first_name 컬럼만 출력하기
select first_name from employees;

-- employees 테이블에서 first_name 컬럼, last_name 컬럼, gender 컬럼 출력하기
select first_name,last_name,gender from employees;

-- employees 테이블 출력시 다음과 같이 나오도록 쿼리를 작성하세요
select first_name as '이름',
gender as '성별',
hire_date as '입사일'
from employees;


---------------------------------------------
use sqldb;

-- usertbl 테이블에서 이름이 '김경호'인 행을 출력하세요.
select * from usertbl where name='김경호';

-- usertbl 테이블에서 생년이 1970 이상이고 키가 182이상인 데이터를 출력하세요.
select * from usertbl where birthYear>='1970' and height>='182';

-- usertbl 테이블에서 키가 180~183 범위인 데이터를 출력하세요.
select * from usertbl where height between '180' and '183';

-- usertbl 테이블에서 주소가 '경남' 또는 '전남' 또는 '경북'인 데이터를 출력하세요.
select * from usertbl where addr in ('경남','전남','경북');

-- usertbl 테이블에서 이름이 '김'으로 시작하는 데이터를 출력하세요.
select * from usertbl where name like '김%';

-- usertbl에서 김경호 보다 큰 사람들의 이름과 키를 출력하세요.
select name, height from usertbl where height > (select height from usertbl where name = '김경호');

-- usertbl을 mdata의 오름 차순으로 정렬하여 출력하세요.
select * from usertbl order by mDate;

-- usertbl을 mdata의 내림 차순으로 정렬하여 출력하세요.
select * from usertbl order by mDate desc;

-- usertbl을 height의 내림차순으로 정렬하고, 동률인 경우 name의 내림차순으로 정렬하여 출력하세요.
select * from usertbl order by height desc,name desc;

-- usertbl의 주소지를 중복없이 오름 차순으로 출력하세요.
select addr from usertbl group by addr order by addr;


use world;

select * from city where countrycode = 'KOR' order by population desc;

select countrycode, population from city order by countrycode, population desc;

select countrycode, count(countrycode) from city where countrycode = 'kor';

select * from city where countrycode in ('kor', 'chn', 'jpn');

select * from city where countrycode = 'kor' and population >= '1000000';

select * from city where countrycode = 'kor' order by population desc limit 10;

select * from city where countrycode = 'kor' and population between 1000000 and 5000000;