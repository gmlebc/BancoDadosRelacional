-- database: :memory:
-- Criar Banco de Dados "bd_sistema_bancario"
CREATE DATABASE bd_sistema_bancario;

-- Criar 5 tabelas quaisquer
CREATE TABLE Adventure (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao TEXT
);

CREATE TABLE Tamers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data_criacao DATE,
    valor DECIMAL(10, 2)
);

CREATE TABLE Frontier (
    id INT PRIMARY KEY AUTO_INCREMENT,
    categoria VARCHAR(50),
    quantidade INT
);

CREATE TABLE Savers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50),
    senha VARCHAR(50)
);

CREATE TABLE Hunters (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto VARCHAR(100),
    preco DECIMAL(10, 2)
);

-- Criar Tabelas conforme MER (Sistema Bancario)
CREATE TABLE cliente (
    NOME_CLIENTE VARCHAR(100),
    CIDADE_CLIENTE VARCHAR(100),
    ENDERECO_CLIENTE VARCHAR(255)
);

CREATE TABLE conta (
    NUMERO_CONTA INT PRIMARY KEY,
    NOME_AGENCIA VARCHAR(100),
    SALDO DECIMAL(15, 2)
);

CREATE TABLE emprestimo (
    NUMERO_EMPRESTIMO INT PRIMARY KEY,
    NOME_AGENCIA VARCHAR(100),
    VALOR DECIMAL(15, 2)
);

CREATE TABLE agencia (
    NOME_AGENCIA VARCHAR(100) PRIMARY KEY,
    CIDADE_AGENCIA VARCHAR(100),
    DEPOSITOS DECIMAL(15, 2)
);

-- Deletar as 5 Tabelas criadas aleatoriamente
DROP TABLE Adventure;
DROP TABLE Tamers;
DROP TABLE Frontier;
DROP TABLE Savers;
DROP TABLE Hunters;

-- Alterar as tabelas conforme o MER atualizado
ALTER TABLE cliente RENAME TO tbl_cliente
ADD COLUMN IDADE INT,
ADD COLUMN CPF VARCHAR(11);

ALTER TABLE conta RENAME TO tbl_conta
MODIFY COLUMN NUMERO_CONTA INT PRIMARY KEY;

ALTER TABLE emprestimo RENAME TO tbl_emprestimo
MODIFY COLUMN NUMERO_EMPRESTIMO INT PRIMARY KEY;

ALTER TABLE agencia RENAME TO tbl_agencia
RENAME COLUMN CIDADE_AGENCIA TO ENDERECO_AGENCIA;

-- Criar um esquema com o seu nome
CREATE SCHEMA "Leandro_Barbosa";