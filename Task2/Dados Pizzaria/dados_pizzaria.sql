create database db_pizzaria_legal;

create table tb_categorias(
	id bigint auto_increment primary key,
    tamanho varchar(20) not null,
    descricao varchar(255) not null
);

insert into tb_categorias(tamanho, descricao) values ("Familia", "Serve dez pessoas");
insert into tb_categorias(tamanho, descricao) values ("Média", "Serve oito pessoas");
insert into tb_categorias(tamanho, descricao) values ("Pequena", "Serve quatro pessoas");
insert into tb_categorias(tamanho, descricao) values ("Broto", "Serve duas pessoas");
insert into tb_categorias(tamanho, descricao) values ("Fatia", "Serve uma pessoas");

create table tb_pizzas(
	id bigint auto_increment primary key,
    nome varchar(30) not null,
	tipo varchar(20) not null,
    preco decimal (4,2) not null,
	quantidade int not null,
	categoria_id bigint not null,
    foreign key(categoria_id) references tb_categorias(id)
);

insert into tb_pizzas(nome, tipo, preco, quantidade, categoria_id) values ("Marguerita", "salgada", 59.99, 2, 1);
insert into tb_pizzas(nome, tipo, preco, quantidade, categoria_id) values ("Brigadeiro", "doce", 39.99, 4, 2);
insert into tb_pizzas(nome, tipo, preco, quantidade, categoria_id) values ("Banana", "doce", 9.99, 3, 4);
insert into tb_pizzas(nome, tipo, preco, quantidade, categoria_id) values ("Mussarela", "salgada", 5.99, 5, 5);
insert into tb_pizzas(nome, tipo, preco, quantidade, categoria_id) values ("Doce de Leite", "doce", 59.99, 1, 1);
insert into tb_pizzas(nome, tipo, preco, quantidade, categoria_id) values ("Catupiry", "salgada", 9.99, 2, 4);
insert into tb_pizzas(nome, tipo, preco, quantidade, categoria_id) values ("Portuguesa", "salgada", 5.99, 5, 5);
insert into tb_pizzas(nome, tipo, preco, quantidade, categoria_id) values ("Calabresa", "salgada", 19.99, 1, 3);

select * from tb_pizzas where preco > 45.00;
select * from tb_pizzas where preco between 50.00 and 100.00;
select * from tb_pizzas where nome like '%M%';
select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = tb_categorias.id;
select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = tb_categorias.id where tipo = "doce";