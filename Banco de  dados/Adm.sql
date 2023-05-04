CREATE DATABASE adm;
USE adm;
CREATE TABLE pessoa (
	id   INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nome VARCHAR (100),
    idade INT (100)
);
ALTER TABLE pessoa ADD COLUMN id INT ;
SELECT * FROM pessoa;
SELECT * FROM endereco;
DROP TABLE pessoa;
DROP TABLE endereco;
CREATE TABLE endereco (
	id   INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	rua VARCHAR (100),
    numero INT (100),
    FOREIGN KEY (id) REFERENCES pessoa(id)
);
INSERT INTO pessoa (nome,idade) VALUES("Joas",10);
INSERT INTO pessoa (nome,idade) VALUES("Veu",45);
INSERT INTO pessoa (nome,idade) VALUES("Dio",23);

INSERT INTO endereco (rua,numero) VALUES("Avc",13);
INSERT INTO endereco (rua,numero) VALUES("Zfs",200);
INSERT INTO endereco (rua,numero) VALUES("WWe",78);

INSERT INTO pessoa (nome,idade) VALUES("Live",15);
INSERT INTO endereco (rua,numero) VALUES("Psn",15);

SELECT pessoa.nome , endereco.* FROM pessoa  JOIN endereco ON pessoa.id = endereco.id;
SELECT SUM(numero) FROM endereco;