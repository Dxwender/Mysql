create database relembrar;
use relembrar;
create table pessoa_informacoes (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome varchar(100),
idade int (100),
identidade varchar (255),
cpf varchar (255)
);
create table pessoa_endereco(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
rua varchar (1000),
numero int (255),
FOREIGN KEY (id) REFERENCES pessoa_informacoes(id)
);
drop table pessoa_informacoes;
drop table pessoa_endereco; 
select * from pessoa_informacoes;
insert into pessoa_informacoes (nome,idade,identidade,cpf)value("Wender","26","000 000 00","000 000 000 00");
insert into pessoa_informacoes (nome,idade,identidade,cpf)value("Lea","49","000 000 00","000 000 000 00");
insert into pessoa_endereco (rua,numero)value("Radialista Geraldo lara",120);
insert into pessoa_endereco (rua,numero)value("Rosangela",40);

DELETE FROM pessoa_informacoes WHERE idade = 26;
SET  SQL_SAFE_UPDATES = 0;

alter table pessoa_endereco add column FOREIGN KEY (id) REFERENCES pessoa_informacoes(id);

SELECT pessoa_informacoes.nome , pessoa_endereco.* FROM pessoa_informacoes  JOIN pessoa_endereco ON pessoa_informacoes.id = pessoa_endereco.id;
