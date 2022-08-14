CREATE TABLE `eshop-db`.`books` (
  `bookid` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `author` VARCHAR(45) NULL,
  `category` VARCHAR(45) NULL,
  `price` DOUBLE NULL,
  PRIMARY KEY (`bookid`),
  UNIQUE INDEX `title_UNIQUE` (`title` ASC) VISIBLE);

insert into `eshop-db`.`books` values(1,'Head First Java','Cathy','Java SE',500);
insert into  `eshop-db`.`books` values(2,'Head First EJB','Cathy','Java EE',600);
insert into  `eshop-db`.`books` values(3,'Struts In Action','Chad','Java EE',550);
insert into  `eshop-db`.`books` values(4,'Inside XML','Tim','XML',450);
insert into  `eshop-db`.`books` values(5,'ASP.NET','Rob','.NET',500);
commit;

SELECT * FROM `eshop-db`.books;
//----------------------
CREATE TABLE `eshop-db`.`customers` (
  `custid` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `deposit_amt` DECIMAL(10,2) NULL,
  `reg_date` DATETIME NULL,
  `role` VARCHAR(45) NULL,
  PRIMARY KEY (`custid`));

insert into `eshop-db`.`customers` values(1,'rama','1234','rama@gmail',1500,Date('2010-01-12'),'admin');
insert into `eshop-db`.`customers` values(2,'Kiran','123','Kir@gmail',1200,Date('2013-07-19'),'customer');
insert into `eshop-db`.`customers` values(3,'Shekhar','1235','Shek@gmail',1800,Date('2014-10-11'),'customer');
commit;
SELECT * FROM `eshop-db`.customers;