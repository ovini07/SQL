create database bd_teste_1e;
CREATE TABLE tbusuarios (
    iduser integer PRIMARY KEY,
    usuario VARCHAR(50),
    login VARCHAR(20),
    senha VARCHAR(20),
    perfil VARCHAR(20)
    );
CREATE TABLE pessoa (
    id INT PRIMARY KEY,
    bi VARCHAR(45),
    nome VARCHAR(45),
    data_nasc DATE,
    telefone VARCHAR(45),
    email VARCHAR(45),
    morada VARCHAR(45)
);
CREATE TABLE tbfuncionario (
    idfunc INT ,
    Nome VARCHAR(50),
    Registro INT PRIMARY KEY,
    Guerra VARCHAR(30),
    Gerencia VARCHAR(20),
    Det VARCHAR(20),
    Turno VARCHAR(10),
    Cargo VARCHAR(30),
    Atividade VARCHAR(50),
    Funcao VARCHAR(30),
    Vinculo VARCHAR(30),
    Situacao VARCHAR(30)
);
describe tbfuncionarios;
describe pessoa;

drop table tbusuarios;
ALTER TABLE tbfuncionario RENAME TO tbfuncionarios;
ALTER TABLE tbfuncionarios RENAME COLUMN Guerra TO area;
ALTER TABLE tbfuncionarios RENAME COLUMN Turno TO turno;
ALTER TABLE tbfuncionarios RENAME COLUMN Funcao TO funcao;

ALTER TABLE pessoa RENAME COLUMN data_nasc TO datanascimento;
ALTER TABLE pessoa DROP COLUMN morada;