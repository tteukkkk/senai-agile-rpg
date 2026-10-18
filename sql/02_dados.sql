-- Projeto acadêmico | Matheus Macêdo Felicio
SET NAMES utf8mb4;

USE SENAIAgile;

-- INSERTS NAS TABELAS AUXILIARES ---------------------------------------------------
insert into classe (id_classe, nome_classe) values
(1, 'TI'), 
(2, 'Mecânico Auto'),
(3, 'Mecânico Usina'),
(4, 'Solda'),
(5, 'Eletrônica'),
(6, 'Elétrica'),
(7, 'Moda'),
(8, 'Administração'),
(9, 'Refrigeração'),
(10, 'Mecatrônica');

insert into tipoCurso (id_curso, nome_curso) values
(1, 'Técnico'), 
(2, 'CAI'),
(3, 'FIC'),
(4, 'Aprendizagem Industrial'),
(5, 'Qualificação'),
(6, 'Aperfeiçoamento'),
(7, 'Especialização'),
(8, 'Graduação'),
(9, 'Pós-Graduação'),
(10, 'Extensão');

insert into nivel (id_nivel, nome_nivel) values
(1, 'Iniciante'), 
(2, 'Intermediário'),
(3, 'Avançado'),
(4, 'Especialista'),
(5, 'Mestre'),
(6, 'Lenda'),
(7, 'Aprendiz'),
(8, 'Veterano'),
(9, 'Sênior'),
(10, 'Grão-Mestre');

-- INSERTS NAS TABELA PRINCIPAL ---------------------------------------------------
insert into personagens (id_personagem, nome_personagem, idade, vida, experiencia, cognicao, manuseio, emocao, logica, destreza, token, classe_id, tipoCurso_id, nivel_id) values
(1, 'Marianne', 17, 80, 8, 10, 7, 9, 7, 7, 1000, 1, 1, 2),
(2, 'Kauan', 16, 80, 9, 10, 8, 9, 8, 8, 1000, 1, 1, 2),
(3, 'Rafaela', 18, 80, 8, 9, 9, 9, 8, 6, 900, 2, 2, 3),
(4, 'Kéfelyn', 17, 80, 2, 10, 7, 9, 7, 7, 900, 3, 3, 4),
(5, 'Thayná', 17, 80, 5, 5, 10, 2, 8, 4, 800, 4, 4, 5),
(6, 'Kamilli', 18, 80, 7, 2, 8, 5, 2, 1, 800, 5, 5, 6),
(7, 'Laura', 17, 80, 3, 10, 5, 1, 2, 2, 700, 6, 6, 7),
(8, 'Beatriz', 17, 80, 10, 2, 2, 8, 5, 5, 700, 7, 7, 8),
(9, 'Ana Clara', 17, 80, 4, 9, 8, 4, 5, 8, 600, 8, 8, 9),
(10, 'Heloisa', 18, 80, 1, 3, 2, 2, 3, 5, 600, 9, 9, 10);

insert into mercado (item, preco, vida, experiencia, cognicao, manuseio, emocao, logica, destreza) values
('Óculos de Proteção', 200, 2, 1, 1, 0, 0, 0, 0),
('Botas', 250, 5, 3, 0, 1, 0, 0, 1),
('Máscara Usina', 250, 2, 0, 0, 0, 1, 0, 0),
('Cadeira Gamer', 1250, 0, 0, 2, 0, 1, 0, 0),
('Cadeado Computador', 100, 0, 0, 0, 0, 0, 1, 0),
('Mouse Gamer', 2500, 0, 0, 1, 2, 0, 0, 1),
('Monitor Extra', 5000, 0, 0, 2, 0, 0, 1, 0),
('Fio de Cobre', 50, 0, 0, 0, 1, 0, 0, 0),
('Tubulação Alumínio', 100, 0, 0, 0, 1, 0, 0, 0),
('Chave Torno', 100, 0, 0, 1, 2, 0, 0, 0),
('Chave Estrela', 250, 0, 0, 1, 2, 0, 0, 0),
('Luva', 225, 1, 0, 0, 1, 1, 0, 0),
('Avental', 350, 1, 0, 0, 0, 1, 0, 0),
('Compressor de Ar', 800, 0, 0, 0, 1, 0, 1, 0),
('Kit Limpeza', 900, 0, 0, 0, 0, 0, 1, 0),
('Paquímetro', 50, 0, 0, 1, 1, 0, 1, 0),
('Lubrificante', 10, 0, 0, 0, 0, 0, 1, 0),
('Furadeira', 1500, 0, 0, 0, 2, 0, 1, 1),
('Kit Chaves Ferramentaria', 2000, 0, 0, 0, 2, 0, 0, 1),
('Tecido', 460, 0, 0, 0, 1, 0, 0, 1),
('Máquina de Costura', 2500, 0, 0, 1, 1, 1, 0, 1),
('Linha', 10, 0, 0, 0, 1, 0, 0, 0),
('Agulha', 15, 0, 0, 1, 1, 0, 0, 1),
('Serra', 1750, 0, 0, 1, 2, 0, 0, 1),
('Lâmpada', 50, 0, 0, 1, 0, 0, 0, 0),
('Máquina de Ar Condicionado', 4500, 0, 0, 1, 0, 1, 1, 0),
('Kit Arduino', 2500, 0, 0, 1, 1, 0, 2, 0),
('LED', 50, 0, 0, 0, 0, 0, 1, 0),
('Kit Cabos Eletrônicos', 150, 0, 0, 0, 1, 0, 0, 0),
('Kit Componentes Eletrônicos', 600, 0, 0, 1, 1, 0, 1, 0),
('Livro TI', 10000, 0, 1, 2, 0, 1, 2, 0),
('Livro Mecânico Auto', 10000, 0, 1, 2, 0, 1, 1, 0),
('Livro Mecânico Usina', 10000, 0, 1, 2, 0, 1, 1, 0),
('Livro Solda', 10000, 0, 1, 2, 0, 1, 1, 0),
('Livro Eletrônica', 10000, 0, 1, 2, 0, 1, 2, 0),
('Livro Elétrica', 10000, 0, 1, 2, 0, 1, 1, 0),
('Livro Moda', 10000, 0, 1, 2, 0, 1, 1, 0),
('Livro Administração', 10000, 0, 1, 2, 0, 1, 1, 0),
('Livro Refrigeração', 10000, 0, 1, 2, 0, 1, 1, 0);
