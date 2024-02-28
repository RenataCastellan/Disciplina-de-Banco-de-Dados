create database bd_atividade01;
use bd_atividade01;

create table banca(
id_ban int primary key auto_increment,
nome_ban varchar(100),
sigla_ban varchar(20)
);

create table disciplina(
id_dis int primary key auto_increment,
nome_dis varchar(100)
);

create table assunto(
id_ass int primary key auto_increment,
texto_ass varchar(200),

id_dis_fk int,
foreign key (id_dis_fk) references disciplina (id_dis)
);

create table questao(
id_que int primary key auto_increment,
enunciado_que varchar(200),
modalidade_que varchar(100),
nivel_que varchar(50),

id_ass_fk int,
foreign key (id_ass_fk) references assunto (id_ass),

id_ban_fk int,
foreign key (id_ban_fk) references banca (id_ban)
);

create table usuario(
id_usu int primary key auto_increment,
nome_uso varchar(100)
);

create table questao_usuario(
id_usu_que int primary key auto_increment,

id_usu_fk int,
foreign key (id_usu_fk) references usuario (id_usu),
id_que_fk int,
foreign key (id_que_fk) references questao (id_que)
);

create table alternativas (
id_alt int primary key auto_increment,
gabarito_alt varchar(200),
texto_alt varchar(200),

id_que_fk int,
foreign key (id_que_fk) references questao (id_que)
);

create table professor(
id_pro int primary key auto_increment,
nome_pro varchar(100),
telefone_pro varchar(100),
email_pro varchar(100)
);

create table questao_professor(
id_pro_que int primary key auto_increment,

id_que_fk int,
foreign key (id_que_fk) references questao (id_que),
id_pro_fk int,
foreign key (id_pro_fk) references professor (id_pro)
);