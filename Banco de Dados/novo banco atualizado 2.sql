create database sustabil;
use sustabil;

create table Empresa(
idEmpresa int primary key auto_increment,
Nome varchar (45),
CNPJ char (19),
logradouro varchar (80),
CEP char (9),
numero int
) auto_increment = 10;
insert into Empresa (Nome,Cnpj,logradouro,CEP,Numero) values ('caema','312.327.987/0002-08','Avenida Jose Maria', '07295-048' , 88),
('aesbe','88.912.441/0001-00','Av Antonio Carlos', '09848-467', 109),
('Caema Maranhão','53.671.284/0001-04','Av Carlos mascena', '37296-351', 36),
('Cagece','94.741.632/0001-50','Av Caio Lucas', '46693-267', 57),
('LukAgua','21.280.543/0001-80','Av Bruce Wayne', '74892-272', 01);


create table funcionario(
idFuncionario int primary key auto_increment,
PrimeiroNome varchar (45),
sobrenome varchar(45),
telefone char (14),
email varchar (45),
senha varchar(45),
fkEmpresa int,
foreign key(fkEmpresa)references empresa(idEmpresa)
) auto_increment = 100;

insert into funcionario (PrimeiroNome, sobrenome,telefone,email,senha,fkempresa) values 
('Rhenan','Souza','(80)93747-1845','caema@gmail.com','BDdgDsd',10);
select * from empresa,funcionario ;
select * from empresa, funcionario where fkempresa = idempresa;

create table sensor(
idsensor int primary key auto_increment,
media decimal(2,2) check(media>=20 and media <=80),
fkempresa1 int,
foreign key(fkempresa1) references empresa(idempresa)
) auto_increment = 20
;
insert into sensor (fkempresa1) values 
(12),
(12),
(13),
(13),
(12),
(10),
(10),
(11),
(10),
(11),
(14),
(14),
(14);

Create table Locsensor (
idLocsensor int primary key auto_increment,
logradouro varchar (45),
cep char (9),
numero int,
uf char(2),
fksensorloc int,
foreign key (fksensorloc) references sensor (idsensor)
) auto_increment = 200
;
insert into locsensor (logradouro, cep, numero, uf, fksensorloc) values
('Avenida Jose Maria', '07295-048' , 88 ,'PE', 25),
('Avenida Jose Maria', '07295-048' , 88 ,'PE', 26),
('Avenida Jose Maria', '07295-048' , 88 ,'PE', 28),
('Av Antonio Carlos', '09848-467', 109, 'SE',27),
('Av Antonio Carlos', '09848-467', 109, 'SE',29),
('Av Carlos mascena', '37296-351', 36,'MA',20),
('Av Carlos mascena', '37296-351', 36,'MA',21),
('Av Carlos mascena', '37296-351', 36,'MA',24),
('Av Caio Lucas', '46693-267', 57, 'PB',22),
('Av Caio Lucas', '46693-267', 57, 'PB',23),
('Av Bruce Wayne', '74892-272', 01,'RN', 30),
('Av Bruce Wayne', '74892-272', 01,'RN', 31),
('Av Bruce Wayne', '74892-272', 01,'RN', 32);

create table umidade (
idUmidade int primary key auto_increment,
umidade int,
horario datetime,
indentificacao varchar (45),
fksensor int,
foreign key (fksensor) references sensor (idsensor)
) auto_increment = 2000
;
insert into umidade ( horario, indentificacao, fksensor) values
( '2019-12-12 17:00:00' ,'S2',20 ),
( '2019-2-23 12:00:00' ,'S1',21 ),
( '2020-2-9 13:00:00' ,'S2',21 ),
( '2020-2-9 17:00:00' ,'S3',21 ),
( '2020-2-9 15:00:00' ,'S1',22 ),
( '2020-2-9 11:00:00' ,'S2',22 ),
( '2020-2-9 09:00:00' ,'S3',22 );




drop database sustabil;
select * from empresa;
select * from funcionario;
select * from sensor;
select * from Locsensor;
select * from umidade;
select * from sensor, Locsensor where fksensorloc = idsensor;
select * from umidade, sensor where fksensor = idsensor;
