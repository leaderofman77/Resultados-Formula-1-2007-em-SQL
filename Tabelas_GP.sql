/*
Created		21/4/2007
Modified		21/4/2007
Project		
Model			
Company		
Author		
Version		
Database		PostgreSQL 8.1 
*/


/* Create Tables */


Create table Pais
(
	cod_pais Serial NOT NULL,
	nome Varchar(50) NOT NULL,
	populacao Integer,
 primary key (cod_pais)
) With Oids;


Create table Equipe
(
	cod_equipe Serial NOT NULL,
	cod_pais Integer NOT NULL,
	nome Varchar(30) NOT NULL,
 primary key (cod_equipe)
) With Oids;


Create table Piloto
(
	cod_piloto Serial NOT NULL,
	cod_pais Integer NOT NULL,
	cod_equipe Integer NOT NULL,
	nome Varchar(50) NOT NULL,
	data_nasc Date,
 primary key (cod_piloto)
) With Oids;


Create table Circuito
(
	cod_circuito Serial NOT NULL,
	cod_pais Integer NOT NULL,
	nome Varchar(40) NOT NULL,
	extensao Integer,
 primary key (cod_circuito)
) With Oids;


Create table Prova
(
	cod_prova Serial NOT NULL,
	cod_circuito Integer NOT NULL,
	data Date,
	situacao Varchar(20),
 primary key (cod_prova)
) With Oids;


Create table Resultado
(
	cod_piloto Integer NOT NULL,
	cod_prova Integer NOT NULL,
	tempo_prova Integer NOT NULL,
	colocacao_final Integer,
	posicao_grid Integer,
	melhor_volta Integer,
 primary key (cod_piloto,cod_prova)
) With Oids;



/* Create Indexes */



/* Create Foreign Keys */

Alter table Equipe add  foreign key (cod_pais) references Pais (cod_pais) on update restrict on delete restrict;

Alter table Piloto add  foreign key (cod_pais) references Pais (cod_pais) on update restrict on delete restrict;

Alter table Circuito add  foreign key (cod_pais) references Pais (cod_pais) on update restrict on delete restrict;

Alter table Piloto add  foreign key (cod_equipe) references Equipe (cod_equipe) on update restrict on delete restrict;

Alter table Resultado add  foreign key (cod_piloto) references Piloto (cod_piloto) on update restrict on delete restrict;

Alter table Prova add  foreign key (cod_circuito) references Circuito (cod_circuito) on update restrict on delete restrict;

Alter table Resultado add  foreign key (cod_prova) references Prova (cod_prova) on update restrict on delete restrict;













