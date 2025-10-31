use restaurante;

select * from produtos;

select nome, categoria from produtos where preco > 30;

select nome, telefone, data_nascimento from clientes where data_nascimento > '1980-12-31';

select id_produtos, ingredientes from info_produtos where ingredientes like '%carne%';

select nome, categoria from produtos order by categoria asc, nome asc;

select nome from produtos order by preco desc limit 5;

select nome from produtos order by nome limit 2 offset 5;

SELECT * INTO backup_pedidos FROM pedidos;

