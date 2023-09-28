--1)
SELECT Nome, Ano FROM Filmes;

--2)
SELECT Nome, Ano FROM Filmes ORDER BY Ano;

--3)
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

--4)
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

--5)
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

--6)
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao BETWEEN 101 AND 149 ORDER BY Duracao;

--7)
SELECT  Ano, COUNT(Filmes.Id) AS Quantidade FROM Filmes GROUP BY ano ORDER BY Quantidade DESC

--8)
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M';

--9)
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

--10)
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
JOIN FilmesGenero ON (Filmes.Id = FilmesGenero.IdFilme)
JOIN Generos ON (FilmesGenero.IdGenero = Generos.Id);

--11)
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
JOIN FilmesGenero ON (Filmes.Id = FilmesGenero.IdFilme)
JOIN Generos ON (FilmesGenero.IdGenero = Generos.Id) 
Where Generos.Genero = 'Mistério';

--12)
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM(Filmes
INNER JOIN ElencoFilme ON (Filmes.Id = ElencoFilme.IdFilme)
INNER JOIN Atores ON (ElencoFilme.IdAtor = Atores.Id));