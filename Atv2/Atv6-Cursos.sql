
create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint(5) auto_increment,
tipo varchar(30) not null,
presencial boolean,
primary key (id)
);

create table tb_curso(
id bigint(5) auto_increment,
nome varchar(30) not null,
preco float not null,
carga_horario int not null,
id_categoria bigint (5),
primary key (id),
foreign key (id_categoria) references tb_categoria(id)
);

insert into tb_categoria values
(default,'intercambio',true),
(default, 'graduacao',false),
(default, 'mba',true),
(default, 'tecnico',true),
(default, 'curso_rapido',false);

insert into tb_curso values
(default, 'java', '0', '40', '5'),
(default, 'php', '0', '30', '5'),
(default, 'londres', '25000', '5000', '1'),
(default, 'direito', '60000', '2400', '2'),
(default, 'engenharia', '95000', '2400', '2'),
(default, 'tecnico_em_redes', '0', '1800', '4'),
(default, 'banco_de_dados', '12000', '360', '3'),
(default, 'venezuela', '4000', '5000', '1');

select * from tb_categoria;
describe tb_categoria;

select * from tb_curso;
describe tb_curso;

select * from tb_curso where preco > 50;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where nome like '%j%';

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.id_categoria
order by tb_curso.id;

select tb_curso.nome, preco, carga_horario, tb_categoria.tipo from tb_curso inner join tb_categoria
on tb_categoria.id = tb_curso.id_categoria where tipo = 'intercambio';
