create database mytable2;
use mytable2;
drop database mytable2;

create table consoles_all (
id int primary key not null auto_increment,
nome varchar (255),
marca varchar(255),
quantidade varchar (255),
saida_video varchar (255)
);

insert into consoles_all (nome,marca,quantidade,saida_video) value ("Xbox Classico","Microsoft",2,"rca");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("Xbox 360"	   ,"Microsoft",3,"hdmi/rca");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("Xbox One X"   ,"Microsoft",1,"hdmi");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("Xbox Serie X" ,"Microsoft",1,"hdmi");

insert into consoles_all (nome,marca,quantidade,saida_video) value ("Nes"                ,"Nintendo",1,"rca");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("Super Nintendo"     ,"Nintendo",2,"rca");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("Nintendo 64"        ,"Nintendo",3,"rca");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("Nintendo Game Cube" ,"Nintendo",1,"rca");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("Nintendo Wii"       ,"Nintendo",1,"rca");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("Nintendo Wii U"     ,"Nintendo",1,"hdmi");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("Nintendo Swith Oled","Nintendo",1,"hdmi");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("Nintendo Swith V2"  ,"Nintendo",1,"hdmi");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("New Nintendo 3DS XL","Nintendo",2,"none");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("Game Boy Advance SP","Nintendo",1,"none");

insert into consoles_all (nome,marca,quantidade,saida_video) value ("PlayStation 1 Slim"      ,"Sony",3,"rca");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("PlayStation 1 Fat"       ,"Sony",1,"rca");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("PlayStation 2 Slim"      ,"Sony",1,"rca");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("PlayStation 2 Fat"       ,"Sony",1,"rca");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("PlayStation 3 Slim"      ,"Sony",2,"hdmi/rca");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("PlayStation 3 Super Slim","Sony",1,"hdmi/rca");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("PlayStation 4 Pro"       ,"Sony",1,"hdmi");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("PlayStation 5"           ,"Sony",1,"hdmi");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("PlayStation Vita"        ,"Sony",1,"none");

insert into consoles_all (nome,marca,quantidade,saida_video) value ("Sega Master System","Sega",1,"rca");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("Sega Mega Drive"   ,"Sega",2,"rca");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("Sega Saturno"      ,"Sega",1,"rca");
insert into consoles_all (nome,marca,quantidade,saida_video) value ("Sega Dreamquest"   ,"Sega",1,"rca");

SELECT SUM(quantidade) FROM consoles_all;
SELECT SUM(quantidade) FROM consoles_all where (saida_video)= "hdmi/rca";
select * from consoles_all;

alter table consoles_all add column (
saida_video varchar(255)
);
alter table sony where nome="";
insert into consoles_all (saida_video) value (rca);