-- Altera��es do Banco de Dados.
--tabela Login
CREATE TABLE login(
codigo bigint AUTO_INCREMENT,
nome varchar(30) NOT NULL,
usuario varchar(10)NOT NULL,
senha varchar(36)NOT NULL,
PRIMARY KEY (codigo)
)