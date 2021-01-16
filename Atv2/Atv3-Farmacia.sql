
create database db_farmacia_do_bem;

use db_famacia_do_bem;

create table tb_categoria(
id bigint(5) auto_increment,
tipo varchar(30) not null,
receita boolean not null,
primary key (id)
);

create table tb_produto(
id bigint(5) auto_increment,
nome varchar(30) not null,
preco decimal (5,2) not null,
desconto boolean not null,
id_categoria bigint(5) not null,
primary key (id),
foreign key (id_categoria) references tb_categoria(id)
);

insert into tb_categoria values
(default, 'generico', true),
(default, 'cosmeticos', true),
(default, 'infatil', false),
(default, 'higiene', false),
(default, 'remedio', true);

insert into tb_produto values
(default, 'dorflex', '3.50', true, '5'),
(default, 'shampoo', '17.50', false, '2'),
(default, 'perfume', '67.50', false, '2'),
(default, 'fralda', '78.00', true, '3'),
(default, 'berotec', '17.50', true, '5'),
(default, 'desodorante', '38.50', false, '4'),
(default, 'dipirona', '2.50', true, '1'),
(default, 'morfina', '1.50', true, '1');

select * from tb_categoria;
describe tb_categoria;

select * from tb_produto;
describe tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like '%b%';

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria
order by tb_produto.id;

select tb_produto.id, nome, preco, tb_categoria.tipo, receita from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.id_categoria where tipo = 'cosmeticos';





