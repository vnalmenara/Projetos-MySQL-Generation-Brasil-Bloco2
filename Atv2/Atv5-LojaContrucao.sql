
create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

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
(default,'arames',true),
(default, 'madeiras',false),
(default, 'alvenaria',true),
(default, 'acabamentos',true),
(default, 'tintas',false);

insert into tb_produto values
(default, 'piso', '34.50', '200', '4'),
(default, 'azulejo', '16.50', '300', '4'),
(default, 'porta', '150.50', '1', '2'),
(default, 'ferro', '1.50', '19', '1'),
(default, 'tijolo', '5.50', '1', '3'),
(default, 'cimento', '22.50', '15', '3'),
(default, 'janela', '498.50', '3', '2'),
(default, 'spray', '0.50', '3', '5');

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
on tb_categoria.id = tb_produto.id_categoria where tipo = 'madeiras';
