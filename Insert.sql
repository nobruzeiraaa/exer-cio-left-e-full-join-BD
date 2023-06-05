USE bdLivraria

SET IDENTITY_INSERT tbAutor ON

INSERT INTO tbAutor
(codAutor, nomeAutor)
VALUES
(1, 'Chico Buarque')

INSERT INTO tbAutor
(codAutor, nomeAutor)
VALUES
(2, 'Jorge Amado')

INSERT INTO tbAutor
(codAutor, nomeAutor)
VALUES
(3, 'J.K. Rowling')

INSERT INTO tbAutor
(codAutor, nomeAutor)
VALUES
(4, 'William Shakespeare')

INSERT INTO tbAutor
(codAutor, nomeAutor)
VALUES
(5, 'Monteiro Lobato')

INSERT INTO tbAutor
(codAutor, nomeAutor)
VALUES
(6, 'Cora Coralina')

INSERT INTO tbAutor
(codAutor, nomeAutor)
VALUES
(7, 'Clarice Lispector')

SET IDENTITY_INSERT tbAutor OFF

SET IDENTITY_INSERT tbGenero ON

INSERT INTO tbGenero
(codGenero, nomeGenero)
VALUES
(1, 'Ficcção')

INSERT INTO tbGenero
(codGenero, nomeGenero)
VALUES
(2, 'Romance')

INSERT INTO tbGenero
(codGenero, nomeGenero)
VALUES
(3, 'Tragédia')

SET IDENTITY_INSERT tbGenero OFF

SET IDENTITY_INSERT tbEditora ON

INSERT INTO tbEditora
(codEditora, nomeEditora)
VALUES
(1, 'Melhoramentos')

INSERT INTO tbEditora
(codEditora, nomeEditora)
VALUES
(2, 'Globo')

INSERT INTO tbEditora
(codEditora, nomeEditora)
VALUES
(3, 'Àtica')

INSERT INTO tbEditora
(codEditora, nomeEditora)
VALUES
(4, 'Companhia das Letras')

INSERT INTO tbEditora
(codEditora, nomeEditora)
VALUES
(5, 'Abril')

SET IDENTITY_INSERT tbEditora OFF

SET IDENTITY_INSERT tbLivro ON

INSERT INTO tbLivro
(codLivro, nomeLivro, numPaginas, codGenero, codEditora, codAutor)
VALUES
(1, 'Budapeste', 176, 2, 4, 1)

INSERT INTO tbLivro
(codLivro, nomeLivro, numPaginas, codGenero, codEditora, codAutor)
VALUES
(2, 'O Bicho-da-Seda', 454, 2, 5, 3)

INSERT INTO tbLivro
(codLivro, nomeLivro, numPaginas, codGenero, codEditora, codAutor)
VALUES
(3, 'Gabriela, Cravo e Canela', 214, 1, 2, 2)

INSERT INTO tbLivro
(codLivro, nomeLivro, numPaginas, codGenero, codEditora, codAutor)
VALUES
(4, 'Reinações de Narizinho', 143, 2, 2, 5)

INSERT INTO tbLivro
(codLivro, nomeLivro, numPaginas, codGenero, codEditora, codAutor)
VALUES
(5, 'Romeu e Julieta', 421, 1, 3, 4)

INSERT INTO tbLivro
(codLivro, nomeLivro, numPaginas, codGenero, codEditora, codAutor)
VALUES
(6, 'O Irmão Alemão', 478, 1, 4, 1)

INSERT INTO tbLivro
(codLivro, nomeLivro, numPaginas, codGenero, codEditora, codAutor)
VALUES
(7, 'Terras do Sem-Fim', 125, 1, 3, 2)

INSERT INTO tbLivro
(codLivro, nomeLivro, numPaginas, codGenero, codEditora, codAutor)
VALUES
(8, 'Animais Fantásticos e Onde Habitam', 267, 2, 4, 3)

SET IDENTITY_INSERT tbLivro OFF

