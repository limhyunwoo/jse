
--ddl

create table board(
	brd_num number,              -- 게시판 번호 SEQ --
	category varchar(20),                       -- 게시판 카테고리 --
	documentpassword varchar(20),   -- 게시판 비밀번호 --
	title varchar(20),                              -- 게시판 글제목 --
	memo varchar(800),                     -- 게시판 내용 --
	id varchar(20)                               -- 게시판 아이디 --


)
--ddl
drop table member; commit;  --테이블 삭제 --

--테이블 생성--

create table Member(
    MEMBERID varchar2(10), -- primary key,   --간편하게 추가할때 이케하는데 비추
    PASSWORD varchar2(10) unique,
    NAME varchar2(20) not null,
    EMAIL varchar2(80)
	constraint member_pk primary key (memberid),  --<-이케이케 하셈
	constraint member_fk_address foreign key (addressid) references address(addressid)   --<- 외래키 설정방법 밑에 테이블이랑 이어서.
);

create table address(
	addresid varchar2(10)
	constraint address_pk primary key(addressid)
);

commit;


--데이터 삽입(1)
--dml
insert into member(memberid, password, name, email)
values('hong','hong','홍길동','hong@naver.com'); commit;

--데이터 삽입(2)
--dml
insert into member
values('hong2','hong2','홍길동2','hong2@naver.com'); commit;

--데이터삽입(3) 널값이 있을경우
--dml
insert into member(memberid, password, name)
values('hong2','hong2','홍길동2'); commit;


--dml
--데이터 조회
select * from member;

--dml
--데이터 조회 (where 절 사용)
select * from member where memberid='hong2';

-- 두가지 조건을 가지고 검색
--dml
select  * from member
where name = '김밥김2' and email = 'im2@naver.com';

--널이 아닐경우
--dml
select * from member				--널값일때
where email is not null;

--null 일경우
select * from member				
where email is null;

--조건검색 like

select * from member
where name like '홍%';

select * from member
where name like '%길%';

--정렬

select * from member
where name like '%홍%'
order by name asc;   -- ㄱ,ㄴ,ㄷ... 오름차순

select * from member
where name like '%홍%'
order by name desc; -- 내림차슌

--중복정렬
select * from member
order by name asc, memberid asc;


--내장된 함수
select count (*) from member;
--count () 는 인스턴스(row)의 개수를 출력함.
--근데 파라미터 자리에 * count(*)<- 요모양이 오면
-- 전체 개수를 리턴.

--데이터 수정
--dml
update member
set name = '최길동'
where memberid = 'hong2' and email is null;

update member
set name = '얍' ,  memberid = '얍'               --쉼표로 연결
where email is null;

--데이터 삭제
--테이블 삭제는 drop
--데이터 삭제는 delete 입니당. 클래스 제거와 인스턴스 제거의 차이
--dml
delete from member
where meail is null;

--DDL  테이블 수정
--컬럼을 추가하는 구문
alter table member
add age number; commit;

--컬럼을 삭제하는 구문
alter table member
drop column age; commit;

--컬럼의 유형을 변경
alter table member
modify age varchar2(10); commit;

--컬럼 출력
desc member;

--인스턴스간의 값을 식별할 수 있는 유일한 값이 필요하다.
-- =>제약조건(constraint)
-- 1.null or notNull
--2. unique or not
--3.check()  ex)boolean 이면 참,거짓만.. 남녀나.
--4.not null  + unique =>primary key
--5.참조값 : 관계정의에 필요한 키값 => 상속(부모-자식) => foreign key


--primary key 추가하기 (이미 create 된 상태에서)
alter table member
add constraint member_pk primary key(memberid); 

alter table member
drop primary key


alter table member
add primary key(memberid); 

--pk 조회
select table_name, constraint_name, constraint_type
from user_constraints
where table_name = 'MEMBER';









