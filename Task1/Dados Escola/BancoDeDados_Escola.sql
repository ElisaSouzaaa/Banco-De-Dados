create database db_escola;

create table tb_alunos(
	id bigint auto_increment primary key,
    nome varchar (20) not null,
    idade int,
    sexo varchar(20) not null,
    turma int,
    nota decimal (3,1)
);

insert into tb_alunos (nome, idade, sexo, turma, nota) values ("Clara", 15, "Feminino", 5, 10.0);
insert into tb_alunos (nome, idade, sexo, turma, nota) values ("Robson", 14, "Masculino", 4, 6.2);
insert into tb_alunos (nome, idade, sexo, turma, nota) values ("Brenda", 13, "Feminino", 1, 4.3);
insert into tb_alunos (nome, idade, sexo, turma, nota) values ("Luana", 17, "Feminino", 3, 5.9);
insert into tb_alunos (nome, idade, sexo, turma, nota) values ("Breno", 16, "Masculino", 2, 8.6);
insert into tb_alunos (nome, idade, sexo, turma, nota) values ("Ravi", 15, "Masculino", 5, 10.0);
insert into tb_alunos (nome, idade, sexo, turma, nota) values ("Tainá", 14, "Feminino", 4, 2.2);
insert into tb_alunos (nome, idade, sexo, turma, nota) values ("Jéssica", 13, "Feminino", 2, 7.9);

select nome, nota from tb_alunos where nota > 7.0;
select nome, nota from tb_alunos where nota < 7.0;

set sql_safe_updates = 1;

update tb_alunos set idade = 16 where id = 6;