/*
Actividades del día 4, semana 6.

(Jueves 3 de junio de 2021)

Comenzamos a estudiar bases de datos relacionales y MySQL. Hoy vimos cómo crear una base de datos, y dentro de ella, una tabla.

*/

CREATE DATABASE pruebadb CHARACTER SET utf8;

USE pruebadb;

CREATE TABLE primeraTabla(
id_primeraT INT AUTO_INCREMENT,
nombre VARCHAR(20),
estatura FLOAT,
fechaNacimiento DATE,
descripcion TEXT,
PRIMARY KEY(id_primeraT)
);