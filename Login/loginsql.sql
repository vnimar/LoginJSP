drop schema if exists Login;
create schema if not exists Login default character set utf8;
use Login;

create table if not exists Login.tb_login (
	id int not null auto_increment primary key,
    nome varchar(50) not null,
    email varchar(50)not null,
    senha varchar(10) not null
) engine = InnoDB;

select * from tb_login;