JIONS 
create table sales(salesid int not null primary key, salesname varchar(20), address varchar(20));

insert into sales values (1,'dd', 'bang'),(2,'gg','chin'),(3,'kkk', 'devana'),(4,'ll','viji');

select * from sales s;

create table ordersales (id int primary key , productname varchar(20), address varchar(20), salesid int,
 
constraint FK_order foreign key(salesid) REFERENCES sales(salesid));

insert into ordersales values (1,'glass', 'bang', 3),(2,'light','chin',2),(3,'kill', 'devana', 4),(4,'lol','viji',1);

select * from ordersales p;
select s.salesid,s.salesname from sales s inner join ordersales p on p.salesid=s.salesid;
select s.salesid,s.salesname from sales s outer join ordersales p on p.salesid=s.salesid;
select s.salesid,s.salesname from sales s right join ordersales p on p.salesid=s.salesid;
select s.salesid,s.salesname from sales s full outer join ordersales p on p.salesid=s.salesid;

