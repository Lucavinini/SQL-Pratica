-- Aprendendo comandos do tipo DDL --

-- Etapa 1 - (Inicialização)

-- Passo 1: Cria o banco de dados que vai conter as tabelas

CREATE DATABASE IF NOT EXISTS Faculdade_DB; -- (O "IF NOT EXISTS" serve para evitar erros caso o bd já exista)

-- Passo 2: Seleciona o banco de dados para realizar operações sobre ele

USE Faculdade_DB;

-- Etapa 2 - (Comandos)

-- Passo 3: Cria as entidades com seus devidos atributos

-- Cria a tabela Turma, com id sendo chave primária e auto-incrementada e a entrada da turma.

CREATE TABLE IF NOT EXISTS Turma( 
    id INT PRIMARY KEY AUTO_INCREMENT,
    entrada DATE NOT NULL
);

-- Cria a tabela Aluno com seus principais dados e chave estrangeira para a tabela Turma.

CREATE TABLE IF NOT EXISTS Aluno(
    id INT PRIMARY KEY AUTO_INCREMENT,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    nome VARCHAR(30) NOT NULL,
    curso VARCHAR(14) NOT NULL,
    periodo SMALLINT NOT NULL,

    id_turma INT, -- Coluna que vai se conectar Aluno com Turma.
    FOREIGN KEY (id_turma) REFERENCES Turma(id) -- Chave estrangeira. Todo campo id_turma vai receber o valor que tem em Turma(id)
);

CREATE TABLE IF NOT EXISTS Professor(

    ra PRIMARY KEY INT AUTO_INCREMENT;
    nome VARCHAR(30) NOT NULL;
    disciplina VARCHAR(30) NOT NULL;
    sexo VARCHAR(14) NOT NULL;
    id_turma_professor INT;

    FOREIGN KEY (id_turma_professor) REFERENCES Turma(id)

);