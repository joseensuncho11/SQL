/*Modelo Fisico de la Base de Datos db_tienda y la tabla empleados*/

--Creamos la Base de Datos si no existe--
CREATE DATABASE IF NOT EXISTS db_tienda;
USE db_tienda;

--Creamos la Tabla Proveedores--
CREATE TABLE IF NOT EXISTS empleados(
    idEmpleado INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    fechaNacimiento DATE(100) NOT NULL,
    fechaContratacion DATE DEFAULT CURRENT_DATE,
    puesto VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    salario VARCHAR(100) UNIQUE,
);