create database e_commerce;

use e_commerce;

create table produtos(
id bigint (5) auto_increment,
tipo varchar(30) not null,
valor float not null,
pais_fabricacao varchar(20) default 'China',
peso decimal (5,2),
primary key (id)
);

select * from produtos;

insert into produtos values
(default, 'caixa de som', '550', default, '5.2'),
(default, 'mouse', '150', 'Japão', '0.2'),
(default, 'teclado', '280', 'EUA', '1.1'),
(default, 'fone de ouvido', '2700', default, '0.01'),
(default, 'pen drive', '120', 'Japão', '0.02'),
(default, 'notebook', '11550', 'Japão', '6.2'),
(default, 'tablet', '2450', 'Japão', '2.4'),
(default, 'cabo monitor', '20', 'Japão', '0.03');

select * from produtos where valor > 500;

select * from produtos where valor < 500;

update produtos set pais_fabricacao = 'EUA' where id = 6; 
