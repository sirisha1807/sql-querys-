create database demo;

create table studinfo(id int primary key,sname varchar(20),sclass varchar(20),deptname varchar(20),deptlocation varchar(20),smarkes int, address varchar(20),results int);


insert into studinfo values(1,'siri','5th','comp','bang', 500,'chenie',90);


insert into studinfo values(2,'giri','4th','cse','gang', 550,'cbang',90);


insert into studinfo values (3,'liri','3th','mcse','lang', 450,'loang',98);


insert into studinfo values(4,'kri','2th','mese','jjang', 350,'llang',80);


select * from studinfo;

create table deptinfo(id int primary key,sname varchar(10),sclass varchar(20),deptid int, smarkes int, address varchar(20),results int,dept_loc varchar(20));

insert into deptinfo values(8,'siri','5th',6,600,'jkign',500,'ang');

insert into deptinfo values(6,'giri','4th',5,600,'pkgn',580,'cheni');

insert into deptinfo values(7,'kuri','3th',7,600,'kiign',5740,'gang');

insert into deptinfo values(2,'kiri','2th',3,600,'lign',5045,'mumbi');

select * from deptinfo;



create table depttab(dept_name varchar(25),dept_loc varchar(30),id int);

insert into depttab values('co','ang', 1);
i
nsert into depttab values('me','cheni',5);

insert into depttab values('ece','gang',4);

insert into depttab values('ise','mumbi',3);

select * from depttab;


select * from studinfo where id in (select id from deptinfo where id=2);

select * from studinfo where id in (select id from depttab where id=1);
select * from deptinfo where dept_loc in (select dept_loc from depttab where id=4);
