create database db_construindo_vidas;

create table tb_categorias(
	id bigint auto_increment primary key,
	categoria varchar(255) not null,
	descricao varchar(255) not null
);

insert into tb_categorias(categoria, descricao) values ("Naturais", "Materais encontrados na natureza");
insert into tb_categorias(categoria, descricao) values ("Artificiais", "Materais industriais");
insert into tb_categorias(categoria, descricao) values ("Combinados", "Materiais naturais e industriais");
insert into tb_categorias(categoria, descricao) values ("Vedação", "Materais para isolamento");
insert into tb_categorias(categoria, descricao) values ("Proteção", "Materais para proteção");


create table tb_produtos(
	id bigint auto_increment primary key,
	nome varchar(255) not null,
	categoria_id bigint not null,
	foreign key(categoria_id) references tb_categorias(id),
	quantidade int not null,
	preco decimal (5,2) not null
);

insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Tinta", 5, 40, 29.90);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Tijolos", 2, 110, 49.90);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Vidros", 4, 120, 54.90);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Argamassa", 3, 26, 22.90);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Madeira", 1, 50, 99.90);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Areia", 1, 10, 49.90);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Cimento", 3, 30, 19.99);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Tijolos de vedação", 4, 130, 83.90);

select * from tb_produtos where preco > 100.00;
select * from tb_produtos where preco between 70.00 and 150.00;
select * from tb_produtos where nome like '%C%';
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id where categoria_id = 1;