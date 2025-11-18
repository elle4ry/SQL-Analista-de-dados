-- Funções de agregação

select * from cliente limit 10;
select * from produto limit 10;
select * from pedido limit 20;

select count(*) from pedido; -- contar todos registros (até null)
select count(quantidade) from pedido; -- conta todos que tem valore preenchido na coluna
select count(id_pedido) from pedido;
select count(distinct id_cliente) from pedido; -- contando registros unicos

select sum(quantidade) from pedido; -- somando quantidade de pedidos
select avg(quantidade) from pedido; -- media entre a quantidade de pedidos

select max(preco) from produto; -- maximo entre os precos
select min(preco) from produto; -- minimo entre os precos

select var_pop(preco) from produto; -- variancia populacional = variance()
select var_samp(preco) from produto; -- variancia amostral | perte dos dados

select stddev(preco) from produto; -- desvio padrão = stddev_pop; devio padrão amostral stddev_samp

select group_concat(quantidade) from pedidos;
select group_concat(distinct quantidade) from pedidos;

select nome, preco, rank () over (order by preco) as ranking_preco from produto;
select nome, preco, row_number() over (order by preco) as ranking_preco from produto; 
select nome, preco, dense_rank() over (order by preco) as ranking_preco from produto; 
select distinct nome, preco, dense_rank() over (order by preco) as ranking_preco from produto; 
