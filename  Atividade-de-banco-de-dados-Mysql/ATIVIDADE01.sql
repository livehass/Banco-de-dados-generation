create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes (
classesid bigint auto_increment,
nome varchar(255) not null,
habilidade varchar(255) not null,
 primary key (classesid)

);

insert into tb_classes(nome, habilidade)
values ("Arqueiro","Atirador"),
("Mago/Piromante","Magia"),
("Cavaleiro","Esgrima"),
("Assasino","Furtividade"),
("Arauto","sabedoria");

select * from tb_classes;

alter table tb_personagens add constraint fk_personagens_classe 
foreign key (classesid) references tb_classes(classesid);
    
select * from tb_personagens;
 
create table  tb_personagens (
idpersonagens bigint auto_increment,
nome varchar(255) not null,
habilidade varchar(255) not null,
niveldepoder bigint not null,
niveldedefesa bigint not null,
classesid bigint not null,
primary key (idpersonagens)
);

insert into tb_personagens (nome, habilidade, niveldepoder, niveldedefesa, classesid )
values ("Andalos","flexas-flamejantes", 2000, 4000, 1),
("Vasalus","Endor-flame", 1500, 1650, 2),
("Carmagon","Super-dash", 1550, 1616, 3),
("Gormeon","Silence-steps", 2500, 200, 4),
("Tulion","Prey-to-the-sun", 9500, 12200, 5),
("Avalon","flexas-flamejante", 1500, 2001, 1),
("lara","SuperDash", 2500, 2050, 2),
("Sekiro","Silence-steps", 1501, 2055, 5);

select * from tb_personagens where niveldepoder > 2000;
select * from tb_personagens where niveldepoder between 1501 and 1999;
select * from tb_personagens where nome like '%c%';

select * from tb_personagens inner join tb_classes on tb_classes.classesid = tb_personagens.classesid;
select * from tb_personagens inner join tb_classes on tb_classes.classesid = tb_personagens.classesid and tb_classes.classesid = 1;

-- select * from tb_personagens a, tb_classes b where a.classesid = 1 and a.classesid = b.classesid;