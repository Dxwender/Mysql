create database vendas;
use vendas;
create table cliente (
id int not null auto_increment primary key,
nome varchar(200),
email varchar(200),
telefone varchar(15),
data_nascimento date,
cpf varchar (15),
identidade varchar(15),
rua varchar (200),
numero int (15),
bairro varchar (200),
cep varchar (9),
cidade varchar (200)
);