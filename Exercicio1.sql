create database db_rh;
USE db_rh;

create table tb_colaboradores(
idfuncionario bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
datanascimento date not null,
salario decimal(6.2) not null,
adimissao date not null,
primary key (idfuncionario)
);

select * from tb_colaboradores;
alter table tb_colaboradores rename column idfuncionario to idcolaborador;


insert into tb_colaboradores(nome, cargo, datanascimento, salario, adimissao)
values
("Jorge felipe pereira da silva", "Estagiario", "1997-04-11",3500,"2024-01-02"),
("Geovanni torelli", "Gerente", "1975-03-17",4500,"2022-05-05"),
("Matheus libano", "Continuo", "2003-10-05", 450, "2023-03-07"),
("Zacarias de oliveira", "Atendente", "2005-02-08",1500,"2018-07-04"),
("Manuel da silva cabral", "Comprador", "1954-02-08",5600,"2001-02-22")
;

select * from tb_colaboradores where salario > 2000;
select * from tb_colaboradores where salario < 2000;

update tb_colaboradores set salario =  1700 where idcolaborador = 3;