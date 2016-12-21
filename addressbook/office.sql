--办公
create table office(
  office_ID int,--office_ID
  office_number varchar(32) PRIMARY KEY,--办公电话
  office_address varchar(48),--地址
  office_e_mail varchar(32)--邮件
);
--添加数据
insert into office(list_ID,office_number,office_address,office_e_mail)
  values(1,'11112222','YiLou','986497111@qq.com');
insert into office(list_ID,office_number,office_address,office_e_mail)
  values(2,'21111111','ErLou','986497222@qq.com');
insert into office(list_ID,office_number,office_address,office_e_mail)
  values(3,'33332222','SanLou','986497333@qq.com');
insert into office(list_ID,office_number,office_address,office_e_mail)
  values(4,'44442222','SiLou','986497444@qq.com');
insert into office(list_ID,office_number,office_address,office_e_mail)
  values(5,'55552222','WuLou','986497555@qq.com');
insert into office(list_ID,office_number,office_address,office_e_mail)
  values(6,'66662222','LiuLou','986497666@qq.com');
insert into office(list_ID,office_number,office_address,office_e_mail)
  values(7,'77772222','QiLou','986497777@qq.com');
