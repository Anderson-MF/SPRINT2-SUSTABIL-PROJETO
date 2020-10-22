create database sustabil;
use sustabil;

create table Empresa(
idEmpresa int primary key auto_increment,
CNPJ char (19),
logradouro varchar (80),
CEP char (9),
numero int,
fkfuncionario int,
foreign key(fkfuncionario)references funcionario(idFuncionario)
) auto_increment = 10;

create table funcionario(
idFuncionario int primary key auto_increment,
nomefuncionario varchar (50),
fkcadastro int,
foreign key(fkcadastro)references cadastro(idcadastro)
) auto_increment = 100;

create table cadastro(
idcadastro int primary key auto_increment,
telefone char (14),
email varchar (45),
senha varchar(50),
primeiroNome varchar(50),
sobrenome varchar(50)
)auto_increment = 10000;

create table sensor(
idsensor int primary key auto_increment,
media decimal(2,2) check(media>=20 and media <=80),
fksensor int,
foreign key(fksensor) references empresa(idempresa)
)