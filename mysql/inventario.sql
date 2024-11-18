/*Modelo Fisico de la Base de Datos db_inventario y la tabla proveedores*/

--Creamos la Base de Datos si no existe--
CREATE DATABASE IF NOT EXISTS db_inventario;
USE db_inventario;

--Creamos la Tabla Proveedores--
CREATE TABLE IF NOT EXISTS proveedores(
    idProveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombreEmpresa VARCHAR(100) NOT NULL,
    nombreContacto DATE(100) NOT NULL,
    telefono VARCHAR NULL,
    direccion VARCHAR(150) NULL,
    pais VARCHAR(50) NULL,
);