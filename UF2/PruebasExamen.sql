create table profes (
    Codi tinyint,
    Dni char(9),
    Nom varchar(20),
    Data_naixement date
);

create table moduls (
    Codi int,
    Nom varchar(20),
    Codi_prof tinyint
);

alter table moduls add column hores time;

alter table profes add column telefon varchar(12);

alter table profes modify column telefon int;

alter table profes change column telefon email varchar(30);

alter table profes modify column Codi tinyint AUTO_INCREMENT primary key;

alter table profes add constraint uq_dni unique(Dni);

alter table moduls add constraint FK_codi_prof_codi FOREIGN KEY (Codi_prof) REFERENCES profes(Codi) ON DELETE CASCADE;
