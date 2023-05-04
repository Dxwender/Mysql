CREATE DATABASE test01;
USE test01;
CREATE TABLE referencia ( 
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
nome VARCHAR (100),	
idade INT (100),
sexo VARCHAR(2),
tipo_sanguineo VARCHAR(2)
);
INSERT INTO referencia (nome,idade,sexo,tipo_sanguineo) VALUE ("Jose",50,"M","A+");
SELECT * FROM referencia;
INSERT INTO referencia (nome,idade,sexo,tipo_sanguineo) VALUE ("Maria",45,"F","B-");
INSERT INTO referencia (nome,idade,sexo,tipo_sanguineo) VALUE ("Lucivania",50,"F","O+");
CREATE TABLE endereco ( 
id  INT PRIMARY KEY  AUTO_INCREMENT NOT NULL,
rua VARCHAR (100),
numero INT (100),
FOREIGN KEY (id) REFERENCES referencia(id)
);
INSERT INTO endereco (rua,numero) VALUE ("Jatoba",1002);
SELECT * FROM endereco ;
INSERT INTO endereco (rua,numero) VALUE ("Acacias",10202);
INSERT INTO endereco (rua,numero) VALUE ("Carvalho",231);
