CREATE TABLE tbl_cliente (
codigo_cliente SERIAL PRIMARY KEY,
nome TEXT NOT NULL,
cidade TEXT NOT NULL,
endereco TEXT NOT NULL
);

CREATE TABLE tbl_titulo (
codigo_titulo SERIAL PRIMARY KEY,
titulo TEXT NOT NULL,
descrição TEXT NOT NULL,
categoria TEXT
);

CREATE DOMAIN status_livro TEXT CHECK(VALUE IN ('DISPONIVEL', 'INDISPONIVEL'));

CREATE TABLE tbl_livros(
codigo_livro SERIAL PRIMARY KEY,
codigo_titulo INTEGER NOT NULL REFERENCES tbl_titulo(codigo_titulo) ,
status status_livro DEFAULT 'DISPONIVEL'
);

CREATE TABLE tbl_emprestimo (
numero_emprestimo SERIAL PRIMARY KEY,
codigo_cliente INTEGER NOT NULL REFERENCES tbl_cliente(codigo_cliente),
codigo_livro INTEGER NOT NULL REFERENCES tbl_livros(codigo_livro)
);