CREATE DATABASE LOCADORA_ISA 
GO

USE LOCADORA_ISA
GO

CREATE TABLE EMPRESA(
IdEmpresa SMALLINT PRIMARY KEY IDENTITY(1,1),
NomeEmpresa VARCHAR(30) NOT NULL
);
GO

CREATE TABLE CLIENTE(
IdCliente SMALLINT PRIMARY KEY IDENTITY(1,1),
NomeCliente VARCHAR(100) NOT NULL
);
GO

CREATE TABLE MARCA( 
IdMarca SMALLINT PRIMARY KEY IDENTITY(1,1),
NomeMarca VARCHAR(30) NOT NULL 
);
GO

CREATE TABLE MODELO(
IdModelo SMALLINT PRIMARY KEY IDENTITY (1,1),
IdMarca SMALLINT FOREIGN KEY REFERENCES MARCA(IdMarca),
NomeModelo VARCHAR (25) NOT NULL 
);
GO

CREATE TABLE VEICULO(
IdVeiculo SMALLINT PRIMARY KEY IDENTITY(1,1),
IdMarca SMALLINT FOREIGN KEY REFERENCES MARCA(IdMarca),
IdModelo SMALLINT FOREIGN KEY REFERENCES MODELO(IdModelo),
Placa CHAR(8) NOT NULL UNIQUE 
);
GO

CREATE TABLE ALUGUEL(
IdAluguel SMALLINT PRIMARY KEY IDENTITY(1,1),
IdEmpresa SMALLINT FOREIGN KEY REFERENCES EMPRESA(IdEmpresa),
IdVeiculo SMALLINT FOREIGN KEY REFERENCES VEICULO(IdVeiculo),
IdCliente SMALLINT FOREIGN KEY REFERENCES CLIENTE(IdCliente),
dataluguel DATE NOT NULL 
datadevolver DATE NOT NULL
);
GO
