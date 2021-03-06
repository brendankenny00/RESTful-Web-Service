create database kennyscars_db;

use kennyscars_db;


CREATE TABLE `cars` (
  `CAR_ID` int(11) NOT NULL AUTO_INCREMENT,
 
 `MAKE` char(14) DEFAULT NULL,
  `MODEL` char(14) DEFAULT NULL,
 
 `YEAR` char(14) DEFAULT NULL,
  `MILLEAGE` char(14) DEFAULT NULL,
  
`NCT` date DEFAULT NULL,
  `COLOUR` char(14) DEFAULT NULL,
 
 `ENGINE_SIZE` char(14) DEFAULT NULL,
  
`TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
PRIMARY KEY (`CAR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;



INSERT INTO CARS VALUES (0001,'TOYOTA', 'CORROLLA','2009', '217000', '2016-01-10', 'GREEN', '1.2', '2016-01-10' );

INSERT INTO CARS VALUES (0002,'AUDI', 'A4','2003', '195000', '2017-01-12', 'BLUE', '1.4','2016-01-11');

INSERT INTO CARS VALUES (0003,'SUBARU', 'IMPREZA','2010', '195000', '2016-01-10', 'GREEN', '1.2', '2016-02-10');

INSERT INTO CARS VALUES (0004,'TALBOT', 'SOLARA','1981', '256200', '2016-05-08', 'RED', '1.6', '2016-03-10');

INSERT INTO CARS VALUES (0005,'LEXUS', 'IS250','2009', '57000', '2016-04-10', 'BLUE', '1.2', '2016-04-10');