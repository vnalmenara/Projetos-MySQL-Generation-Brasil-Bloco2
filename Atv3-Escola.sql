create database registro_escola;

use registro_escola;

create table informacoes_alunos(
id bigint(5) auto_increment,
nome varchar(30) not null,
sobrenome varchar(30) not null,
sexo enum ('Masculino', 'Feminino', 'Outros'),
notas decimal (4,2),
primary key (id)
);

select * from informacoes_alunos;

insert into informacoes_alunos values
(default, 'Márcia', 'Oliveira','Feminino', '10'),
(default, 'João', 'Monteiro','Masculino', '5'),
(default, 'Rodrigo', 'Silva','Outros', '7.5'),
(default, 'Pierre', 'Costa','Masculino', '9.8'),
(default, 'Jean', 'Ferraz','Masculino', '2.3'),
(default, 'Benedito', 'Souza','Masculino', '4.5'),
(default, 'Elisa', 'Soares','Feminino', '7'),
(default, 'Mirella', 'Andrade','Outros', '8');

select * from informacoes_alunos where notas > 7;

select * from informacoes_alunos where notas < 7;

update informacoes_alunos set sobrenome = 'Almeida' where id = 8;
