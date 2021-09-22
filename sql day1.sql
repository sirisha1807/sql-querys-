create database stud;
use stud;

select * from stud;

select * from stud where markes> 500 and markes<=900;

select markes from stud where markes>600 and markes<=900;

select * from stud where name='killer';

select * from stud where name like '%ri%';



select * from stud where markes>600 and name like '%ri%' or '%ll%';

select * from stud where id>3 order by id desc;
select count(*) from stud where id>3 order by id desc;
select * from stud group by name;

select distinct name from stud;
drop table dept;

update stud set deptid=6 where id=4;

alter table stud add deptid int;

delete from dept where deptid=2;






