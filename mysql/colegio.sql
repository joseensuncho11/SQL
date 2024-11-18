/*Modelo Fisico de la Base de Datos db_colegio y de las Tablas estudiantes, 
estudiantes,profesores y asignaturas*/

--Creamos la Base de Datos si no existe--
CREATE DATABASE IF NOT EXISTS db_colegio;
USE db_colegio;

--Creamos la Tabla Estudiantes--
CREATE TABLE IF NOT EXISTS estudiantes (
    idEstudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    grado VARCHAR(20) NOT NULL,
);

--Creamos la Tabla Profesores--
CREATE TABLE IF NOT EXISTS profesores (
    idProfesor INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50) NULL,
);

--Creamos la Tabla Citas--
CREATE TABLE IF NOT EXISTS ventas (
    idAsignatura INT PRIMARY KEY AUTO_INCREMENT,
    idProfesor INT FOREIGN KEY (idProfesor) REFERENCES Profesores (idProfesor),
    nombreAsignatura VARCHAR(100) NOT NULL
    
);