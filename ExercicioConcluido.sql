--1
SELECT 
	Nome, Ano 
FROM Filmes

--2
SELECT 
	Nome, Ano 
FROM Filmes 
ORDER BY Ano ASC

--3

SELECT 
	Nome, Ano, Duracao 
FROM Filmes 
WHERE Nome ='De Volta para o Futuro'

--4
SELECT 
	*
FROM Filmes 
WHERE Ano = 1997

--5

SELECT 
	* 
FROM Filmes 
WHERE Ano >= 2000

--6

SELECT 
	*
FROM Filmes
WHERE Duracao > 100
  AND Duracao < 150
ORDER BY Duracao ASC


--7

SELECT 
	Ano, COUNT(*) as Quantidade_filmes
FROM Filmes GROUP BY Ano ORDER BY Quantidade_filmes DESC

--8

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

--9

SELECT PrimeiroNome, UltimoNome, Genero AS Render FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC

--10

SELECT Filmes.Nome, Genero FROM FilmesGenero 
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

--11

SELECT Filmes.Nome, Genero FROM FilmesGenero
INNER JOIN Filmes ON  FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

--12

SELECT 
	Filmes.Nome as 'Nome', Atores.PrimeiroNome as 'Primeiro Nome', Atores.UltimoNome as 'Ultimo Nome', ElencoFilme.Papel as 'Papel' 
FROM ElencoFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
