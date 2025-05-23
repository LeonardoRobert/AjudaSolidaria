-- Arquivo: database/schema.sql

-- Se estiver usando MySQL, use a linha abaixo para criar o banco de dados
CREATE DATABASE IF NOT EXISTS AjudaSolidaria CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Use o banco de dados recém-criado ou existente
USE AjudaSolidaria;

-- Tabela para Doadores
CREATE TABLE IF NOT EXISTS Doadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    contato VARCHAR(255),
    endereco VARCHAR(255),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela para Beneficiarios
CREATE TABLE IF NOT EXISTS Beneficiarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    contato VARCHAR(255),
    endereco VARCHAR(255),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela para OrganizacoesSociais
CREATE TABLE IF NOT EXISTS OrganizacoesSociais (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    contato VARCHAR(255),
    endereco VARCHAR(255),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela para Itens de Doação
CREATE TABLE IF NOT EXISTS Itens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_item VARCHAR(255) NOT NULL,
    quantidade INT NOT NULL,
    status ENUM('Disponível', 'Reservado', 'Entregue') DEFAULT 'Disponível',
    id_doador INT NOT NULL,
    data_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_doador) REFERENCES Doadores(id) ON DELETE CASCADE
);

-- Tabela para Solicitações de Ajuda
CREATE TABLE IF NOT EXISTS Solicitacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao_necessidade TEXT NOT NULL,
    status ENUM('Pendente', 'Atendida') DEFAULT 'Pendente',
    id_beneficiario INT NOT NULL,
    data_solicitacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_beneficiario) REFERENCES Beneficiarios(id) ON DELETE CASCADE
);

-- Tabela opcional: Ligação para registrar atendimentos (se um item pode atender várias solicitações, ou vice-versa)
-- Isso seria uma tabela N:M entre Itens e Solicitacoes
-- CREATE TABLE IF NOT EXISTS Atendimentos (
--     id_item INT NOT NULL,
--     id_solicitacao INT NOT NULL,
--     data_atendimento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     PRIMARY KEY (id_item, id_solicitacao),
--     FOREIGN KEY (id_item) REFERENCES Itens(id) ON DELETE CASCADE,
--     FOREIGN KEY (id_solicitacao) REFERENCES Solicitacoes(id) ON DELETE CASCADE
-- );

-- Tabela opcional: Para registrar eventos ou campanhas organizadas por Organizações Sociais
-- CREATE TABLE IF NOT EXISTS Eventos (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     nome_evento VARCHAR(255) NOT NULL,
--     descricao TEXT,
--     data_evento DATETIME,
--     local_evento VARCHAR(255),
--     id_organizacao_social INT NOT NULL,
--     data_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     FOREIGN KEY (id_organizacao_social) REFERENCES OrganizacoesSociais(id) ON DELETE CASCADE
-- );
