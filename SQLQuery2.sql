create database test
go 
use test ;
go
create table vol (
nom varchar(20),
nom1 varchar(20),
nom2 varchar(20),
numerodelicence int,
dateduvole date ,
dure int,
distance int ,
)

create table pilot (
numerodelicence int  primary key,
nom varchar(20),
prenom varchar(20),
datedenaissance date,
niveau  int not null,
dateab date ,
poid int,
distance int,
)

create table sitedecollage (
nom2 varchar not null ,
niveaurequis int,
orientation int,
)
alter table sitedecollage add constraint pkstt primary key (nom2);
drop table sitedecollage

create table sitedattrrissage (
nom varchar primary key,
nom1 varchar,
situation char ,
approcheusuelle char ,

)
drop table sitedattrrissage
create table modeleparapente  (
nom varchar primary key,
niveau int,
poidmaximum  int,
poidminimum int,

)

create table parapente (
nom varchar primary key,
numero int ,
datedemiseenservice date,
couleurprincipale varchar,
) 

create table utilise (
numero int not null primary key,
numerodelicence int ,
datedutilisation date,
nombredevols int not null,
)

alter table parapente add constraint fkparapentuti foreign key (numero) references utilise (numero);
alter table utilise add constraint FKvolpilot foreign key (numerodelicence) references pilot (numerodelicence);
alter table vol add constraint fkvolattri foreign key (numerodelicence) references pilot (numerodelicence);

alter table vol add constraint fkvolesitattrri foreign key (nom1) references sitedattrrissage (nom1);
alter table vol add constraint fkvolsitecoll foreign key (nom2) references sitedecollage(nom2);
alter table vol add constraint fkvolattri foreign key (nom2) references sitedecollage (nom2);