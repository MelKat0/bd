CREATE DATABASE bd_clientes_1e;
USE bd_clientes_1e;

CREATE TABLE tbl_clientes2 (
id int not null primary key auto_increment,
nome varchar(100) not null,
idade int not null,
sexo char(1) not null,
email varchar(100) not null,
telefone varchar(15) not null,
endereco varchar(255) not null
);

insert into tbl_clientes2(nome,idade,sexo,email,telefone,endereco)
values
	("Melissa",17,"F","melsakdc@gmail.com","(15)99705998","Itapetininga"),
	("Veronica",17,"F","veron@gmail.com","(55)99676786","SP"),
	("Alberto",72,"M","alberto@gmail.com","(55)99554984","SP"),
	("Luzia",12,"F","luzia@gmail.com","(55)98987654","Curitiba"),
	("Márcio",55,"M","marcio@gmail.com","(55)99430988","Belo Horizonte");
        
SELECT * FROM tbl_clientes2;

DELIMITER $$
CREATE PROCEDURE sp_maiores_18(IN opcao INT)
    BEGIN
    IF opcao = 0 THEN
    SELECT * FROM tbl_clientes2 WHERE idade >= 18;
    ELSEIF opcao = 1 THEN
    SELECT * FROM tbl_clientes2 WHERE idade < 18;
    END IF;
	END $$
DELIMITER ;

drop procedure sp_maiores_18;

#LISTA MAIORES DE 18
CALL sp_maiores_18 (0);
#LISTA MENORES 18
CALL sp_maiores_18(1);