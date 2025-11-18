use restaurante;

select * from info_produtos;

select distinct p.id_produtos as 'Num Pedido',
				p.nome as 'Nome Pedido',
                ip.ingredientes as 'Ingredientes'
from produtos p
left join info_produtos ip 
on p.id_produtos = ip.id_produtos;

select * from pedidos;

select pe.id_cliente as 'Num Pedido',	
	   pe.quantidade as 'Quantidade',
       pe.data_pedido as 'Data Pedido',
       c.nome as 'Nome Cliente',
       c.email as 'Email Cliente'
from pedidos pe
left join clientes c
on pe.id_cliente = c.id_clientes;

select p.id_pedido as 'Num Pedido',
	   p.quantidade as 'Quantidade',
       p.data_pedido as 'Data Pedido',
       c.nome as 'Nome Cliente',
       c.email as 'Email Cliente',
       f.nome as 'Nome Funcionario'
from pedidos p 
left join clientes c
on p.id_cliente = c.id_clientes
left join funcionarios f
on p.id_funcionarios = f.id_funcionarios;

select * from pedidos;

select p.id_produtos as 'Num Pedido',
	   p.quantidade as 'Quantidade',
       p.data_pedido as 'Data do Pedido',
       c.nome as 'Nome Cliente',
       c.email as 'Email Cliente',
       f.nome as 'Funcionario Nome',
       pr.nome as 'Nome Produto',
       pr.preco as 'Preco Produto'
from pedidos p
left join clientes c
on p.id_cliente = c.id_clientes
left join funcionarios f
on p.id_funcionarios = f.id_funcionarios
left join produtos pr
on p.id_produtos = pr.id_produtos;

select c.nome as 'Nome Cliente'
from pedidos p
left join clientes c
on p.id_cliente = c.id_clientes
where status like 'Pendente'
order by p.id_pedido desc;

select * 
from clientes c 
left join pedidos p
on c.id_clientes = p.id_cliente
where c.id_clientes is null;

select c.nome as 'Nome do Cliente',
		count(c.id_clientes) as 'Quantidade de Pedidos'
from pedidos p 
left join clientes c
on p.id_cliente = c.id_clientes
group by c.id_clientes;

select * from produtos;

select p.id_pedido as 'Num Pedido',
	   sum(p.quantidade*pr.preco) as 'Preço Total'
from pedidos p
left join produtos pr
on p.id_produtos = pr.id_produtos
group by id_pedido;