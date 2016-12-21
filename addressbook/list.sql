--个人
create table list(
  list_ID int PRIMARY KEY not null,--list_ID 为主键且不能为空
  list_name varchar(32) not null,--名字
  list_sex varchar(6),--性别
  list_mobile_number varchar(24) not null,--手机号
  list_birthday varchar(12),--生日
  list_address varchar(48)--地址
);

--添加数据
insert into list(list_ID,list_name,list_sex,list_mobile_number,list_birthday,list_address)
  values (1,'Tom','man','13324529111','2005.3.4','Beilin District');
insert into list(list_ID,list_name,list_sex,list_mobile_number,list_birthday,list_address)
  values (2,'Bob','woman','13324529222','2005.1.4','Changan District');
insert into list(list_ID,list_name,list_sex,list_mobile_number,list_birthday,list_address)
  values (3,'Rose','man','13324529333','2005.3.8','Weiyang District');
insert into list(list_ID,list_name,list_sex,list_mobile_number,list_birthday,list_address)
  values (4,'Jack','woman','13324529444','2005.2.4','Lintong District');
insert into list(list_ID,list_name,list_sex,list_mobile_number,list_birthday,list_address)
  values (5,'Marry','man','13324529555','2005.7.23','Gaoxin District');
insert into list(list_ID,list_name,list_sex,list_mobile_number,list_birthday,list_address)
  values (6,'Adam','woman','13324529666','2005.3.12','Yanta District');
insert into list(list_ID,list_name,list_sex,list_mobile_number,list_birthday,list_address)
  values (7,'Abe','woman','13324529777','2005.5.19','Lianhu District');
