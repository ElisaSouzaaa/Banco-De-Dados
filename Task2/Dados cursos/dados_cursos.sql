create database db_curso_da_minha_vida;

create table tb_categorias(
	id bigint auto_increment primary key,
	categoria varchar(255) not null,
	descricao varchar(255) not null
);

insert into tb_categorias(categoria, descricao) values ("Presencial", "Modalidade totalmente presencial");
insert into tb_categorias(categoria, descricao) values ("EaD Assíncrono", "Modalidade online sem hora fixa");
insert into tb_categorias(categoria, descricao) values ("Híbrido", "Modalidade maioria online");
insert into tb_categorias(categoria, descricao) values ("Semipresencial", "Modalidade maioria presencial");
insert into tb_categorias(categoria, descricao) values ("EaD Síncrono", "Modalidade online com hora fixa");


create table tb_cursos(
	id bigint auto_increment primary key,
	curso varchar(255) not null,
	categoria_id bigint not null,
	foreign key(categoria_id) references tb_categorias(id),
	tipo varchar(255) not null,
	preco decimal (7,2) not null
);

insert into tb_cursos(curso, categoria_id, tipo, preco) values ("Aprenda inglês", 2, "Linguagem", 729.90);
insert into tb_cursos(curso, categoria_id, tipo, preco) values ("Dismestificando o corpo", 1, "Humanas", 1249.90);
insert into tb_cursos(curso, categoria_id, tipo, preco) values ("Nihon Yokoso", 4, "Linguagem", 554.90);
insert into tb_cursos(curso, categoria_id, tipo, preco) values ("Enfrentando o Java", 5, "Exatas", 839.99);
insert into tb_cursos(curso, categoria_id, tipo, preco) values ("Primeiros passos MySQL", 4, "Exatas", 599.90);
insert into tb_cursos(curso, categoria_id, tipo, preco) values ("História da Arte", 2, "Humanas", 349.90);
insert into tb_cursos(curso, categoria_id, tipo, preco) values ("React? React!", 5, "Exatas", 219.99);
insert into tb_cursos(curso, categoria_id, tipo, preco) values ("Conhecendo Tupi Guarani", 3, "Linguagen", 683.90);

select * from tb_cursos where preco > 500.00;
select * from tb_cursos where preco between 600.00 and 1000.00;
select * from tb_cursos where curso like '%J%';
select * from tb_cursos inner join tb_categorias on tb_cursos.categoria_id = tb_categorias.id;
select * from tb_cursos inner join tb_categorias on tb_cursos.categoria_id = tb_categorias.id where categoria_id = 5;