/* *****************************************************
//  INS JOAN D'AUSTRIA
//	CFGS DAW
//	M2: Bases de dades. UF2: Llenguatge SQL
//	PRÀCTICA UF2. FASE 1 
//	AUTOR/A:  Joel Ghanem 
//	DATA:  09/01/2023
****************************************************** */

create table Equipo (
    Nombre varchar(20) NOT NULL,
    Ciudad varchar(20) NOT NULL,
    Conferencia varchar(4) NOT NULL,
    Division Varchar(20) NOT NULL
);

create table Jugador (
    Codigo tinyint(1) NOT NULL,
    Nombre varchar(30) NOT NULL,
    Procedencia varchar(20),
    Altura varchar(4),
    Peso tinyint(3),
    Posicion varchar(3)
);


create table Estadisticas (
    Puntos_por_partido float(3,1) default 0,0 unsigned,
    Asistencias_por_partido float (3,1) default 0,0 unsigned,
    Tapones_por_partido float (3,1) default 0,0 unsigned,
    Rebotes_por_partido float (3,1) default 0,0 unsigned
);

create table Partido (
    Codigo tinyint(3),
    Equipo_local varchar(20) not null,
    Equipo_visitante varchar(20) not null,
    Puntos_local tinyint(3),
    Puntos_visitante tinyint(3),
    Temporada,
);
/* Comentari 1 */


/* Comentari 2 */
