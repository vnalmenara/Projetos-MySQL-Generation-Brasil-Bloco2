
create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint(5) auto_increment,
tipo varchar(30) not null,
servir_quente boolean not null,
primary key (id)
);

create table tb_pizza(
id bigint(5) auto_increment,
sabor varchar(30) not null,
preco decimal (4,2) not null,
borda enum('catupiry', 'cheddar'),
id_categoria bigint(5),
primary key (id),
foreign key (id_categoria) references tb_categoria (id)
);

alter table tb_pizza modify column borda enum('catupiry', 'cheddar', 'sem_borda');

select * from tb_categoria;
describe tb_categoria;

select * from tb_pizza;
describe tb_pizza;

insert into tb_categoria values 
(default, 'doce', false),
(default, 'doce', true),
(default, 'salgada', false),
(default, 'salgada', true),
(default, 'vegetariana', true);

insert into tb_pizza values 
(default, 'mussarela', '32.50', 'catupiry', '4'),
(default, 'calabreza', '32.50', 'catupiry', '4'),
(default, 'portuguesa', '49.99', 'sem_borda', '3'),
(default, '4queijos', '55.98', 'cheddar', '4'),
(default, 'palmito', '32.50', 'sem_borda', '3'),
(default, 'banana', '45.50', 'sem_borda', '1'),
(default, 'chocolate', '38.50', 'sem_borda', '2'),
(default, 'shimeji', '45.50', 'sem_borda', '5');

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where sabor like '%c%';

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria
order by tb_pizza.id;

select tb_categoria.id, tipo, tb_pizza.sabor, preco, borda from tb_pizza inner join tb_categoria 
on tb_categoria.id = tb_pizza.id_categoria where tipo = 'doce';
