create database db_ecommerce;

create table tb_produtos(
	id bigint auto_increment primary key,
    nome varchar(20) not null,
    tipo varchar(20) not null,
    tamanho varchar(3) not null,
    quantidade int not null,
    valor decimal (5,2) not null
);

insert into tb_produtos (nome, tipo, tamanho, quantidade, valor) values ("Blusa", "Vestuário", "M", 2, 59.99);
insert into tb_produtos (nome, tipo, tamanho, quantidade, valor) values ("Sutiã", "Íntimo", "G", 3, 30.99);
insert into tb_produtos (nome, tipo, tamanho, quantidade, valor) values ("Calça", "Vestuário", "GG", 1, 129.90);
insert into tb_produtos (nome, tipo, tamanho, quantidade, valor) values ("Calcinha", "Íntimo", "P", 5, 10.99);
insert into tb_produtos (nome, tipo, tamanho, quantidade, valor) values ("Short", "Vestuário", "G", 4, 49.90);
insert into tb_produtos (nome, tipo, tamanho, quantidade, valor) values ("Cueca", "Íntimo", "P", 10, 29.90);
insert into tb_produtos (nome, tipo, tamanho, quantidade, valor) values ("Casaco", "Vestuário", "GG", 1, 159.99);
insert into tb_produtos (nome, tipo, tamanho, quantidade, valor) values ("Cinta", "Íntimo", "M", 2, 89.99);

select nome, valor from tb_produtos where valor > 500;
select nome, valor from tb_produtos where valor < 500;

update tb_produtos set valor = 559.90 where id = 7;
update tb_produtos set quantidade = 3 where id = 7;