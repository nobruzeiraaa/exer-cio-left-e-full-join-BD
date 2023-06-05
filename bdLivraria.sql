CREATE DATABASE bdLivraria

USE bdLivraria

CREATE TABLE tbAutor (
	codAutor INT PRIMARY KEY IDENTITY (1,1),
	nomeAutor VARCHAR (30)
	)

CREATE TABLE tbEditora (
	codEditora INT PRIMARY KEY IDENTITY (1,1),
	nomeEditora VARCHAR (30)
	)

CREATE TABLE tbGenero (
	codGenero INT PRIMARY KEY IDENTITY (1,1),
	nomeGenero VARCHAR (15)
	)

CREATE TABLE tbLivro (
	codLivro INT PRIMARY KEY IDENTITY (1,1),
	nomeLivro VARCHAR (50),
	numPaginas INT,
	codGenero INT FOREIGN KEY (codGenero) REFERENCES tbGenero (codGenero),
	codEditora INT FOREIGN KEY (codEditora) REFERENCES tbEditora (codEditora),
	codAutor INT FOREIGN KEY (codAutor) REFERENCES tbAutor (codAutor)
	)
