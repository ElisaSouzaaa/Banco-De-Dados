create database db_cidade_das_carnes;

create table tb_categorias(
	id bigint auto_increment primary key,
	categoria varchar(255) not null,
	descricao varchar(255) not null
);

insert into tb_categorias(categoria, descricao) values ("Carne Bovina", "Carne de origem bovina");
insert into tb_categorias(categoria, descricao) values ("Carne Suina", "Carne de origem suina");
insert into tb_categorias(categoria, descricao) values ("Aves", "Carne de aves");
insert into tb_categorias(categoria, descricao) values ("Frutos do mar", "Mariscos");
insert into tb_categorias(categoria, descricao) values ("Peixes", "Carne de peixe");


create table tb_produtos(
	id bigint auto_increment primary key,
	nome varchar(255) not null,
	categoria_id bigint not null,
	foreign key(categoria_id) references tb_categorias(id),
	quantidade int not null,
	preco decimal (5,2) not null
);

insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Namorado", 5, 5, 29.90);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Linguiça toscana", 2, 10, 49.90);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Camarão", 4, 20, 54.90);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Sobrecoxa", 3, 26, 22.90);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Filé mignon", 1, 2, 149.90);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Alcatra", 1, 10, 39.90);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Tilápia", 5, 13, 19.99);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Lagosta", 4, 3, 83.90);

select * from tb_produtos where preco > 50.00;
select * from tb_produtos where preco between 50.00 and 150.00;
select * from tb_produtos where nome like '%C%';
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id where categoria_id = 1;