-- Criando um Banco de Dados

CREATE DATABASE db_livraria;


USE db_livraria;

-- Criando uma Tabela

CREATE TABLE IF NOT EXISTS tb_clientes (
id_clientes int,
nome varchar(45),
cpf varchar(11),
rg varchar(11),
email varchar(45)
);

CREATE TABLE IF NOT EXISTS tb_telefone (
id_telefones int,
CLIENTES_id_cliente int
);

CREATE TABLE IF NOT EXISTS tb_endereco (
id_endereco int NOT NULL,
rua varchar(45),
numero int,
cidade varchar(45),
estado varchar(45)
);

CREATE TABLE IF NOT EXISTS tb_livro (
id_livro int NOT NULL,
titulo varchar(45),
categoria varchar(11),
isbn varchar(11),
ano date,
valor decimal(10,2),
autor varchar(45),
FOREIGN KEY (EDITORA_id_editora) REFERENCES tb_editora(id_editora)
);

CREATE TABLE IF NOT EXISTS tb_estoque (
id_estoque int NOT NULL,
quantidade int NOT NULL,
LIVRO_id_livro int,
FOREIGN KEY (LIVRO_id_livro) REFERENCES LIVRO(id_livro)
);

CREATE TABLE tb_item_pedido (
quantidade int NOT NULL,
valor decimal(10,2) NOT NULL,
CLIENTE_id_cliente int,
FOREIGN KEY (CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente),
LIVRO_idlivro int,
FOREIGN KEY (LIVRO_id_livro) REFERENCES tb_livro(id_livro)
);

CREATE TABLE EDITORA ( 
 id_editora INT PRIMARY KEY AUTO_INCREMENT, 
 nome_editora VARCHAR(30), 
 nome_contato VARCHAR(30), 
 email VARCHAR(45), 
 contato VARCHAR(20)
 );

