--其他
create table other(
  other_ID int,--other_ID
  other_date datetime,--时间
  other_remarks varchar(128)--备注
);

--添加数据
insert into other(list_ID,other_date,other_remarks) values (1,now(),'love');
insert into other(list_ID,other_date,other_remarks) values (2,now(),'love');
insert into other(list_ID,other_date,other_remarks) values (3,now(),'hate');
insert into other(list_ID,other_date,other_remarks) values (4,now(),'dislike');
insert into other(list_ID,other_date,other_remarks) values (5,now(),'hate');
insert into other(list_ID,other_date,other_remarks) values (6,now(),'dislike ');
insert into other(list_ID,other_date,other_remarks) values (7,now(),'hate');
