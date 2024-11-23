-- Liste os títulos e seus status, incluindo os que não têm status definido.
SELECT t.titulo, l.status
FROM tbl_titulo t
LEFT JOIN tbl_livros l ON t.codigo_titulo = l.codigo_titulo;
 
-- Liste os títulos e suas descrições dos livros alugados.
SELECT t.titulo, t.descricao
FROM tbl_livros l
JOIN tbl_titulo t ON l.codigo_titulo = t.codigo_titulo
WHERE l.status = 'ALUGADO';
 
-- Liste os nomes dos clientes que não têm livros alugados.
SELECT c.nome
FROM tbl_cliente c
LEFT JOIN tbl_emprestimo e ON c.codigo_cliente = e.codigo_cliente
WHERE e.codigo_cliente IS NULL;
 
-- Liste os títulos e suas categorias dos livros disponíveis.
SELECT t.titulo, t.categoria
FROM tbl_livros l
JOIN tbl_titulo t ON l.codigo_titulo = t.codigo_titulo
WHERE l.status = 'DISPONIVEL';
 
-- Liste os nomes dos clientes e os títulos dos livros que eles têm alugados.
SELECT c.nome, t.titulo
FROM tbl_cliente c
LEFT JOIN tbl_emprestimo e ON c.codigo_cliente = e.codigo_cliente
LEFT JOIN tbl_livros l ON e.codigo_livro = l.cod_livro
LEFT JOIN tbl_titulo t ON l.codigo_titulo = t.codigo_titulo;
 
-- Retorne o nome, título do livro e o status do empréstimo do livro alugado pela Ana Oliveira.
SELECT c.nome, t.titulo, l.status
FROM tbl_cliente c
JOIN tbl_emprestimo e ON c.codigo_cliente = e.codigo_cliente
JOIN tbl_livros l ON e.codigo_livro = l.cod_livro
JOIN tbl_titulo t ON l.codigo_titulo = t.codigo_titulo
WHERE c.nome = 'Ana Oliveira';