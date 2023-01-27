/*Problema 1*/
CREATE TABLE clients (
    codi_cli mediumint,
    nom_cli varchar(30),
    nif char(10),
    adreca varchar(30),
    ciutat varchar(30),
    telefon char(12),
    constraint pk_clients primary key (codi_cli)
);

/*Problema 2*/
CREATE TABLE projectes (
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
CREATE TABLE departaments (
    nom_dpt varchar(20),
    ciutat_dpt varchar(20),
    telefon int(9) not null,
    constraint pk_departaments primary key (nom_dpt, ciutat_dpt)
);

/*Problema 4*/
CREATE TABLE empleats(
    codi_empl smallint(3),
    nom_empl varchar(20),
    cognom_empl varchar(20),
    sou float not null,
    nom_dpt varchar(20),
    ciutat_dpt varchar(20),
    codi_proj smallint(3),
    constraint pk_empleats primary key(codi_empl)
);

/*HAY QUE ACOSTUMBRARSE A PONER COLUMN*/

/*Problema 5*/  /*Mal me he dejado los valores de la tabla*/
ALTER TABLE empleats modify column nom_empl varchar(20)  not null;
ALTER TABLE empleats modify column cognom_empl varchar(20) not null;

/*Problema 6*/  /*Mal, me faltaba el not null*/
ALTER TABLE empleats modify cognom_empl varchar(50) not null;

/*Problema 7*/  /*PERFECT*/
ALTER TABLE emleats modify sou set default '641.50';

/*Problema 8*/  /*MAL*/
ALTER TABLE projectes drop column retencio;

/*Problema 9*/  /*PERFECT*/
ALTER TABLE departaments modify telefon varchar(12);

/*Problema 10*/ /*PERFECT*/
ALTER TABLE projectes add constraint data_inici check (data_inici < data_prev_fi);

/*Problema 11*/ /*MAL*/
ALTER TABLE empleats  add constraintfk_empl_codi_proj 
foreign key (codi_proj) references projectes (codi_proj) on delete set null;

/*Problema 12*/ /*MAL*/
ALTER TABLE empleats add constraint fk_empl_depart foreign key (nom_dpt, ciutat_dpt) 
on delete CASCADE on update CASCADE

/*Problema 13*/ /*MUY MAL*/
ALTER TABLE projectes add constraint fk_codi_cli foreign key (codi_cli) 
joel@joel-GL62MVR-7RFX:~$ 
references clients (codi_cli);

/*Problema 20*/
/*SI he pogut introduir l'empleat*/

/*Problema 21*/
/*No es pot afegir l'empleat ja que el codi_empl es el mateix*/

/*Problema 22*/
insert into empleats (codi_empl, nom_empl, cognom_empl,sou, nom_dpt, ciutat_dpt, codi_proj) values (10, 'Pepe', 'Porras', DEFAULT, null, null, null);

/*Problema 23*/
delete from empleats where codi_empl = 10;

/*Problema 24*/
update empleats set codi_proj = 3 where codi_empl = 8;

/*Problema 25*/
/*El que succeeix es que es modifica ja que no hi ha cap restricció que ho pari*/

/*Problema 26*/
update empleats set codi_proj = null where codi_empl = 6;
