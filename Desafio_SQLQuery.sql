-- Selecionar Banco de dados
use Filmes;

-- 1 - Buscar o nome e ano dos filmes
select nome, ano from dbo.filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select * from filmes Order by ano asc;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
select * from filmes where nome like '%futuro';
select * from filmes where nome = 'De Volta para o Futuro';

-- 4 - Buscar os filmes lan�ados em 1997
select * from filmes where ano = 1997;

-- 5 - Buscar os filmes lan�ados AP�S o ano 2000
select * from filmes where ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from filmes
where duracao > 100 and duracao < 150
order by duracao asc;

-- 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT filmes.ano AS Ano, COUNT(*) AS Quantidade
FROM filmes
GROUP BY ano
ORDER BY quantidade DESC;

-- 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome from atores where genero = 'M';

-- 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome
from atores
where genero = 'F'
order by PrimeiroNome;

-- 10 - Buscar o nome do filme e o g�nero
select filmes.Nome, Generos.Genero
from filmes
inner join FilmesGenero on FilmesGenero.IdFilme = filmes.Id
inner join Generos on Generos.Id = FilmesGenero.IdGenero;

-- 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
select filmes.Nome, Generos.Genero
from filmes
inner join FilmesGenero on FilmesGenero.IdFilme = filmes.Id
inner join Generos on Generos.Id = FilmesGenero.IdGenero
where Generos.Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
from filmes
inner join ElencoFilme on ElencoFilme.IdFilme = filmes.Id
inner join Atores on Atores.Id = ElencoFilme.IdAtor;

