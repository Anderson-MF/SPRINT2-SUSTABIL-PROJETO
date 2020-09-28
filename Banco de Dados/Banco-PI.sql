create database sustabil;

use sustabil;

create table tbclientes(

idCliente int primary key,
NomeCliente varchar(80),
emailCliente varchar(50),
CPFCliente char(15),
RGCliente char(12),
EndCliente varchar(80),
CEPCliente char(9),
EmpresaCliente varchar(50)
);

create table tbRua(

idRua int primary key,
EndRua varchar(80),
nomeRoteador varchar(20)
);

create table tbsensores(

idSensor int primary key,
MinUmidade int,
MaxUmidade int,
MediaSensor int,
AlertaSensor varchar(20)
);

insert into tbclientes
values(1,'Anderson Mariano','anderson@bandtec.com','343.953.940-23','88.932.032-3','Rua Anderson de souza N° 90','34234-998','Sabesp'),
(2,'Arthur de Paula','arthur@bandtec.com','032.990.232-93','32.990.332-2','Rua Anderson de souza N° 90','94803-239','Sabesp'),
(3,'Franklin da Silva','franklin@bandtec.com','093.099.232-01','98.323.098-5','Rua Franklin gerivaldo N°93','38490-974','Ministério do Meio Ambiente'),
(4,'Gabriel Ferraz','gabriel@bandtec.com','832.993.934-33','93.893.865-8','Rua Franklin gerivaldo N°93','37402-342','Ministério do Meio Ambiente'),
(5,'Guilherme Nascimento','guilherme@bandtec.com','324.974.088-93','34.976.903-5','Rua Guilherme gildo N°39','23909-787','Ministério do Desenvolvimento Regional'),
(6,'João Oliveira','joao@bandtec.com','394.903.232-94','35.868.999-3','Rua Guilherme gildo N°39','89034-234','Ministério do Desenvolvimento Regional');

insert into tbrua
values(1,'Rua Alfredo silva','Roteador-Alfredo'),
(2,'Rua Josivaldo Souza','Roteador-Josivaldo'),
(3,'Rua Astrogildo Faria','Roteador-Astrogildo'),
(4,'Rua Josislene','Roteador-Josislene'),
(5,'Rua Miguelito','Roteador-Miguelito'),
(6,'Rua Altervildo','Roteador-Altervido');

insert into tbsensores
values(1,40,80,57,'Normal'),
(2,30,70,40,'Não Passou'),
(3,40,80,80,'Ultrapassou'),
(4,50,90,30,'Muito abaixo'),
(5,40,80,50,'Normal'),
(6,50,90,80,'Normal');


-- drop database controladora_sensores;

select * from tbclientes;

select * from tbrua;

select * from tbsensores;



























