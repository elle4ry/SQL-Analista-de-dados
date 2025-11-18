use informatica;

select * from cliente limit 10;
select * from produto limit 10;
select * from pedido limit 20;

-- INNER JOIN entre cliente e pedido
select cliente.nome, cliente.email, pedido.id_pedido
from cliente
inner join pedido
on cliente.id_cliente = pedido.id_cliente;

-- INNER JOIN entre pedido e produto
select pedido.id_pedido, produto.nome, produto.preco, pedido.quantidade
from pedido
inner join produto
on pedido.id_produto = produto.id_produto;

-- INNER JOIN entre cliente, pedido e preoduto
select clienete.nome as cliente, produto.nome as produto, produto.preco, pedido.quantidade, pedido.data
from cliente
inner join pedido on cliente.id_cliente = pedido.id_cliente
inner join produto on pedido.id_produto = produto.id_produto