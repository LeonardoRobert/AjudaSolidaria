CREATE DATABASE IF NOT EXISTS ajuda_solidaria;
USE ajuda_solidaria;

CREATE TABLE doadores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    contato VARCHAR(50),
    endereco VARCHAR(150)
);

CREATE TABLE itens (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_item VARCHAR(100),
    quantidade INT,
    status ENUM('Disponível', 'Reservado', 'Entregue'),
    id_doador INT,
    FOREIGN KEY (id_doador) REFERENCES doadores(id)
);

CREATE TABLE solicitacoes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao_necesidade VARCHAR(255),
    status ENUM('Pendente', 'Atendida'),
    id_beneficiario INT
);
