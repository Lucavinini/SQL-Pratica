-- cria o banco apenas se não existir
CREATE DATABASE IF NOT EXISTS sqlpratica;

-- seleciona o banco
USE sqlpratica;

-- apenas para verificar onde estamos
SELECT DATABASE();

-- cria a tabela turma
CREATE TABLE IF NOT EXISTS turma (
    id INT PRIMARY KEY,
    entrada DATE
);

-- cria a tabela professor
CREATE TABLE IF NOT EXISTS professor (
    id INT PRIMARY KEY,
    nome VARCHAR(20)
);

-- cria a tabela aluno
CREATE TABLE aluno (
    id INT PRIMARY KEY,
    nome VARCHAR(20),
    idade INT,
    id_turma INT,
    curso VARCHAR(15),
    FOREIGN KEY (id_turma) REFERENCES turma(id)
);
