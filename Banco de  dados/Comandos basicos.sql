-- =================

	-- Comentarios dois traços
		-- Criar = CREATE
		-- Deletar = DROP
		-- Adicionar = ADD
        
-- =================

	-- TIPOS DE DADOS
		-- texto   = VARCHAR(X)
		-- numeros = INT(X)
		-- datas   = TIMESTAMP ou DATE
    
-- =================

	-- Tecnica CRUD (2016 LIGOU...) 
		-- C = Create= Insert
        -- R = Read  = Select 
				-- Selecionar dados apenas de onde eu preciso usar ... (pareido com condicional)
					-- (Importante para relatorios)
						-- (WHERE) = onde
        -- U = Update= UPDATE -- Sempre use (Where)
        -- D = Delete= DELETE -- Sempre use (Where)
        
-- =================
-- Costraits (Algumas caracteristicas dadas as colunas que vao delimitar regras a elas)
	-- PRIMARY KEY		= (Chave primaria da tabela) - Deletar apenas registros especficos
	-- AUTO_INCREMENT	= Entrega caretesticas unicas ao elemento (exmplo numeros) que nao se repetem (sempre com um elemento a mais)
    -- NOT NULL 		= Nao deixa os elementos da coluna vazios
    -- JOIN				= Consulta entre duas ou mais tabelas por meio de uma relaçao
		-- INNER JOIN   = Traz rezultados onde existem ocorrencias dos dois lados
        -- LEFT  JOIN	= Traz rezultados onde existem ocorrencias da esquerda com a tabela da direita
        -- RIGHT JOIN	= Traz rezultados onde existem ocorrencias da direita com a tabela da esquerda
-- Costraits- (Relaçao de tabela) - FOREIGN KEY "Chave estrangeira"    
-- =================
	-- AGGREGATIONS FUNCTIONS (Reune varios resultados em um so com algum objetivo)
	 -- SUM (Soma)
     -- ALIAS "AS" (Nomear um coluna )
	 -- COUNT(Contar os numeros de registro de uma tabela) 
	 -- GROUP BY (Agrupa dados por uma condiçao)
	 -- CONCAT (Concatena texto)
	 -- Year(Retorna o ano de uma data em um sistema)
-- =================
-- Alguns comandos

	-- Criar banco de dados
	CREATE DATABASE meubanco;

	-- Remover banco de dados
	DROP DATABASE meubanco;

	-- Selecionar banco e fazer mudanças
	USE meubanco;

	-- Criar tabela	
	CREATE TABLE minhatabela (
		-- Criaçao de colunas 
			-- Separar colunas com virgula
		-- Nome/Tipo/Quantidade de carateres 
    nome VARCHAR (100)
);

	-- Remover Tabela
	DROP TABLE minhatabela;

	-- Alterar uma tabela
		-- Adicionar coluna (Adiconar coluna a tabela pronta)    
	ALTER TABLE pessoas ADD COLUMN profissao VARCHAR(100);
    
   -- Selecionar todos os dados da tabela
	SELECT * FROM pessoas;	
    
   -- Selecionar dados especificos da tabela
		SELECT nome FROM pessoas;
        
   -- Incerir valores nas tabelas
   INSERT INTO pessoas (nome,salario,data_nasc,profissao)
		-- Nao colocar ; no final.
			-- "Somente dados de texto sao entre aspas"
   VALUES ("Maria",8000,"1993-03-04","Engenheira");
   
   -- Selcionar dados de forma especifica
		SELECT * FROM pessoas WHERE salario > 2000;
        SELECT * FROM pessoas WHERE nome ="Wender";
        
   SET  SQL_SAFE_UPDATES = 0;    
   
   -- Atualizar(UPDATE) dados
    UPDATE pessoas SET salario = 2500 WHERE nome ="Wender";
    
   -- Remover(DELETE) dados
	-- Sempre use (Where)
	DELETE FROM pessoas WHERE profissao = "Secretaria";
    
	-- Criando uma (Constraits)
	   CREATE TABLE  pessoas (
	--  Nome/Tipo/chave primaria (entrega a ID automatica)/chave primaria(nao deixa a ID vazia) 
	    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        
        nome VARCHAR (100),
        salario INT,
        data_nasc DATE
);

-- Criando uma (Constraits) com FOREIGN KEY _ "Chave estrangeira"
   CREATE TABLE  enderecos (
	    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        rua VARCHAR (255),
        numero VARCHAR (10),
        pessoa_id INT NOT NULL,
		-- FOREIGN KEY (So pode fazer referencias a chaves primarias de outra tabela )
			-- Essa tabela que esta sendo criada // A outra tabela.       
					FOREIGN KEY(pessoa_id) REFERENCES pessoas(id)
);
-- Usando JOIN  e seus tipos
	-- INNER JOIN
		-- Seleciona apenas os nomes da pessoas e tudo de endereços com *
	SELECT pessoas.nome , enderecos.* 
		-- Selciona de pessoas ...
 -- Esquerda      
    FROM pessoas 
	-- ... os dados de endereço em (on)...
				   -- Direita 
    JOIN enderecos ON pessoas.id = enderecos.pessoa_id;
 --		      								
	SELECT pessoas.nome , enderecos. * FROM pessoas JOIN enderecos ON pessoas.id = enderecos.pessoa_id;
        
	-- AGGREGATIONS FUNCTIONS (Reune varios resultados em um so com algum objetivo)
	 -- SUM (Soma)
		SELECT SUM(salario) FROM pessoas;
        
     -- ALIAS "AS" (Nomear um coluna )
		SELECT SUM(salario) AS soma_dos_salario FROM pessoas;
        
	 -- COUNT(Contar os numeros de registro de uma tabela) 
		SELECT COUNT(*) AS qtd_pessoas FROM pessoas;
        
        -- COUNT com WHERE
        SELECT COUNT(*) AS qtd_programadores FROM pessoas
			WHERE profissao="Programador";
            
	 -- GROUP BY (Agrupa dados por uma condiçao)
			SELECT profissao , COUNT(*) AS qtd_por_profissao FROM pessoas
			GROUP BY profissao;
            
	 -- CONCAT (Concatena texto)
			SELECT CONCAT ("O nome da pessoa é: ",nome,", e ele ganha R$",salario) AS descricao
			FROM pessoas;
            
	 -- Year(Retorna o ano de uma data em um sistema)
		SELECT YEAR (data_nasc) AS ano_de_nascimento,
			   MONTH(data_nasc) AS mes_de_nascimento,
			   DAY  (data_nasc) AS dia_de_nascimento
               FROM pessoas;