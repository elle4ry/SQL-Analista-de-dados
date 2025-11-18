/*
	Deletando dados
*/

use informatica;

select * from cliente;

-- Deletar 1 registro
delete from cliente where id_cliente = 4;

-- Deletar registro com condições multiplas
delete from cliente where cadastro_ativo = false and limite_credito < 2000;

-- Deletar todos os registros
delete from cliente;

truncate table cliente; #não consegue recuperar os dados