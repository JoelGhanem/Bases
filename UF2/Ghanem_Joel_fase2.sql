/* *****************************************************
//  INS JOAN D'AUSTRIA
//	CFGS DAW
//	M2: Bases de dades. UF2: Llenguatge SQL
//	PRÀCTICA UF2. FASE 2
//	AUTOR: Joel Ghanem
//	DATA: 22-01-2023
 ****************************************************** */

/*                ATENCIÓ:                   */
/*  NO MODIFIQUEU RES ENTRE AQUESTA LINEA I LA 60 */

/* BORRAT DE TAULES */
/* QUAN ESTIGUIN CREADES LES CLAUS FORANES CALDRÀ TENIR PRESENT L'ORDRE: */
/* PARTIDO PREVIA A EQUIP. ESTADISTICAS PREVIA A JUGADOR. JUGADOR PREVIA A EQUIP */
DROP TABLE IF EXISTS Equipo; 
DROP TABLE IF EXISTS Jugador; 
DROP TABLE IF EXISTS Estadisticas; 
DROP TABLE IF EXISTS Partido;

/* CREACIO DE LA TAULA EQUIP */
CREATE TABLE Equipo (
    Nombre varchar(20),
    Ciudad varchar(20) NOT NULL,
    Conferencia varchar(4) NOT NULL,
    Division varchar(9) NOT NULL
)engine=innodb;

/* CREACIO DE LA TAULA JUGADOR */
CREATE TABLE Jugador (
    codigo mediumint,
    Nombre varchar(30) NOT NULL,
    Procedencia varchar(20),
    Altura char(4),
    Peso smallint unsigned,
    Posicion varchar(5),
    Nombre_equipo varchar(20) NOT NULL
)engine=innodb;

/* CREACIO DE LA TAULA ESTADISTICAS */
CREATE TABLE Estadisticas (
    codigo mediumint,
    temporada char(5) not null,
    Puntos_por_partido float DEFAULT 0.0, 
    Asistencias_por_partido float DEFAULT 0.0, 
    Tapones_por_partido float DEFAULT 0.0, 
    Rebotes_por_partido float DEFAULT 0.0
)engine=innodb;

/* CREACIO DE LA TAULA PARTIDO */
CREATE TABLE Partido (
    codigo mediumint unsigned,
    equipo_local varchar(20) NOT NULL,
    equipo_visitante varchar(20) NOT NULL,
    puntos_local smallint unsigned,
    puntos_visitante smallint unsigned,
    temporada char(5) NOT NULL
)engine=innodb;

/* AFEGIU A PARTIR D'AQUI LA VOSTRA SOLUCIO A LA FASE 2 */
ALTER TABLE Equipo ADD CONSTRAINT PK_Equipo PRIMARY KEY (Nombre);

ALTER TABLE Jugador ADD CONSTRAINT PK_Jugador PRIMARY KEY (codigo), ADD CONSTRAINT FK_Nombre_equipo FOREIGN KEY (Nombre_equipo) REFERENCES Equipo(Nombre) ON DELETE RESTRICT;

ALTER TABLE Estadisticas ADD CONSTRAINT FK_codigo_jugador FOREIGN KEY (codigo) REFERENCES Jugador(codigo) ON DELETE CASCADE;

ALTER TABLE Partido ADD CONSTRAINT PK_Partido PRIMARY KEY (codigo),
ADD CONSTRAINT fk_equipo_local FOREIGN KEY (equipo_local) REFERENCES Equipo(Nombre) ON DELETE RESTRICT,
ADD CONSTRAINT fk_equipo_visitante FOREIGN KEY (equipo_visitante) REFERENCES Equipo(Nombre) ON DELETE RESTRICT;

