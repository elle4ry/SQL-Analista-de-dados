create database restaurante;

use restaurante;

create table if not exists funcionarios (
	id_funcionarios INT AUTO_INCREMENT PRIMARY KEY,
	nome varchar(255) NOT NULL,
    cpf varchar(14) NOT NULL,
    data_nascimento DATE,
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    email VARCHAR(100),
    cargo VARCHAR(100),
    salario DECIMAL(10,2),
    data_admissao DATE
) COMMENT='tabela de funcionarios' ;

create table if not exists clientes (
	id_clientes INT AUTO_INCREMENT PRIMARY KEY,
	nome varchar(255) NOT NULL,
    cpf varchar(14) NOT NULL,
    data_nascimento DATE,
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    email VARCHAR(100),
    data_cadastro DATE
) COMMENT='tabela de clientes' ;

create table if not exists produtos (
	id_produtos INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255),
    descricao TEXT,
    preco DECIMAL(10,2),
    categoria VARCHAR(100)
) COMMENT='tabela de produtos' ;

SHOW VARIABLES LIKE '%safe_updates%';

set sql_safe_updates= 0;

drop table pedidos;

select * from produtos;

create table if not exists pedidos (
	id_pedido INT AUTO_INCREMENT PRIMARY KEY,
	id_cliente INT,
    id_funcionarios INT,
    id_produtos INT,
	quantidade INT,
    data_pedido DATE,
    status VARCHAR(50),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_clientes),
    FOREIGN KEY (id_funcionarios) REFERENCES funcionarios(id_funcionarios),
    FOREIGN KEY (id_produtos) REFERENCES produtos(id_produtos)
) COMMENT='tabela de pedidos' ;

drop table info_produtos;

create table if not exists info_produtos (
	id_info INT AUTO_INCREMENT PRIMARY KEY,
	id_produtos INT,
    ingredientes TEXT,
    fornecedor VARCHAR(255),
    FOREIGN KEY (id_produtos) REFERENCES produtos(id_produtos)
) COMMENT='tabela de informações pedidos' ;

delete from produtos;