create database aperture;

use aperture;

create table usuario(
idUsuario int primary key auto_increment,
nome varchar(150),
idade int,
profissao varchar(45),
genero varchar(45),
email varchar(150),
senha varchar(45)
);

create table aviso(
idAviso int primary key auto_increment,
titulo varchar(45),
descricao varchar(255),
dtAviso datetime,
fkUsuario int,
foreign key (fkUsuario) references usuario(idUsuario)
);

create table pergunta(
idPergunta int primary key auto_increment,
titulo varchar(45),
descricao varchar(255),
dtPergunta datetime,
fkUsuario int,
foreign key (fkUsuario) references usuario(idUsuario)
);