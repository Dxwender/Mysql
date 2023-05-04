create database consoles_separados;
use consoles_separados;

create table xbox (
id int primary key not null auto_increment,
nome varchar (255),
marca varchar(255),
quantidade varchar (255),
saida_video varchar(255)
);
create table nintendo (
id int primary key not null auto_increment,
nome varchar (255),
marca varchar(255),
quantidade varchar (255),
saida_video varchar(255)
);
create table sony (
id int primary key not null auto_increment,
nome varchar (255),
marca varchar(255),
quantidade varchar (255),
saida_video varchar(255)
);
create table sega (
id int primary key not null auto_increment,
nome varchar (255),
marca varchar(255),
quantidade varchar (255),
saida_video varchar(255)
);

insert into xbox (nome,marca,quantidade,saida_video) value ("Xbox Classico","Microsoft",2,"rca");
insert into xbox (nome,marca,quantidade,saida_video) value ("Xbox 360"	   ,"Microsoft",3,"hdmi/rca");
insert into xbox (nome,marca,quantidade,saida_video) value ("Xbox One X"   ,"Microsoft",1,"hdmi");
insert into xbox (nome,marca,quantidade,saida_video) value ("Xbox Serie X" ,"Microsoft",1,"hdmi");

insert into nintendo (nome,marca,quantidade,saida_video) value ("Nes"                ,"Nintendo",1,"rca");
insert into nintendo (nome,marca,quantidade,saida_video) value ("Super Nintendo"     ,"Nintendo",2,"rca");
insert into nintendo (nome,marca,quantidade,saida_video) value ("Nintendo 64"        ,"Nintendo",3,"rca");
insert into nintendo (nome,marca,quantidade,saida_video) value ("Nintendo Game Cube" ,"Nintendo",1,"rca");
insert into nintendo (nome,marca,quantidade,saida_video) value ("Nintendo Wii"       ,"Nintendo",1,"rca");
insert into nintendo (nome,marca,quantidade,saida_video) value ("Nintendo Wii U"     ,"Nintendo",1,"hdmi");
insert into nintendo (nome,marca,quantidade,saida_video) value ("Nintendo Swith Oled","Nintendo",1,"hdmi");
insert into nintendo (nome,marca,quantidade,saida_video) value ("Nintendo Swith V2"  ,"Nintendo",1,"hdmi");
insert into nintendo (nome,marca,quantidade,saida_video) value ("New Nintendo 3DS XL","Nintendo",2,"none");
insert into nintendo (nome,marca,quantidade,saida_video) value ("Game Boy Advance SP","Nintendo",1,"none");

insert into sony (nome,marca,quantidade,saida_video) value ("PlayStation 1 Slim"      ,"Sony",3,"rca");
insert into sony (nome,marca,quantidade,saida_video) value ("PlayStation 1 Fat"       ,"Sony",1,"rca");
insert into sony (nome,marca,quantidade,saida_video) value ("PlayStation 2 Slim"      ,"Sony",1,"rca");
insert into sony (nome,marca,quantidade,saida_video) value ("PlayStation 2 Fat"       ,"Sony",1,"rca");
insert into sony (nome,marca,quantidade,saida_video) value ("PlayStation 3 Slim"      ,"Sony",2,"hdmi/rca");
insert into sony (nome,marca,quantidade,saida_video) value ("PlayStation 3 Super Slim","Sony",1,"hdmi/rca");
insert into sony (nome,marca,quantidade,saida_video) value ("PlayStation 4 Pro"       ,"Sony",1,"hdmi");
insert into sony (nome,marca,quantidade,saida_video) value ("PlayStation 5"           ,"Sony",1,"hdmi");
insert into sony (nome,marca,quantidade,saida_video) value ("PlayStation Vita"        ,"Sony",1,"none");

insert into sega (nome,marca,quantidade,saida_video) value ("Sega Master System","Sega",1,"rca");
insert into sega (nome,marca,quantidade,saida_video) value ("Sega Mega Drive"   ,"Sega",2,"rca");
insert into sega (nome,marca,quantidade,saida_video) value ("Sega Saturno"      ,"Sega",1,"rca");
insert into sega (nome,marca,quantidade,saida_video) value ("Sega Dreamquest"   ,"Sega",1,"rca");

drop database consoles_separados;
select *from sony;
SELECT SUM(quantidade) FROM sega;