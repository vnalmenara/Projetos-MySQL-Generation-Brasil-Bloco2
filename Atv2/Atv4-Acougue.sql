
create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint(5) auto_increment,
tipo varchar(30) not null,
ativo boolean not null,
primary key (id)
);

create table tb_produto(
id bigint(5) auto_increment,
nome varchar(30) not null,
preco decimal (5,2) not null,
qt_produto int not null,
id_categoria bigint (5),
primary key (id),
foreign key (id_categoria) references tb_categoria(id)
);

insert into tb_categoria values
(default,'Bovino',true),
(default, 'Suino',true),
(default, 'Aves',true),
(default, 'inflamaveis',true),
(default, 'imbutidos',true);

insert into tb_produto values
(default, 'picanha', '78.50', '6', '1'),
(default, 'asa', '16.50', '9', '3'),
(default, 'lombo', '33.50', '2', '2'),
(default, 'alcool', '1.50', '19', '4'),
(default, 'salame', '45.50', '1', '5'),
(default, 'fraldinha', '56.50', '11', '1'),
(default, 'bisteca', '2.50', '5', '2'),
(default, 'coracao', '22.00', '50', '3');

select * from tb_categoria;
describe tb_categoria;

select * from tb_produto;
describe tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like '%c%';

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria
order by tb_produto.id;

select tb_produto.nome, preco, qt_produto, tb_categoria.tipo from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.id_categoria where tipo = 'aves';
