--家庭
create table family(
  family_ID int,--ID
  family_number varchar(24) PRIMARY KEY,--电话主键
  family_address varchar(48)--地址
);
--添加数据
insert into family(list_ID,family_number,family_address)
  values (1,'11111111','YiLu');
insert into family(list_ID,family_number,family_address)
  values (2,'22222222','ErLu');
insert into family(list_ID,family_number,family_address)
  values (3,'33333333','SanLu');
insert into family(list_ID,family_number,family_address)
  values (4,'44444444','SiLu');
insert into family(list_ID,family_number,family_address)
  values (5,'55555555','WuLu');
insert into family(list_ID,family_number,family_address)
  values (6,'66666666','LiuLu');
insert into family(list_ID,family_number,family_address)
  values (7,'77777777','QiLu');
