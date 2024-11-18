/*Modelo Fisico de la Base de Datos db_ferreteria y la tabla clientes*/

--Creamos la Base de Datos si no existe--
CREATE DATABASE IF NOT EXISTS db_ferreteria;
USE db_ferreteria;

--Creamos la Tabla Clientes--
CREATE TABLE IF NOT EXISTS clientes(
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    telefono VARCHAR NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    direccion VARCHAR(150) NULL,
    fechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);