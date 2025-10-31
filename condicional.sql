
use restaurante;

select * from pedidos where id_funcionarios = 4 and status = 'Pendente';

select * from pedidos where status != 'Concluído';

select * from pedidos where id_pedido in (1,3,5,7,8);

select * from clientes where nome like 'C%';

select * from info_produtos where ingredientes like '%carne%' or '%frango%';

select * from produtos where preco between 20 and 30;

update pedidos
set status = null
where id_pedido = 6;

select * from pedidos where status = null;

select nome, cargo, IF(salario > 3000, 'Acima da média', 'Abaixo da média' ) as media_salario from funcionarios;