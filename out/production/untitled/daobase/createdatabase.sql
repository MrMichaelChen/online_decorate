drop table if exists user;
drop table if exists employee;
drop table if exists product;
drop table if exists template;
drop table if exists templateinfo;
drop table if exists orderlist;
drop table if exists orderinfo;
drop table if exists diary;

create table user (
  id bigint AUTO_INCREMENT primary key,
  name varchar(20) not null ,
  address varchar(20) not null ,
  phone varchar(20) not null,
  password varchar(20) not null,
  role varchar(10) not null,
  check (role in ('admin' , 'user', 'employee'))
);

create table employee (
  id bigint primary key,
  issuper varchar(10) not null ,
  work varchar(20) not null ,
  check (issuper in ('false' , 'ture'))
);

create table product (
  id bigint AUTO_INCREMENT primary key,
  name varchar(20) not null ,
  price double not null ,
  type varchar(30) not null,
  repertory bigint not null,
  vender varchar(30) not null
);

create table template (
  id bigint AUTO_INCREMENT primary key,
  authorid bigint not null ,
  price double not null ,
  type varchar(30) not null,
  repertory bigint not null,
  vender varchar(30) not null
);

create table templateinfo(
  id bigint primary key ,
  proid bigint not null ,
  pronum bigint not null
);

create table orderlist(
  id bigint auto_increment primary key ,
  userid bigint not null ,
  orderdate datetime
);

create table orderinfo(
  id bigint not null ,
  proid bigint not null ,
  pronum bigint not null
);

create table diary(
  id bigint auto_increment primary key ,
  userid bigint not null ,
  time datetime not null ,
  title text not null ,
  content longtext not null
);

show tables;
