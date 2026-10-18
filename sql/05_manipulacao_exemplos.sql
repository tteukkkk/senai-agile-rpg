-- Projeto acadêmico | Matheus Macêdo Felicio
SET NAMES utf8mb4;

USE SENAIAgile;

-- EXERCÍCIOS ORIGINAIS PARA REVISÃO; não fazem parte da instalação.
-- IDs 11, 21, 23, 25, 31, 32 e 48 não existem na carga fornecida.
-- UPDATE com múltiplos itens não soma todos os itens; requer reimplementação.
-- Há compras sem validação de saldo e DELETEs que removem personagens.
-- Execute apenas comandos escolhidos em uma cópia descartável do banco.

-- Exercício 21
update personagens p, mercado m
set p.token = p.token - m.preco,
    p.experiencia = p.experiencia + m.experiencia,
    p.cognicao = p.cognicao + m.cognicao,
    p.emocao = p.emocao + m.emocao,
    p.logica = p.logica + m.logica
    where p.id_personagem = 25 and m.item = 'Livro TI';
select * from personagens;


-- Exercício 22
update personagens p, mercado m
set p.token = p.token - m.preco,
    p.experiencia = p.experiencia + m.experiencia,
    p.cognicao = p.cognicao + m.cognicao,
    p.emocao = p.emocao + m.emocao,
    p.logica = p.logica + m.logica
	where p.id_personagem = 48 and m.item in ('Paquímeto', 'Monitor Extra');
select * from personagens;



-- Exercício 23
update personagens p, mercado m
set p.token = p.token - m.preco,
    p.experiencia = p.experiencia + m.experiencia,
    p.cognicao = p.cognicao + m.cognicao,
    p.emocao = p.emocao + m.emocao,
    p.logica = p.logica + m.logica
	where p.id_personagem = 32 and m.item in ('Chave Torno', 'Agulha');
select * from personagens;



-- Exercício 24
update personagens p, mercado m
set p.token = p.token - m.preco,
    p.experiencia = p.experiencia + m.experiencia,
    p.cognicao = p.cognicao + m.cognicao,
    p.emocao = p.emocao + m.emocao,
    p.logica = p.logica + m.logica
	where p.id_personagem = 7 and m.item in ('Mouse Gamer','Kit Limpeza');
select * from personagens;



-- Exercício 25
update personagens p, mercado m
set p.token = p.token - m.preco,
    p.experiencia = p.experiencia + m.experiencia,
    p.cognicao = p.cognicao + m.cognicao,
    p.emocao = p.emocao + m.emocao,
    p.logica = p.logica + m.logica
	where p.id_personagem = 10 and m.item in ('Monitor Extra','Cadeira Gamer');
select * from personagens;



-- Exercício 26
update personagens p, mercado m
set p.token = p.token - m.preco,
    p.experiencia = p.experiencia + m.experiencia,
    p.cognicao = p.cognicao + m.cognicao,
    p.emocao = p.emocao + m.emocao,
    p.logica = p.logica + m.logica
	where p.id_personagem in (23, 32) and m.item in ('Kit Chaves Ferramentaria', 'Serra');
select * from personagens;



-- Exercício 27
update personagens p, mercado m
set p.token = p.token - m.preco,
    p.experiencia = p.experiencia + m.experiencia,
    p.cognicao = p.cognicao + m.cognicao,
    p.emocao = p.emocao + m.emocao,
    p.logica = p.logica + m.logica
	where p.id_personagem in (21, 11, 31) and m.item in ('Luva', 'Furadeira', 'Kit Arduino');
select * from personagens;


-- Exercício 28
delete from personagens where experiencia < 5;
select * from personagens;


-- Exercício 29
delete from personagens where token < 1000;
select * from personagens;


-- Exercício 30
select * from personagens;
