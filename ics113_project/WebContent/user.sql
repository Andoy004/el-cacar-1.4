create database carpio;

use carpio;

create table user(
username varchar(50),
pass varchar(60),
fname varchar(50),
mname varchar(20),
lname varchar(50),
zip varchar(4),
street varchar(50),
brg varchar(50),
city varchar(50),
bday varchar(50),
age varchar(20),
email varchar(70)


);


drop table user;
select * from user where username = "andoy004" and pass ="persona!";