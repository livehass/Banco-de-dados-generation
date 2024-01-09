create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias (
	idcategoria bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(255) not null,
    primary key (idcategoria)

);

insert tb_categorias (nome, descricao, idcategoria)
values ("Broto","4 pedaços",1),
 ("Media","6 pedaços",2),
 ("Grande","8 pedaços",3);

alter table tb_pizzas add constraint fk_pizzas_categorias
foreign key (idcategoria) references tb_categorias(idcategoria);

create table tb_pizzas (
idpizza bigint	auto_increment,
sabor varchar(255) not null,
borda tinyint not null,
valor decimal(6,2) not null,
tipodeborda varchar(255),
idcategoria bigint,
primary key (idpizza)
);

insert tb_pizzas (sabor, borda, valor, tipodeborda,  idcategoria)
values("Marguerita", 1, 35.04, "Catupiry", 3),
("Peperonni", 1, 46.05, "Cheddar", 2),
("Calabresa", 0, 96.05, null, 3),
("Frango-Catupiry", 1, 76.00 , "Catupiry" , 3);

select * from tb_pizzas;
select * from tb_pizzas where valor > 45.00;
select * from tb_pizzas where valor between 49.99 and 99.99;
select * from tb_pizzas where sabor like '%m%';
select * from tb_pizzas inner join tb_categorias on tb_pizzas.idcategoria = tb_categorias.idcategoria;

select * from tb_pizzas inner join tb_categorias on tb_pizzas.idcategoria = tb_categorias.idcategoria and tb_categorias.idcategoria = 3;
