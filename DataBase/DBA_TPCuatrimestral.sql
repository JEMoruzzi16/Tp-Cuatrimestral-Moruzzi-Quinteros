CREATE DATABASE TpCuatrimestralMoruzziQuinteros
GO
USE TpCuatrimestralMoruzziQuinteros
GO
CREATE TABLE TipoDeProducto(
     Id INT PRIMARY KEY NOT NULL Identity(1,1),
     Descripcion VARCHAR(50) NOT NULL,
     Estado bit not null DEFAULT 1
)
GO
CREATE TABLE Producto(
    Codigo INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    IdTipoProducto INT FOREIGN KEY REFERENCES TipoDeProducto(Id) NOT NULL,
    Precio Money NOT NULL CHECK(Precio>0),
    Stock int NOT NULL CHECK(Stock>=0),
    Estado BIT NOT NULL DEFAULT 1, 
    DescripcionPlato VARCHAR(50) NOT NULL,
)
go
CREATE TABLE MetodoPago(
    Id char PRIMARY KEY NOT NULL ,
    Descripcion VARCHAR(20) NOT NULL UNIQUE,
    Estado BIT not null DEFAULT 1
)
go
CREATE TABLE DatosPersonales(
    Usuario VARCHAR(25) PRIMARY KEY NOT NULL,
    Nombre VARCHAR(20) NOT NULL,
    Apellido VARCHAR(20) NOT NULL,
    FechaNacimiento DATETIME NOT NULL,
    FechaIngreso DATETIME NOT NULL,
    Estado bit not NULL DEFAULT 1
)
CREATE TABLE Usuarios(
    Usuario VARCHAR(25) PRIMARY KEY FOREIGN KEY REFERENCES DatosPersonales(Usuario),
    Contrasena VARCHAR(10) NOT NULL,
    Tipo TINYINT NOT NULL,
)