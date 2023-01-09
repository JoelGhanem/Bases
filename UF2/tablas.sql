create table t3 (
    dni char(9) primary key,
    nom varchar(30) not null,
    email varchar(30) not null unique,
    sou float (not null check (sou >= 400)),
    tipus varchar(10) check (tipus='doble' or tipus='triple' or tipus='suite')
);

create table t5 (
    codi primary key autoincrement,
    marca varchar(30) not null,
    model varchar(30) not null,
    matricula matricula char(8),
    bastidor int unique,
    color varchar(30)
); 

create table t6 (
    nom_hotel varchar(30) ,
    num_habitacio smallint,
    tipus varchar (2),
    constraint nombre primary key (nom_hotel, num_habitacio),
    constraint ch_t6_tipus check (tipus='doble' or tipus='triple')
);
