-- Projeto acadêmico | Matheus Macêdo Felicio
SET NAMES utf8mb4;

USE SENAIAgile;

-- Exercício 31
create view vw_personagens_completo as
select
p.id_personagem,
p.nome_personagem,
p.idade,
p.vida,
p.experiencia,
p.token,
c.nome_classe as classe,
t.nome_curso as tipoCurso,
n.nome_nivel as nivel
from personagens p
join classe c on p.classe_id = c.id_classe
join tipoCurso t on p.tipoCurso_id = t.id_curso
join nivel n on p.nivel_id = n.id_nivel;


-- Exercício 32
select * from vw_personagens_completo;


-- Exercício 33
create view vw_ranking_token as
select p.nome_personagem, c.nome_classe as classe, n.nome_nivel as nivel, p.token
from personagens p
join classe c on p.classe_id = c.id_classe
join nivel n on p.nivel_id = n.id_nivel
order by p.token desc;
select * from vw_ranking_token;


-- Exercício 34
create view vw_ranking_logica as
select p.nome_personagem, c.nome_classe as classe, p.logica
from personagens p
join classe c on p.classe_id = c.id_classe
order by p.logica desc;
select * from vw_ranking_logica;


-- Exercício 35
create view vw_ranking_destreza as
select p.nome_personagem, c.nome_classe as classe, p.destreza
from personagens p
join classe c on p.classe_id = c.id_classe
order by p.destreza desc;
select * from vw_ranking_destreza;


-- Exercício 36
create view vw_personagens_sub25 as
select p.nome_personagem, p.idade, c.nome_classe as classe, n.nome_nivel as nivel
from personagens p
join classe c on p.classe_id = c.id_classe
join nivel n on p.nivel_id = n.id_nivel
where p.idade < 25;
select * from vw_personagens_sub25;


-- Exercício 37
create view vw_mercado_premium as
select item, preco, vida, experiencia, cognicao, manuseio, emocao, logica, destreza
from mercado
where preco > 1000;
select * from vw_mercado_premium;


-- Exercício 38
create view vw_mercado_economico as
select item, preco
from mercado
where preco < 500
order by preco asc;
select * from vw_mercado_economico;


-- Exercício 39
create view vw_qtd_por_classe as
select c.nome_classe, count(*) as quantidade
from personagens p
join classe c on p.classe_id = c.id_classe
group by c.nome_classe;
select * from vw_qtd_por_classe;


-- Exercício 40
create view vw_qtd_por_nivel as
select n.nome_nivel, count(*) as quantidade
from personagens p
join nivel n on p.nivel_id = n.id_nivel
group by n.nome_nivel;
select * from vw_qtd_por_nivel;
