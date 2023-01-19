CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;
CREATE TABLE tb_categoria_curso (
id BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR (255),
tempo_curso VARCHAR(255),
PRIMARY KEY (id)
);

CREATE TABLE tb_cursos(
id_cursos BIGINT AUTO_INCREMENT,
curso VARCHAR(255),
instituicao VARCHAR(255),
cidade VARCHAR (255),
disponibilidade CHAR,
quantidade_alunos int,
categoria_id BIGINT,

PRIMARY KEY (id_cursos),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria_curso(id)
);

-- tb_categorias
INSERT INTO tb_categoria_curso (nome_categoria, tempo_curso)
VALUE ("Pessoa Desenvolvedora","2 anos");

INSERT INTO tb_categoria_curso (nome_categoria, tempo_curso)
VALUE ("Front end","2 anos");

INSERT INTO tb_categoria_curso (nome_categoria, tempo_curso)
VALUE ("Back end","2 anos");

INSERT INTO tb_categoria_curso (nome_categoria, tempo_curso)
VALUE ("Banco de Dados","2 anos");

INSERT INTO tb_categoria_curso (nome_categoria, tempo_curso)
VALUE ("Design","2 anos");

SELECT * FROM tb_categoria_curso;

-- tb_cursos
INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("Java Full Stack Junior", "Generation","São Paulo", "S",40,1);

INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("Java Full Stack Pleno", "Generation","São Paulo","S",40,1);

INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("JavasScript Junior", "Generation","Bahia","N",40,2);

INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("Html/Css/Js", "Generation","São Paulo","N",25,2);

INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("Java/ Phyton", "Generation","Ceará","S",20,3);

INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("C#/ Ruby", "Generation","Amazonas","N",40,3);

INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("JMySql", "Generation","Paraíba","S",40,4);

INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("MariaDB", "Generation","Alagoas","N",15,4);

INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("Photoshop", "Generation","São Paulo","N",40,5);

INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("Ux/Ui", "Generation","São Paulo","S",40,5);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE quantidade_alunos > 50;
SELECT * FROM tb_cursos WHERE quantidade_alunos < 50;

SELECT * FROM tb_cursos WHERE  curso LIKE "%J";
SELECT * FROM tb_cursos INNER JOIN tb_categoria_curso ON tb_categoria_curso.id = tb_cursos.categoria_id;
SELECT * FROM tb_cursos INNER JOIN tb_categoria_curso ON tb_categoria_curso.id = tb_cursos.categoria_id WHERE nome_categoria LIKE "%Banco de Dados%";




