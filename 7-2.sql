create table stdtbl (
stdName varchar(10) not null primary key,
addr char(4) not null
);

create table clubtbl (
clubName varchar(10) not null primary key,
roomNo char(4) not null
);

create table stdclubtbl(
num int auto_increment not null primary key,
stdName varchar(10) not null,
clubName varchar(10) not null,
foreign key(stdName) references stdtbl(stdName),
foreign key(clubName) references clubtbl(clubName)
);

INSERT INTO stdtbl VALUES ('김범수','경남'), ('성시경','서울'), ('조용필', '경기'), ('은지원', '경북'), ('바비킴','서울');
INSERT INTO clubtbl VALUES ('수영', '101호'), ('바둑','102호'), ('축구','103호'), ('봉사','104호');
INSERT INTO stdclubtbl
VALUES (NULL, '김범수', '바둑'), (NULL, '김범수', '축구'), (NULL, '조용필', '축구'), (NULL, '은지원', '축구'), (NULL,'은지원', '봉사'), (NULL, '바비킴', '봉사');

--------------------------------------------------

select
std.stdName,
std.addr,
sc.clubName,
c.roomNo
from stdtbl std
join stdclubtbl sc on std.stdName = sc.stdName
join clubtbl c on c.clubName = sc.clubName
order by std.stdName;

select
sc.clubName,
c.roomNo,
std.stdName,
std.addr
from clubtbl c
join stdclubtbl sc on c.clubName = sc.clubName
join stdtbl std on std.stdName = sc.stdName;

--------------------------------------------------

CREATE TABLE empTbl(emp CHAR(3), manager CHAR(3), empTel VARCHAR(8));
INSERT INTO empTbl VALUES('나사장', NULL, '0000');
INSERT INTO empTbl VALUES('김재무', '나사장', '2222');
INSERT INTO empTbl VALUES('김부장', '김재무', '2222-1');
INSERT INTO empTbl VALUES('이부장', '김재무', '2222-2');
INSERT INTO empTbl VALUES('우대리', '이부장', '2222-2-1');
INSERT INTO empTbl VALUES('지사원', '이부장', '2222-2-2');
INSERT INTO empTbl VALUES('이영업', '나사장', '1111');
INSERT INTO empTbl VALUES('한과장', '이영업', '1111-1');
INSERT INTO empTbl VALUES('최정보', '나사장', '3333');
INSERT INTO empTbl VALUES('윤차장', '최정보', '3333-1');
INSERT INTO empTbl VALUES('이주임', '윤차장', '3333-1-1');

select
e1.emp,
e2.manager,
e2.empTel
from empTbl e1
join empTbl e2 on e1.manager = e2.emp
where e1.emp = '우대리';