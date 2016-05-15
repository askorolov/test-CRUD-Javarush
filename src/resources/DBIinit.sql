CREATE SCHEMA IF NOT EXISTS test  DEFAULT CHARACTER SET utf8;
CREATE DATABASE if NOT EXISTS test DEFAULT CHARACTER SET utf8;
CREATE TABLE IF NOT EXISTS `test`.`USERS` (
  `id` INT(8) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(25) NOT NULL,
  `age` INT NOT NULL,
  `isAdmin` BIT NOT NULL ,
  `createdDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC ),
  PRIMARY KEY (`id`));
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Alexander','28',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Ivan','20',1);
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Olga','25',1);
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Kate','23',0);
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Alexander','28',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Ivan','20',1);
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Olga','25',1);
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Kate','23',0);
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Alexander','28',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Ivan','20',1);
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Olga','25',1);
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Kate','23',0);
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Alexander','28',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Ivan','20',1);
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Olga','25',1);
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Kate','23',0);
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Alexander','28',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Ivan','20',1);
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Olga','25',1);
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Kate','23',0);
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Alexander','28',1 );
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Ivan','20',1);
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Olga','25',1);
INSERT INTO test.USERS  (name,age,isAdmin) VALUES ('Kate','23',0);

