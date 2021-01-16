
create database banco_dados_servico_rh;

use banco_dados_servico_rh;

create table funcionario_rh(
id bigint(5) auto_increment,
nome varchar(255) not null,
cargo varchar(50) not null,
departamento varchar(30) not null,
salario float not null,
primary key (id)
);

select * from funcionario_rh;

insert into funcionario_rh values
(default, 'Ana Maria', 'Eng. Software', 'T.I.', '5000'),
(default, 'João Pedro', 'Auxiliar', 'R.H.', '1100'),
(default, 'Roberta', 'Advogada', 'Jurídico', '4500'),
(default, 'Bruna Lima', 'Médica do Trabalho', 'Médico', '10000'),
(default, 'Renato', 'Almoxarife', 'Logística e Estoque', '1850');

select * from funcionario_rh where salario > 2000;

select * from funcionario_rh where salario < 2000;

update funcionario_rh set salario = 1255 where id = 2;
