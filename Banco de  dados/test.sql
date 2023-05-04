CREATE DATABASE test;
USE test;
CREATE TABLE informacoes (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR (100),
idade INT(100)
);

DROP TABLE informacoes;
INSERT INTO informacoes (nome,idade) VALUE ("Wender",26);
INSERT INTO informacoes (nome,idade) VALUE ("Lucivania",49);
INSERT INTO informacoes (nome,idade) VALUE ("Joaquim",53);
CREATE TABLE endereco (
 id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
 rua VARCHAR (100),
 numero INT (100),
 FOREIGN KEY (id) REFERENCES informacoes(id)
);

INSERT INTO endereco(rua,numero) VALUE ("Jatoba",150);
INSERT INTO endereco(rua,numero) VALUE ("Ipe",30);
INSERT INTO endereco(rua,numero) VALUE ("Carbalho",21);

SELECT * FROM  endereco;
SELECT * FROM  informacoes;

DROP TABLE endereco;

SET  SQL_SAFE_UPDATES = 0; 
UPDATE endereco SET rua = "Ipe" WHERE rua= "as";
DELETE FROM endereco WHERE rua = "Ipe";
UPDATE endereco SET rua = "as" WHERE numero = 30;
SELECT informacoes.nome , endereco.* FROM informacoes  JOIN endereco ON informacoes.id = endereco.id;