/*Use o banco de dados restaurante*/
use restaurante;

/*Calcule a quantidade de pedidos*/
select count(*) from pedidos;

/*Calcule a quantidade de clientes únicos que realizaram pedidos*/
select count(id_cliente) from pedidos;

/*Calcule a média de preço dos produtos*/
select avg(preco) from produtos;

/*Calcule o mínimo e máximo do preço dos produtos*/
select min(preco) from produtos;
select max(preco) from produtos;

/*Selecione o nome e o preço do produto e faça um rank dos 5 produtos mais caros*/
select nome, preco, row_number() over (order by preco) as ranking_preco from produtos limit 5;

/*Selecione a média dos preços dos produtos agrupados por categoria*/
select categoria ,avg(preco) 
from produtos 
group by categoria;

/*Selecionar o fornecedor e a quantidade de produtos que vieram daquele fornecedor da informações de produtos*/
select fornecedor, count(fornecedor) as quantidade_produtos 
from info_produtos 
group by fornecedor;

/*Selecionar os fornecedores que possuem mais de um produto cadastrado*/
select fornecedor, count(fornecedor) as quantidade_produtos 
from info_produtos 
group by fornecedor
having count(fornecedor) > 1 ;

/*Selecionar os clientes que realizaram apenas 1 pedido*/
select id_cliente, count(*) as total_pedidos
from restaurante.pedidos
group by id_cliente
having count(*) =1 ;