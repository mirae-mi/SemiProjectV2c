--멤버 테이블
create table advmember (
   mno int primary key,
   userid varchar(18) unique not null,
   passwd varchar(18) not null,
   name varchar(15) not null,
   jumin1 varchar(6) not null,
   jumin2 varchar(7) not null,
   zipcode char(7) not null,
   addr varchar(150) not null,
   etcaddr varchar(150) not null,
   email varchar(100) not null,
   tel varchar(15) not null,
   regdate timestamp default sysdate
);

--게시판 테이블
create table board(
  bno int primary key,
  title varchar(150) not null,
  userid varchar(18) not null,
  regdate timestamp default sysdate,
  thumbs int default 0,
  views int default 0,
  contents clob not null
);
drop table board;
create sequence bdseq nocache;--버려지는 일련번호가 없도록 해줌
drop sequence bdseq;

declare
cnt number:=1;--변수 선언 시 :=
begin
    loop
insert into board(bno,title,userid,contents) values(bdseq.nextval,'이것은 첫번째 글입니다!','abc123','가나다라마바사');
insert into board(bno,title,userid,contents) values(bdseq.nextval,'이것은 두번째 글입니다!','abcd123','스프링4이클립스 인텔리제이');
insert into board(bno,title,userid,contents) values(bdseq.nextval,'이것은 세번째 글입니다!','987xyz','JSP EL JSTL Oracle');

exit when cnt >1110;
        cnt:=cnt+1;
end loop;
end;



select * from board;
select count(bno) from board;
--commit 해주기