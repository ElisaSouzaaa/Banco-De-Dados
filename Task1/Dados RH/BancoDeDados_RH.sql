create database db_rh;

create table tb_colaboradores(
	id bigint auto_increment primary key,
    nome varchar(20) not null,
    idade int,
    departamento varchar(30) not null,
    sexo varchar(20) not null,
    salario decimal
);

alter table tb_colaboradores modify salario decimal (7,2);

insert into tb_colaboradores (nome, idade, departamento, sexo, salario) values ("Cleber", 52, "Vendas", "Masculino", 2.500);
insert into tb_colaboradores (nome, idade, departamento, sexo, salario) values ("Luana", 24, "Contabilidade", "Feminino", 5.420);
insert into tb_colaboradores (nome, idade, departamento, sexo, salario) values ("Leia", 36, "Vendas", "Feminino", 2120.00);
insert into tb_colaboradores (nome, idade, departamento, sexo, salario) values ("Matheus", 19, "TI", "Outros", 1520.00);
insert into tb_colaboradores (nome, idade, departamento, sexo, salario) values ("Elisa", 28, "TI", "Feminino", 3450.00);
insert into tb_colaboradores (nome, idade, departamento, sexo, salario) values ("Wanderley", 26, "Contabilidade", "Masculino", 1739.00);

select nome, salario from tb_colaboradores where salario > 2000;
select nome, salario from tb_colaboradores where salario < 2000;

set sql_safe_updates = 1;

update tb_colaboradores set idade = 37 where id = 3;