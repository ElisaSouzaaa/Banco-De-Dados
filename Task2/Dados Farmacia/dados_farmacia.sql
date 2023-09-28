create database db_farmacia_bem_estar;

create table tb_categorias(
	id bigint auto_increment primary key,
	categoria varchar(255) not null,
	descricao varchar(255) not null
);

insert into tb_categorias(categoria, descricao) values ("Medicamentos", "Medicamentos genéricos e prescritos");
insert into tb_categorias(categoria, descricao) values ("Perfumaria", "Perfumes nacionais e internacionais");
insert into tb_categorias(categoria, descricao) values ("Comésticos", "Maquiagem e cuidados com a pele");
insert into tb_categorias(categoria, descricao) values ("Higiene", "Produtos de higiene íntima");
insert into tb_categorias(categoria, descricao) values ("Saúde", "Produtos para se manter saudável");

create table tb_produtos(
	id bigint auto_increment primary key,
	nome varchar(255) not null,
	categoria_id bigint not null,
	foreign key(categoria_id) references tb_categorias(id),
	quantidade int not null,
	preco decimal (5,2) not null
);

insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Ibuprofeno", 1, 3, 3.99);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Absorvente", 4, 1, 10.99);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Hidratante", 3, 2, 34.90);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Vitamina C", 5, 3, 9.99);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Dorflex", 1, 5, 5.99);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Camisinha", 5, 1, 43.99);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Florata", 2, 1, 59.99);
insert into tb_produtos(nome, categoria_id, quantidade, preco) values ("Egeo", 2, 3, 83.90);

select * from tb_produtos where preco > 50.00;
select * from tb_produtos where preco between 5.00 and 60.00;
select * from tb_produtos where nome like '%C%';
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id where categoria_id = 5;