Create table Pais
(
	cod_pais Serial NOT NULL,
	nome Varchar(50) NOT NULL,
	populacao Integer,
 primary key (cod_pais)
) ;


Create table Equipe
(
	cod_equipe Serial NOT NULL,
	cod_pais Integer NOT NULL,
	nome Varchar(30) NOT NULL,
 primary key (cod_equipe)
) ;


Create table Piloto
(
	cod_piloto Serial NOT NULL,
	cod_pais Integer NOT NULL,
	cod_equipe Integer NOT NULL,
	nome Varchar(50) NOT NULL,
	data_nasc Date,
 primary key (cod_piloto)
);


Create table Circuito
(
	cod_circuito Serial NOT NULL,
	cod_pais Integer NOT NULL,
	nome Varchar(40) NOT NULL,
	extensao Integer,
 primary key (cod_circuito)
);


Create table Prova
(
	cod_prova Serial NOT NULL,
	cod_circuito Integer NOT NULL,
	data Date,
	situacao Varchar(20),
 primary key (cod_prova)
);


Create table Resultado
(
	cod_piloto Integer NOT NULL,
	cod_prova Integer NOT NULL,
	tempo_prova Integer NOT NULL,
	colocacao_final Integer,
	posicao_grid Integer,
	melhor_volta Integer,
 primary key (cod_piloto,cod_prova)
);