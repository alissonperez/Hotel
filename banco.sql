#Cria o banco
drop database hotel_db ;
CREATE DATABASE hotel_db;

# Cria��o da tabela hot�is
CREATE TABLE `hotel_db`.`hoteis_tb` (
	`hotel_id` int not null AUTO_INCREMENT ,
	`nome` varchar(255) ,
	primary key ( `hotel_id` )
)
DEFAULT CHARACTER SET = utf8 ;

#NOME
#TELEFONE
#ENDERE�O
#EMAIL
#CEP
#CLIENTE:
#PA�S
#ESTADO
#CIDADE
#TIPO DO CARTAO (VISA, MASTER, AMEX)
#No. CART�O
#EXPIRA EM:
CREATE  TABLE `hotel_db`.`clientes_tb` (
  `cliente_id` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(100) ,
  `endereco` VARCHAR(100) ,
  `telefone` VARCHAR(45) ,
  `cidade` VARCHAR(45) ,
  `cep` VARCHAR(45) ,
  `estado` VARCHAR(45) ,
  `pais` VARCHAR(45) ,
  `email` VARCHAR(45) ,
  `tipoCartao` VARCHAR(45)  ,
  `numeroCartao` VARCHAR(45) ,
  `validadeCartao` VARCHAR(45) ,
  `cliente_tbcol` VARCHAR(45) ,
  PRIMARY KEY (`cliente_id`) )
DEFAULT CHARACTER SET = utf8 ;

#QUARTO:
#PRE�O
#CAF� DA MANH� (bool � incluso ou n�o)
#FRIGOBAR(bool � tem ou n�o)
#BANHEIRA(bool � tem ou n�o)
#N�MERO DE H�SPEDES
#sRESERVADO(bool)

CREATE  TABLE `hotel_db`.`quartos_tb` (
  `quarto_id` INT NOT NULL AUTO_INCREMENT ,
  `hotel_id` int not null ,
  `preco` DOUBLE NOT NULL ,
  `frigobar` enum('yes', 'no') default 'yes' ,
  `banheira` enum('yes', 'no') default 'no' ,
  `numero_hospedes` INT NOT NULL ,
  `tipo` VARCHAR(45) NOT NULL ,
   PRIMARY KEY (`quarto_id`) ,
   FOREIGN KEY (`hotel_id`) references hoteis_tb(hotel_id) )
DEFAULT CHARACTER SET = utf8 ;

#RESERVAs:
# CHECK-IN
# CHECK-OUT
#*QUARTO
# ARRUMAR ESSA TABLE!!!!!!
CREATE  TABLE `hotel_db`.`reservas_tb` (
  `reserva_id` INT NOT NULL AUTO_INCREMENT ,
  `hotel_id` int not null ,
  `cliente_id` int not null ,
  `quarto_id` int not null ,
  `check_in` DATE NULL ,
  `check_out` date null ,
  `cafe` enum('yes', 'no') default 'no' ,
  PRIMARY KEY (`reserva_id`) ,
  FOREIGN KEY (`cliente_id`) references clientes_tb(cliente_id) ,
  FOREIGN KEY (`hotel_id`) references hoteis_tb(hotel_id) ,
  FOREIGN KEY (`quarto_id`) references quartos_tb(quarto_id))
DEFAULT CHARACTER SET = utf8 ;