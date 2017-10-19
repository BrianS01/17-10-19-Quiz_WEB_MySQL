drop database if exists BasesQuizEsquema;
create database BasesQuizEsquema;
use BasesQuizEsquema;

CREATE TABLE EsqBaseD.`Squemas`
(
	`Squemaid` int(11) NOT NULL AUTO_INCREMENT,
	`firstname` varchar(45) DEFAULT NULL,
	PRIMARY KEY(`Squemaid`)
);


CREATE TABLE EsqBaseD.`tabla`
(
	`tablaid` int(11) NOT NULL AUTO_INCREMENT,
	`esquemaid` int(11) NOT null,
	`firstname` varchar(45) DEFAULT NULL,
	PRIMARY KEY(`tablaid`),
	FOREIGN KEY(esquemaid) REFERENCES squemas(Squemaid)
);


CREATE TABLE EsqBaseD.`columnas`
(
	`columnaid` int(11) NOT NULL AUTO_INCREMENT,
	`tablaid1` int(11) NOT null,
	`firstname` varchar(45) DEFAULT NULL,
	PRIMARY KEY (`columnaid`),
    FOREIGN KEY (tablaid1) REFERENCES tabla(tablaid)
);


CREATE TABLE EsqBaseD.`FOREIGN KEY`
(
	`forgeinid` int(11) NOT NULL AUTO_INCREMENT,
    `firstname` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`forgeinid`)
);


create table EsqBaseD.`unidad`
(
	`idUnidad` int(11) NOT NULL AUTO_INCREMENT,
    primary key(`id`)
);


create table EsqBaseD.`contexto`
(
	`idContexto` int(11) NOT NULL AUTO_INCREMENT,
    `idUnidad` int(11) NOT NULL,
    primary key(`id`),
    foreign key(idUnidad) references unidad(idUnidad)
);


create table EsqBaseD.`modelo`
(
	`idModelo` int(11) NOT NULL AUTO_INCREMENT,
    `idUnidad` int(11) NOT NULL,
    primary key(`id`),
    foreign key(idUnidad) references unidad(idUnidad)
);