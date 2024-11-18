/*Modelo Fisico de la Base de Datos db_biblioteca y la tabla 
autores, libros*/

--Creamos la Base de Datos si no existe--
CREATE DATABASE IF NOT EXISTS db_biblioteca;
USE db_biblioteca;

--Creamos la Tabla Autores--
CREATE TABLE IF NOT EXISTS autores (
    idAutor INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    nacionalidad VARCHAR(50)
);

--Creamos la Tabla Libros--
CREATE TABLE IF NOT EXISTS libros (
    idLibro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    fechaPublicacion DATE,
    precio DECIMAL(8,2) NOT NULL,
    idAutor INT,
    FOREIGN KEY (idAutor) REFERENCES Autores(idAutor)
);