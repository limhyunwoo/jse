--ddl
select * from tab;    -- 제대로 테이블이 생성되었는지 확인하는 sql문-- 테이블 종류보기
--ddl
desc member;  --테이블 상세내역 보기

select table_name, constraint_name, constraint_type
from user_constraints
where table_name = 'MEMBER'; --키타입조회


