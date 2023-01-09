/*Problema 1*/
create table clients (
    codi_cli mediumint,
    nom_cli varchar(30),
    nif char(10),
    adreca varchar(30),
    ciutat varchar(30),
    telefon char(12),
    constraint pk_clients primary key (codi_cli)
);

/*Problema 2*/
create table projectes (
    codi_proj smallint,
    nom_proj varchar (20) not null,
    preu float not null,
    data_inici date not null,
    retencio tinyiunt,
    codi_cli mediumint,
    constraint p;_projectes primary key (codi_proj)
);

/*Problema 3*/
create table departaments (
    nom_dpt varchar(20),
    ciutat_dpt varchar(20),
    telefon int not null,
    constraint pk_departaments primary key (nom_dpt, ciutat_dpt)
);

/*Problema 4*/
create table empleats(
    codi_empl smallint,
    nom_empl varchar(20),
    cognom_empl varchar(20),
    sou float not null,
    nom_dpt varchar(20),
    ciutat_dpt varchar(20),
    codi_proj smallint,
    constraint pk_empleats primary key(codi_empl)
);
