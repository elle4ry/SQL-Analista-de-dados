
use informatica;

create table if not exists cliente (
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
	nome varchar(200) NOT NULL,
    email VARCHAR(100),
    data_nascimento DATE,
    limite_credito DECIMAL(10, 2),
    info_adicionais TEXT,
    cadastro_ativo BOOLEAN DEFAULT 1,
    id_produto INT,
    UNIQUE(email)
) COMMENT='tabela de cliente de informatica' ;

drop table cliente;
