
create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint(10) auto_increment,
tipo enum('soldado', 'arqueiro', 'espadachim', 'sniper'),
cenário enum('campo de batalha', 'alto mar', 'espaço', 'vulcao'),
primary key(id)
);

alter table Tb_classe change column cenário cenario enum('campo de batalha', 'alto mar', 'espaço', 'vulcao');

create table tb_personagem(
cod_avatar bigint (10) auto_increment,
nickname varchar(30) not null,
ataque int not null,
defesa int not null,
super_poder varchar(50) not null,
id_classe bigint(10),
primary key (cod_avatar),
foreign key (id_classe) references tb_classe (id)
);

select * from tb_classe;
describe tb_classe;

select * from tb_personagem;
describe tb_personagem;

insert into tb_classe values
(default, 'soldado', 'campo de batalha'),
(default, 'arqueiro', 'alto mar'),
(default, 'espadachim', 'espaço'),
(default, 'soldado', 'vulcao'),
(default, 'sniper', 'campo de batalha');


insert into tb_personagem values
(default, 'guerreiro_sangrento', '6050', '2000', 'super soco', '1'),
(default, 'cabeca_flamejante', '1500', '7600', 'inflamavel', '4'),
(default, 'capacete_duro', '8956', '1000', 'super visao', '5'),
(default, 'homem-invisivel', '500', '3780', 'invisibilidade', '3'),
(default, 'fortex', '6050', '3600', 'super força', '4'),
(default, 'japa', '850', '4590', 'precisao', '2'),
(default, 'esgrimaman', '6050', '380', 'super corte', '2'),
(default, 'multi_armas', '9876', '4550', 'aniquilacao total', '5');

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nickname like '%c%';

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id_classe
order by cod_avatar;

select tb_personagem.nickname, ataque, defesa, super_poder, tb_classe.tipo, cenario from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.id_classe where tipo = 'arqueiro';
