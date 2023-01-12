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
    codi_proj smallint(3),
    nom_proj varchar (20) not null,
    preu float not null,
    data_inici date not null,
    data_prev_fi date not null,
    retencio tinyint(2),
    codi_cli mediumint(5),
    constraint pk_projectes primary key (codi_proj)
);

/*Problema 3*/
create table departaments (
    nom_dpt varchar(20),
    ciutat_dpt varchar(20),
    telefon int(9) not null,
    constraint pk_departaments primary key (nom_dpt, ciutat_dpt)
);

/*Problema 4*/
create table empleats(
    codi_empl smallint(3),
    nom_empl varchar(20),
    cognom_empl varchar(20),
    sou float not null,
    nom_dpt varchar(20),
    ciutat_dpt varchar(20),
    codi_proj smallint(3),
    constraint pk_empleats primary key(codi_empl)
);

/*Problema 5*/
alter table empleats modify nom_empl not null;
alter table empleats modify cognom_empl not null;

/*Problema 6*/
alter table empleats modify cognom_empl varchar(50);

/*Problema 7*/
alter table emleats modify sou set default '641.50';

/*Problema 8*/
alter table projectes drop retencio;

/*Problema 9*/
alter table departaments modify telefon varchar(12);

/*Problema 10*/
alter table projectes add constraint data_inici check (data_inici < data_prev_fi);

/*Problema 11*/
alter table empleats 
