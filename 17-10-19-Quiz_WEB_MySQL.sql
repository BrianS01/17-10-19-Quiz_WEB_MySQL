drop database if exists BasesQuizEsquema;
create database BasesQuizEsquema;
use BasesQuizEsquema;

CREATE TABLE BasesQuizEsquema.`Squemas`
(
	`Squemaid` int(11) NOT NULL AUTO_INCREMENT,
	`firstname` varchar(45) DEFAULT NULL,
	PRIMARY KEY(`Squemaid`)
);


CREATE TABLE BasesQuizEsquema.`tabla`
(
	`tablaid` int(11) NOT NULL AUTO_INCREMENT,
	`esquemaid` int(11) NOT null,
	`firstname` varchar(45) DEFAULT NULL,
	PRIMARY KEY(`tablaid`),
	FOREIGN KEY(esquemaid) REFERENCES squemas(Squemaid)
);


CREATE TABLE BasesQuizEsquema.`columnas`
(
	`columnaid` int(11) NOT NULL AUTO_INCREMENT,
	`tablaid1` int(11) NOT null,
	`firstname` varchar(45) DEFAULT NULL,
	PRIMARY KEY (`columnaid`),
    FOREIGN KEY (tablaid1) REFERENCES tabla(tablaid)
);


CREATE TABLE BasesQuizEsquema.`FOREIGN KEY`
(
	`forgeinid` int(11) NOT NULL AUTO_INCREMENT,
    `firstname` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`forgeinid`)
);


create table BasesQuizEsquema.`unidad`
(
	`idUnidad` int(11) NOT NULL AUTO_INCREMENT,
    primary key(`id`)
);


create table BasesQuizEsquema.`contexto`
(
	`idContexto` int(11) NOT NULL AUTO_INCREMENT,
    `idUnidad` int(11) NOT NULL,
    primary key(`id`),
    foreign key(idUnidad) references unidad(idUnidad)
);


create table BasesQuizEsquema.`modelo`
(
	`idModelo` int(11) NOT NULL AUTO_INCREMENT,
    `idUnidad` int(11) NOT NULL,
    primary key(`id`),
    foreign key(idUnidad) references unidad(idUnidad)
);