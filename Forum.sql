create database Forum_;
use Forum_;
create table Board(
  ID varchar(16) primary key not null,
  Name varchar(16) unique not null,
  Board_date datetime not null,
  Description varchar(128)
);

insert into Board(ID,Name,Board_date,Description) values (1,'百度贴吧','2000-2-1','');

create table Forum(
  FID varchar(16) primary key not null,
  Forum_name varchar(16) unique not null,
  Forum_description varchar(128)
);
insert into Forum(FID,Forum_name,Forum_description) values (11,'李毅吧','帝吧');
insert into Forum(FID,Forum_name,Forum_description) values (12,'英雄联盟吧','人在塔在');

create table Article(
  AID varchar(16) primary key not null,
  Theme varchar(256) not null,
  Postdata datetime not null,
  Views int not null,
  content varchar(3072) not null,
  UID varchar(16) not null,
  LastReplyDate datetime not null,
  LastReplyUID varchar(16) not null
);
insert into Article(AID,Theme,Postdata,Views,content,UID,LastReplyDate,LastReplyUID)
  values(21,'帝吧之草',now(),300,'帝吧之草就是我，我就是帝吧之草',41,now(),31);
insert into Article(AID,Theme,Postdata,Views,content,UID,LastReplyDate,LastReplyUID)
  values(22,'帝吧之花',now(),304,'帝吧之花就是我，我就是帝吧之花',42,now(),32);
insert into Article(AID,Theme,Postdata,Views,content,UID,LastReplyDate,LastReplyUID)
  values(23,'琴瑟仙女技能详解辅助攻略',now(),4000,'能量和弦（被动）,Q英勇赞美诗：主力伤害技能,E坚毅咏叹调：
         能提供双抗，自动治疗,R迅捷鸣奏曲：辅助，加速作用',43,now(),33);
insert into Article(AID,Theme,Postdata,Views,content,UID,LastReplyDate,LastReplyUID)
  values(24,'最新游戏活动',now(),5994,'2017赛季开启',44,now(),34);

create table Reply(
  Reply_ReplyDate datetime not null,
  Reply_content varchar(3072) not null,
  Title varchar(256),
  UID varchar(16) not null,
  ReplyDate timestamp not null
);
insert into Reply(Reply_ReplyDate,Reply_content,Title,UID,ReplyDate) values (now(),'爆照啊','爆照',41,now());
insert into Reply(Reply_ReplyDate,Reply_content,Title,UID,ReplyDate) values (now(),'对啊','爆照',42,now());
insert into Reply(Reply_ReplyDate,Reply_content,Title,UID,ReplyDate) values (now(),'琴女很棒','very good',43,now());
insert into Reply(Reply_ReplyDate,Reply_content,Title,UID,ReplyDate) values (now(),'哈哈','喜欢',44,now());

create table Moderator(
  FID varchar(16) not null,
  UID varchar(16) not null,
  OperUID varchar(16) not null,
  OperDate datetime not null,
  CONSTRAINT `f_forum_fid` FOREIGN KEY (FID) REFERENCES Forum(FID),
  CONSTRAINT `f_forum_uid` FOREIGN KEY (UID) REFERENCES User(UID),
  primary key(FID,UID)
);
insert into Moderator(FID,UID,OperUID,OperDate) values (11,41,51,now());
insert into Moderator(FID,UID,OperUID,OperDate) values (12,42,52,now());
insert into Moderator(FID,UID,OperUID,OperDate) values (11,43,53,now());
insert into Moderator(FID,UID,OperUID,OperDate) values (12,44,54,now());


create table User(
  UID varchar(16) primary key not null,
  User_name varchar(16) not null,
  Password varchar(16) not null
);
insert into User(UID,User_name,Password) values (41,'萌宝','123123123');
insert into User(UID,User_name,Password) values (42,'纸飞机','33333344444');
insert into User(UID,User_name,Password) values (43,'蓝瘦香菇','sfdd22223');
insert into User(UID,User_name,Password) values (44,'海绵宝宝','ASddgfgfds');

create table UserDesc(
  UID varchar(16) not null,
  Desic varchar(128),
  Name varchar(16),
  Sex varchar (6),
  Brithday datetime,
  primary key(UID),
  constraint res2 foreign key (UID) references User(UID)
);
insert into UserDesc(UID,Desic,Name,Sex,Brithday) values (41,'','萌宝','男','1997-3-20');
insert into UserDesc(UID,Desic,Name,Sex,Brithday) values (42,'','大宝','女','1994-3-20');

create table Entity7(
  UID varchar(16) not null,
  RoleID varchar(16) not null,
  primary key(UID,RoleID),
  constraint res4 foreign key (UID) references User(UID),
  constraint res5 foreign key (RoleID) references Role(RoleID)
);
insert into Entity7(UID,RoleID) values (41,61);
insert into Entity7(UID,RoleID) values (42,62);

create table Role(
  RoleID varchar(16) primary key not null,
  RoleName varchar(16) not null
);
insert into Role(RoleID,RoleName) values (61,'一级管理者');
insert into Role(RoleID,RoleName) values (62,'一级管理者');

create table Entity9(
  RID varchar(16) not null,
  RoleID varchar(16) not null,
  primary key(RID,RoleID),
  constraint res6 foreign key (RID) references Authority(RID),
  constraint res7 foreign key (RoleID) references Role(RoleID)
);
insert into Entity9(RID,RoleID) values (71,61);
insert into Entity9(RID,RoleID) values (72,62);

create table Authority(
  RID varchar(16) primary key not null,
  RightName varchar(16) not null
);
insert into Authority(RID,RightName) values (71,'管理员');
insert into Authority(RID,RightName) values (72,'管理员');
