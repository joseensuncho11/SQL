/*Modelo Fisico de la Base de Datos db_pedidos y la clientes, 
productos,ventas*/

--Creamos la Base de Datos si no existe--
CREATE DATABASE IF NOT EXISTS db_pedidos;
USE db_pedidos;

--Creamos la Tabla Clientes--
CREATE TABLE IF NOT EXISTS clientes (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
);

--Creamos la Tabla Productos--
CREATE TABLE IF NOT EXISTS productos (
    idProducto INT PRIMARY KEY AUTO_INCREMENT,
    nombreProducto VARCHAR(100) NOT NULL,
    precio DECIMAL(8,2) NOT NULL,
);

--Creamos la Tabla Ventas--
CREATE TABLE IF NOT EXISTS ventas (
    idVenta INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT FOREIGN KEY (idCliente) REFERENCES Clientes (idCliente),
    idCliente INT FOREIGN KEY (idProducto) REFERENCES Productos (idProducto),
    cantidad INT NOT NULL,
    totalVenta DECIMAL(10,2) NOT NULL
);
