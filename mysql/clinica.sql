/*Modelo Fisico de la Base de Datos db_clinica y la clientes, 
pacientes,doctores y citas*/

--Creamos la Base de Datos si no existe--
CREATE DATABASE IF NOT EXISTS db_clinica;
USE db_clinica;

--Creamos la Tabla Pacientes--
CREATE TABLE IF NOT EXISTS pacientes (
    idPaciente INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    fechaNacimiento DATE NULL,
);

--Creamos la Tabla Doctores--
CREATE TABLE IF NOT EXISTS doctores (
    idDoctor INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50) NOT NULL,
);

--Creamos la Tabla Citas--
CREATE TABLE IF NOT EXISTS ventas (
    idCita INT PRIMARY KEY AUTO_INCREMENT,
    idPaciente INT FOREIGN KEY (idPaciente) REFERENCES Pacientes (idPaciente),
    idDoctor INT FOREIGN KEY (idDoctor) REFERENCES Doctores (idDoctor),
    fechaCita DATETIME NOT NULL,
    MOTIVO VARCHAR(200) NULL
);