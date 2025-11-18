use informatica;

-- Inserir 1 registro
insert into cliente(nome, email, data_nascimento, limite_credito) values 
				   ('Marcos', 'marcos@email.com', '1991-01-05', 800);
                   
insert into cliente (nome) values ('Pedro');

-- Inserir multiplos registros (Mais eficiente)
insert into cliente(nome, email, data_nascimento, limite_credito) values
				   ('Ana', 'ana@email.com', '1980-05-28', 10000),
                   ('João', 'joao@email.com', '1995-10-14', 5500);
                   
-- Inserir registro sem especificar os campos
insert into cliente values (null, 'Thiago', 'thiago@email.com', '1995-08-20', 4600, null, true, 1)