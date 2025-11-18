-- RIGHT OUTER JOIN: visualizar todos os pedidos, incluindo aqueles sem clientes
select c.nome, pe.id_pedido
from cliente c
right join pedido pe on c.id_cliente = pe.id_cliente;

-- LEFT OUTER JOIN: visualizar clientes sem pedidos
select c.*, pe.*
from cliente c
left join pedido pe on c.id_cliente = pe.id_cliente
where pe.id_pedido is null;

-- LEFT OUTER JOIN: visualizar todos os clientes, com seus pedidos e preocutos, incluindo aqueles sem pedidos e produtos
select c.nome, pe.id_pedido, p.nome as produto
from cliente c
left join pedido pe on c.id_cliente = pe.id_cliente
left join produto p on pe.id_produto = p.id_produto;

-- calcula o total gasto por cada cliente em seus pedidos
select c.nome, sum(p.preco * pe.quantidade) as total_gasto
from cliente c
inner join pedido pe on c.id_cliente = pe.id_cliente
inner join produto p on pe.id_produto = p.id_produto
group by c.nome;

-- visualiza quais clientes não gastaram em seus pedidos (que pode ser um erro na compra)
select c.nome, sum(p.preco * pe.quantidade) as total_gasto
from cliente 
left join produto pe on c.id_cliente = pe.id_cliente
left join produto p on pe.id_produto = p.id_produto
where p.preco is null
group by c.nome;
