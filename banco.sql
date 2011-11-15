#Cria o banco
CREATE DATABASE hotel_db;
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

CREATE  TABLE `hotel_db`.`cliente_tb` (
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
  PRIMARY KEY (`id`) )
DEFAULT CHARACTER SET = utf8;

#QUARTO:
#PRE�O
#CAF� DA MANH� (bool � incluso ou n�o)
#FRIGOBAR(bool � tem ou n�o)
#BANHEIRA(bool � tem ou n�o)
#N�MERO DE H�SPEDES
i#sRESERVADO(bool)

CREATE  TABLE `hotel_db`.`quarto_tb` (
  `numero` INT NOT NULL,
  `preco` DOUBLE NOT NULL ,
  `cafe` TINYINT(1)  NOT NULL ,
  `frigobar` TINYINT(1)  NOT NULL ,
  `banheira` TINYINT(1)  NOT NULL ,
  `numeroHospedes` INT NOT NULL ,
  `nome` VARCHAR(45) NOT NULL ,
PRIMARY KEY (`id`) )
DEFAULT CHARACTER SET = utf8;




#RESERVA:
#CHECK-IN
#CHECK-OUT
#*QUARTO
# ARRUMAR ESSA TABLE!!!!!!


CREATE  TABLE `hotel_db`.`reserva_tb` (
  `reserva_id` INT NOT NULL ,
  `reserva` DATE NULL ,
  `periodoDias` INT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_quarto` (`id` ASC) ,
  CONSTRAINT `fk_quarto`
    FOREIGN KEY (`id` )
    REFERENCES `hotel_db`.`quarto_tb` (`id` ))
DEFAULT CHARACTER SET = utf8;

