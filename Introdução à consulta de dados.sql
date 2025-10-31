/*
	Consultando dados
*/

use informatica;

desc clientes;

truncate clientes;

insert into clientes values
			(null, 'Marcos', 'marcos@gmail.com',1991-01-05, 8000.00, null, true, 2);
            
-- selecionar todas as colunas
select * from clientes;

-- selecionar colunas específicas
select nome, email from clientes;

-- criar tabela a partir da seleção de dados (Backup*)
create table backup_clientes as select * from clientes; #não colora restrições da tabela que ele copia

desc clientes;
desc backup_clientes;

-- inserir registros a partir da seleção de dados ()
truncate backup_clientes;
select * from backup_clientes;
insert into backup_clientes select * from clientes;
select * from backup_clientes;

select * from clientes;