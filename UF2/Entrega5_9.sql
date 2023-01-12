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

