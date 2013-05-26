-- Altera��es do Banco de Dados.
--tabela Login
CREATE TABLE login(
codigo bigint AUTO_INCREMENT,
nome varchar(30) NOT NULL,
usuario varchar(10)NOT NULL,
senha varchar(36)NOT NULL,
PRIMARY KEY (codigo)
)
-- adicionando usuarios com senha md5
INSERT INTO login(nome,senha,usuario) VALUES ('Ivan Simionato',md5('604981'),'ivan');
INSERT INTO login(nome,senha,usuario) VALUES ('Jose Osvaldo',md5('605043'),'osvaldo');
INSERT INTO login(nome,senha,usuario) VALUES ('Larissa Machado',md5('605043'),'larissa');
INSERT INTO login(nome,senha,usuario) VALUES ('Paola Moferdini',md5('605544'),'paola');
INSERT INTO login(nome,senha,usuario) VALUES ('Rafael de Pádua',md5('605515'),'rafael');
INSERT INTO login(nome,senha,usuario) VALUES ('Vanessa Rossi',md5('605329'),'vanessa')


