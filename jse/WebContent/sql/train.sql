create table board(

brd_num varchar2(20),
user_id varchar2(20),
brd_category varchar2(20),
brd_title varchar2(20),
brd_content varchar2(500),
brd_date varchar2(20),
brd_ref varchar2(20),
brd_red varchar2(20),
brd_res number(20),
brd_views number(20),
brd_ren number(20),
brd_rec varchar2(50)
constraint brd_num_pk primary key (brd_num)
); commit;

