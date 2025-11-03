use informatica;

show create table cliente;

desc cliente;

-- Alterações básicas de adição e remoção de coluna
alter table cliente add column endereco varchar(255);
alter table cliente add cidade varchar(255);
alter table cliente drop endereco;
alter table cliente add unique (email);

-- Alterações básicas de coluna existente
ALTER TABLE cliente MODIFY nome VARCHAR(150);
ALTER TABLE cliente CHANGE nome nome_completo VARCHAR(255);
ALTER TABLE cliente ALTER cidade SET DEFAULT 'Não Informado';

-- Alterações de chaves
alter table cliente modify id_cliente int;
alter table cliente drop primary key;
alter table cliente add primary key (id_cliente);

create table produto (id_produto int primary key);
alter table cliente add foreign key (id_produto) references produto(id_produto);

-- Renomear tabela
alter table cliente rename to clientes_antigos;

-- Exclusão de tabelas
drop table clientes_antigos; # não utilizar
drop table if exists clientes_antigos;