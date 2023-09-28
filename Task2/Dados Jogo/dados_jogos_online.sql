create database db_generation_game_online;

create table tb_classes(
	id bigint auto_increment primary key,
    classe varchar(20) not null,
    descricao varchar(255) not null
);

insert into tb_classes(classe, descricao) values ("Guerreiro", "Personagem de campo");
insert into tb_classes(classe, descricao) values ("Arqueiro", "Personagem defensivo");
insert into tb_classes(classe, descricao) values ("Mago", "Personagem defensivo");
insert into tb_classes(classe, descricao) values ("Ninja", "Personagem de campo");
insert into tb_classes(classe, descricao) values ("Curandeiro", "Personagem defensivo");

create table tb_personagens(
	id bigint auto_increment primary key,
    nome varchar(30) not null,
	sexo varchar(20) not null,
    ataque bigint not null,
	defesa bigint not null,
	classe_id bigint not null,
    foreign key(classe_id) references tb_classes(id)
);

insert into tb_personagens(nome, sexo, ataque, defesa, classe_id) values ("Sara", "feminino", 5000, 3000, 1);
insert into tb_personagens(nome, sexo, ataque, defesa, classe_id) values ("Antony", "masculino", 1000, 2000, 5);
insert into tb_personagens(nome, sexo, ataque, defesa, classe_id) values ("Maria", "feminino", 6000, 1900, 3);
insert into tb_personagens(nome, sexo, ataque, defesa, classe_id) values ("Lua", "feminino", 2000, 4000, 2);
insert into tb_personagens(nome, sexo, ataque, defesa, classe_id) values ("John", "masculino", 6000, 1900, 3);
insert into tb_personagens(nome, sexo, ataque, defesa, classe_id) values ("Matheus", "masculino", 8000, 6000, 4);
insert into tb_personagens(nome, sexo, ataque, defesa, classe_id) values ("Celina", "feminino", 2000, 4000, 2);
insert into tb_personagens(nome, sexo, ataque, defesa, classe_id) values ("Breno", "masculino", 5000, 3000, 1);

select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa between 1000 and 2000;
select * from tb_personagens where nome like '%C%';
select * from tb_personagens inner join tb_classes on tb_personagens.classe_id = tb_classes.id;
select * from tb_personagens inner join tb_classes on tb_personagens.classe_id = tb_classes.id where classe_id = 3;