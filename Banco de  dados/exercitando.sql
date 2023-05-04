create database refazendo;
use refazendo;
create table pessoa_info(
id int primary key auto_increment not null,
nome varchar(250),
identitade varchar(250),
cpf varchar(250)
);
create table pessoa_ender (
id int primary key auto_increment not null,
rua varchar(250),
numero int(250),
FOREIGN KEY (id) references pessoa_info(id)
);
insert into pessoa_info (nome,identitade,cpf) value ("Wender",00000000,00000000000);
insert into pessoa_info (nome,identitade,cpf) value ("Lea",11111111,11111111111);
insert into pessoa_info (nome,identitade,cpf)  value ("Maria",2222222,2222222222);
insert into pessoa_ender (rua,numero) value ("Radialista Geraldo Lara",120);
insert into pessoa_ender (rua,numero) value ("Rosangela",40);
insert into pessoa_ender (rua,numero) value ("Rosangela",40);
Select * from pessoa_info;
Select*from pessoa_ender;
Select pessoa_info.nome , pessoa_ender.* from pessoa_info join pessoa_ender on pessoa_info.id = pessoa_ender.id where rua="Rosangela";
select * from pessoa_ender  where rua = "Rosangela" ; 