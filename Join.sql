USE bdLivraria

--1) O nome dos livros ao lado do nome das editoras e do nome dos autores 

SELECT nomeLivro AS 'Nome do Livro', nomeEditora AS 'Nome da Editora', nomeAutor AS 'Nome do Autor' FROM tbLivro
LEFT JOIN tbAutor ON
tbLivro.codAutor = tbAutor.codAutor
LEFT JOIN tbEditora ON
tbLivro.codEditora = tbEditora.codEditora

--2) O nome dos livros ao lado do nome do autor somente daqueles cujo nome da editora for �Cia das Letras� 

SELECT nomeLivro AS 'Nome do Livro', nomeAutor AS 'Nome do Autor' FROM tbLivro
LEFT JOIN tbAutor ON
tbLivro.codAutor = tbAutor.codAutor
LEFT JOIN tbEditora ON
tbLivro.codEditora = tbEditora.codEditora
WHERE nomeEditora LIKE 'C%'

--3) O nome dos livros ao lado dos nomes dos autores, somente dos livros que n�o forem do autor ��rico Ver�ssimo� 

SELECT nomeLivro AS 'Nome do Livro', nomeAutor AS 'Nome do Autor' FROM tbLivro
LEFT JOIN tbAutor ON
tbLivro.codAutor = tbAutor.codAutor
WHERE nomeAutor <> '�rico Ver�ssimo'

--4) Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que n�o tem livros cadastrados 

SELECT nomeAutor AS 'Nome do Autor', nomeLivro AS 'Nome do Livro' FROM tbAutor
LEFT JOIN tbLivro ON
tbLivro.codAutor = tbAutor.codAutor

--5) Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que n�o tem autores cadastrados 

SELECT nomeAutor AS 'Nome do Autor', nomeLivro AS 'Nome do Livro' FROM tbLivro
RIGHT JOIN tbAutor ON
tbLivro.codAutor = tbAutor.codAutor


--6) O nome dos autores ao lado dos nomes dos livros, indiferente do autor ter ou n�o livro publicado, e indiferente do livro pertencer a algum autor.

SELECT nomeAutor AS 'Nome do Autor', nomeLivro AS 'Nome do Livro' FROM tbAutor
FULL JOIN tbLivro ON
tbLivro.codAutor = tbAutor.codAutor


--7) A editora �tica ir� publicar todos os t�tulos dessa livraria. Criar um select que associe os nomes de todos os livros ao lado do nome da editora �tica. 
UPDATE tbEditora SET nomeEditora = '�tica'
SELECT nomeLivro AS 'Nome do Livro', nomeEditora AS 'Nome da Editora' FROM tbLivro
FULL JOIN tbEditora ON 
tbEditora.codEditora = tbLivro.codEditora


--8) Somente os nomes dos autores que n�o tem livros cadastrados.

SELECT nomeAutor AS 'Nome do Autor' FROM tbLivro
FULL JOIN tbAutor ON
tbLivro.codAutor = tbAutor.codAutor
WHERE codLivro IS NULL

--9) Os nomes dos g�neros que n�o possuem nenhum livro cadastrado. 

SELECT nomeGenero AS 'Nome do G�nero' FROM tbLivro
FULL JOIN tbGenero ON
tbLivro.codGenero = tbGenero.codGenero
WHERE codLivro IS NULL

