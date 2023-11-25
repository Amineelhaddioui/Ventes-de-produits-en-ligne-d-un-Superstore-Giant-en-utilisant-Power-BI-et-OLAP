
create table test(
idclient int identity(1,1) primary key,
nom varchar(50),
prenom varchar(25),
telephone varchar(30),
adresse varchar(50),
)
alter table test add email varchar(50)
alter table test alter column email varchar(100)
alter table test drop column adresse

create table produit(
refproduit varchar(50),
designation varchar(255),
prix money,

)
alter table produit alter column refproduit varchar(50) not null;
alter table produit
add constraint pKClient
primary key (refproduit)

create table client(
idclien int identity,
nom varchar(20),
prenom varchar(20),
adresse varchar(50),
email varchar(50),
)
create table commande(
idcommande int identity(1,1),
idclien int ,
datecommande date not null,
constraint pkcommande primary key (idcommande),
constraint fkcommandeclient foreign key (idclien) references client (idclien),

)
drop table clien

alter table quartier 
add constraint FKquartierville foreihne key (idville)
reference ville (idville)

alter table bien add constraint FKbientypede bien foreigne key
(idtype) referece typedebien (idtype);

