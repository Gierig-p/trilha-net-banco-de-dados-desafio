SELECT Nome, Ano
FROM Filmes;

--2

SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano;

--3

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome	LIKE 'De volta%';

--4

SELECT *
FROM Filmes
WHERE Ano = 1997;

--5

SELECT *
FROM Filmes
WHERE Ano > 2000;

--6

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao;

--7

SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY MAX(Duracao) DESC;

--8

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

--9

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

--10

SELECT Filmes.Nome AS Nome, Generos.Genero AS Genero
FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero;

--11

SELECT Filmes.Nome AS Nome, Generos.Genero AS Genero
FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero LIKE 'Mis%';

--12

SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM ElencoFilme
INNER JOIN Filmes on Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores on Atores.Id = ElencoFilme.IdAtor;

