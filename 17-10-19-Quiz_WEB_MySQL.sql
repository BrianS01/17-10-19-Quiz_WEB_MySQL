drop database if exists BasesQuizEsquema;
create database BasesQuizEsquema;
use BasesQuizEsquema;

CREATE TABLE BasesQuizEsquema.`Squemas`
(
	`Squemaid` int(11) NOT NULL AUTO_INCREMENT,
	`firstname` varchar(45) DEFAULT NULL,
	PRIMARY KEY(`Squemaid`)
);


CREATE TABLE BasesQuizEsquema.`Tabla`
(
	`tablaid` int(11) NOT NULL AUTO_INCREMENT,
	`esquemaid` int(11) NOT null,
	`firstname` varchar(45) DEFAULT NULL,
	PRIMARY KEY(`tablaid`),
	FOREIGN KEY(esquemaid) REFERENCES squemas(Squemaid)
);


CREATE TABLE BasesQuizEsquema.`Columnas`
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


create table BasesQuizEsquema.`Unidad`
(
	`idUnidad` int(11) NOT NULL AUTO_INCREMENT,
    primary key(`idUnidad`)
);


create table BasesQuizEsquema.`Contexto`
(
	`idContexto` int(11) NOT NULL AUTO_INCREMENT,
    `idUnidad` int(11) NOT NULL,
    `link` varchar(11) NOT NULL,
    primary key(`idContexto`),
    foreign key(idUnidad) references unidad(idUnidad)
);


create table BasesQuizEsquema.`Modelo`
(
	`idModelo` int(11) NOT NULL AUTO_INCREMENT,
    `idUnidad` int(11) NOT NULL,
    primary key(`idModelo`),
    foreign key(idUnidad) references unidad(idUnidad)
);


insert into squemas(Squemaid, firstname) values(1, "primero");


insert into Tabla(tablaid, esquemaid, firstname) values(1,1, "segundo");


insert into () values();
CREATE TABLE BasesQuizEsquema.`Columnas`
(
	`columnaid` int(11) NOT NULL AUTO_INCREMENT,
	`tablaid1` int(11) NOT null,
	`firstname` varchar(45) DEFAULT NULL,
	PRIMARY KEY (`columnaid`),
    FOREIGN KEY (tablaid1) REFERENCES tabla(tablaid)
);

insert into () values();
CREATE TABLE BasesQuizEsquema.`FOREIGN KEY`
(
	`forgeinid` int(11) NOT NULL AUTO_INCREMENT,
    `firstname` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`forgeinid`)
);


create table BasesQuizEsquema.`Unidad`
(
	`idUnidad` int(11) NOT NULL AUTO_INCREMENT,
    primary key(`idUnidad`)
);


create table BasesQuizEsquema.`Contexto`
(
	`idContexto` int(11) NOT NULL AUTO_INCREMENT,
    `idUnidad` int(11) NOT NULL,
    primary key(`idContexto`),
    foreign key(idUnidad) references unidad(idUnidad)
);


create table BasesQuizEsquema.`Modelo`
(
	`idModelo` int(11) NOT NULL AUTO_INCREMENT,
    `idUnidad` int(11) NOT NULL,
    primary key(`idModelo`),
    foreign key(idUnidad) references unidad(idUnidad)
);