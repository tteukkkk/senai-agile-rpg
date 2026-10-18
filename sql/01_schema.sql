-- Projeto acadêmico | Matheus Macêdo Felicio
SET NAMES utf8mb4;

CREATE DATABASE SENAIAgile CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

use SENAIAgile;

-- CRIANÇÃO DAS TABELAS --------------------------------------
create table classe (
	id_classe int auto_increment primary key,
    nome_classe varchar(50)
);

create table tipoCurso (
	id_curso int auto_increment primary key,
    nome_curso varchar(50)
);

create table nivel (
	id_nivel int auto_increment primary key,
    nome_nivel varchar(50)
);

create table personagens (
	id_personagem int auto_increment primary key,
    nome_personagem varchar(50),
    idade int,
    vida int,
    experiencia int, 
    cognicao int,
    manuseio int,
    emocao int,
    logica int,
    destreza int,
    token int,
    classe_id int,
    tipoCurso_id int,
    nivel_id int,
	foreign key (classe_id) references classe(id_classe),
	foreign key (tipoCurso_id) references tipoCurso(id_curso),
	foreign key (nivel_id) references nivel(id_nivel)
);

-- CRIANDO TABELA ADICIONAL ------------------------------------------------------------------------
create table mercado (
	id_mercado int auto_increment primary key,
    item varchar(50),
    preco int,
    vida int,
    experiencia int, 
    cognicao int,
    manuseio int,
    emocao int,
    logica int,
    destreza int
);
