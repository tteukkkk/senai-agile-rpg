-- Projeto acadêmico | Matheus Macêdo Felicio
SET NAMES utf8mb4;

USE SENAIAgile;

-- Exercício 1
select * from personagens;


-- Exercício 2
select nome_personagem, idade from personagens;


-- Exercício 3
select nome_personagem, token from personagens;


-- Exercício 4
select * from tipoCurso;


-- Exercício 5
select * from nivel;


-- Exercício 6
select item from mercado;


-- Exercício 7
select p.nome_personagem as nome, c.nome_classe as classe 
from personagens p
join classe c on p.classe_id = c.id_classe;


-- Exercício 8
select nome_personagem, vida from personagens 
where vida > 100;
	

-- Exercício 9
select nome_personagem, experiencia from personagens 
where experiencia > 1000;


-- Exercício 10
select nome_personagem, idade from personagens 
where idade < 25;


-- Exercício 11
select item from mercado;


-- Exercício 12
select item, preco from mercado;


-- Exercício 13
select * from mercado
order by preco asc;


-- Exercício 14
select * from mercado
where preco > 1000;


-- Exercício 15
select * from mercado
where preco < 500;


-- Exercício 16
SELECT MAX(preco) AS maior_preco FROM mercado;

-- Exercício 17
select * from mercado
order by preco asc
limit 1;


-- Exercício 18
select * from mercado
where item = 'Mouse Gamer';


-- Exercício 19
select * from mercado
where preco between 200 and 500;


-- Exercício 20
select item, preco from mercado
order by item asc;
