/*
Ejercicio 1:

Crear una base de datos con 2 tablas, agregar campos, cambiar tipo de dato a un campo, eliminar un campo.
*/

CREATE DATABASE biblioteca;

USE biblioteca;

DROP TABLE autores;
DROP TABLE libros;

CREATE TABLE autores (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nombres VARCHAR(50) NOT NULL,
apellidos VARCHAR(50) NOT NULL,
país VARCHAR(20),
anioNnacimiento INT
);

CREATE TABLE libros (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(70) NOT NULL,
autor_id INT,
anio INT,
genero VARCHAR(30)
);

ALTER TABLE autores
ADD COLUMN biografia TEXT;

ALTER TABLE libros
ADD COLUMN paginas INT;

ALTER TABLE libros
CHANGE COLUMN genero genero_id INT NOT NULL;

ALTER TABLE autores
DROP COLUMN biografia;

ALTER TABLE libros
DROP COLUMN paginas;

INSERT INTO autores (nombres, apellidos, nacionalidad, nacimiento) VALUES ('Alexandre', 'Dumas', 'Francia', 1802);
INSERT INTO autores (nombres, apellidos, nacionalidad, nacimiento) VALUES ('Miguel de', 'Cervantes Saavedra', 'España', 1547);
INSERT INTO autores (nombres, apellidos, nacionalidad, nacimiento) VALUES ('Antoine de', 'Saint-Exupéry', 'Francia', 1900);

INSERT INTO libros (titulo, autor_id, anio, genero_id) VALUES ('El Conde de Montecristo',1 , 1844, 1);
INSERT INTO libros (titulo, autor_id, anio, genero_id) VALUES ('El Ingenioso Hidalgo Don Quijote de La Mancha',2 , 1605, 2);
INSERT INTO libros (titulo, autor_id, anio, genero_id) VALUES ('El Principito',3 , 1943, 3);


/*
Ejercicio 2: Crear 2 tablas con los siguientes campos y agregar por lo menos 20 registros a cada una.

- empleado: idEmpleado, nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso
- libro: idLibro, nombreLibro, autor, editorial, edicion, añoPublicacion, categoria, ejemplares
*/

CREATE TABLE empleado (
idEmpleado INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50),
apellidoP VARCHAR(50),
apellidoM VARCHAR(50),
edad INT,
departamento VARCHAR(50),
cargo VARCHAR(50),
sueldo INT,
fechaIngreso date
);

CREATE TABLE libro (
idLibro INT AUTO_INCREMENT PRIMARY KEY,
nombreLibro VARCHAR(70),
autor VARCHAR(50),
editorial VARCHAR(50),
edicion VARCHAR(50),
anioPublicacion INT,
categoria VARCHAR(50),
ejemplares INT
);

INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Charlie', 'Evans', 'Thompson', 43, 'Recursos humanos', 'Operaciones', 315865, '2019-12-05');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Max', 'Jiménez', 'Ximénes', 54, 'Comercial', 'Dirección', 1366241, '2019-12-25');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Alex', 'Bascuñán', 'Quevedo', 59, 'Finanzas', 'Operaciones', 393473, '2020-01-01');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Jessie', 'Cameron', '', 34, 'Finanzas', 'Operaciones', 387950, '2020-01-17');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Francis', 'Fuentes', 'Urdemales', 63, 'Marketing', 'Operaciones', 367492, '2020-03-18');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Inti', 'González', 'Veloso', 54, 'Comercial', 'Operaciones', 435196, '2020-03-28');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Kelly', 'Taylor', '', 49, 'Comercial', 'Operaciones', 433821, '2020-04-22');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Robin', 'López', 'Zavala', 18, 'Recursos humanos', 'Dirección', 701068, '2020-04-25');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Taylor', 'Kelly', '', 30, 'Producción', 'Operaciones', 353890, '2020-04-27');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Alexis', 'Rojas', 'Contreras', 54, 'Producción', 'Operaciones', 336291, '2020-04-28');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Leslie', 'Hernández', 'Wagner', 25, 'Producción', 'Operaciones', 333291, '2020-06-05');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Antu', 'Linconao', 'Lemunkuyen', 44, 'Gerencia', 'Asistencia', 461238, '2020-06-06');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Sol', 'Huelet', 'Alen', 27, 'Marketing', 'Operaciones', 366612, '2020-07-03');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Monserrat', 'Keller', 'Yáñez', 36, 'Producción', 'Operaciones', 327763, '2020-07-05');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Cámeron', 'Donoso', 'Soto', 33, 'Gerencia', 'Gerencia general', 1461633, '2020-07-19');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Cris', 'Tapia', 'Rodríguez', 32, 'Recursos humanos', 'Gerencia de felicidad', 475615, '2020-07-26');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Cassidy', 'Parker', '', 33, 'Producción', 'Operaciones', 321669, '2020-08-31');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Akira', 'Aoki', 'Okada', 32, 'Marketing', 'Dirección', 900891, '2020-09-25');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Ángel', 'Pérez', 'Araya', 26, 'Producción', 'Dirección', 721000, '2020-10-08');
INSERT INTO empleado (nombre, apellidoP, apellidoM, edad, departamento, cargo, sueldo, fechaIngreso) VALUES ('Ariel', 'Cáceres', 'Ríos', 19, 'Finanzas', 'Dirección', 1081976, '2020-10-09');


INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('La novela de Genji', 'Murasaki Shikibu', 'Destino', '', 2007, 'Novela', 188);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('Lecturas para mujeres destinadas a la enseñanza del lenguaje', 'Gabriela Mistral', 'Porrúa', '9',	2005, 'Educación', 65);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('El computador y yo : (manual de autoinstrucción basic-atari)', 'Mariel Csengery Lorenzi', 'Bravo y Allende', '1', 1992, 'Educación', 189);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('El segundo sexo', 'Simone de Beauvoir', 'Debolsillo', '', 2008, 'Ensayo', 69);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('Java: Cómo Programar', 'Paul Deitel, Harvey Deitel', 'Pearson', '10', 2016, 'Educación', 188);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('Frankenstein', 'Mary Shelley', 'Alma', '', 2018, 'Novela', 207);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('Impunidad diplomática', 'Francisco Martorell', 'Planeta', '', 1993, 'Periodismo de investigación', 368);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('Don Quijote de la Mancha', 'Miguel de Cervantes', 'Alfaguara', 'IV Centenario', 2005, 'Novela', 264);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('Kanji Para Recordar', 'James Heisig, Marc Bernabé, Verónica Calafell', 'Herder', '', 2001, 'Educación', 269);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('V de Vendetta', 'Alan Moore', 'Norma', '', 2002, 'Novela gráfica', 224);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('El principito', 'Antoine de Saint-Exupéry', 'Zig-Zag', '47', 2019, 'Cuento infantil', 370);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('Papelucho', 'Marcela Paz', 'Rapa-Nui', '1',	1947, 'Cuento infantil', 387);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('El libro negro de la justicia chilena', 'Alejandra Matus', 'Planeta', '1', 1999, 'Periodismo de investigación', 185);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('El señor de los anillos I : la Comunidad del Anillo', 'J. R. R. Tolkien', 'Planeta', '', 2012, 'Novela', 160);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('Silabario Hispanoamericano', 'Adrián Dufflocq Galdames', 'Zig-Zag', '1', 1945, 'Educación', 296);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('Abre tu Mente a Los Números', 'Barbara Oakley', 'RBA', '', 2015, 'Educación', 392);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('Matar un ruiseñor', 'Harper Lee', 'Bruguera	', '', 1966, 'Novela', 143);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('El asesinato de Roger Ackroyd', 'Agatha Christie', 'Planeta', '1',	2017, 'Novela', 377);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('El Tao del Jeet Kune Do', 'Bruce Lee', 'Eyra', '', 2011, 'Artes Marciales', 377);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('Harry Potter y la piedra filosofal', 'J.K. Rowling', 'Penguin Random House', '', 2020, 'Novela', 11);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('La palabra huevón', 'Cosme Portocarrero', 'LOM', '1', 1998, 'Educación', 152);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('Un cuarto propio', 'Virginia Woolf', 'Alianza Editorial', '', 2003, 'Ensayo', 259);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('Etica Nicomaquea', 'Aristóteles', 'Porrúa', '', 1998, 'Filosofía', 179);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('La casa de los espíritus', 'Isabel Allende', 'Penguin Random House', '', 2019, 'Novela', 365);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('Lo mejor de Ciper 3 : el periodismo que remece a Chile', 'Centro de Investigación Periodística (CIPER)', 'Catalonia', '', 2016, 'Periodismo de investigación', 39);
INSERT INTO libro (nombreLibro, autor, editorial, edicion, anioPublicacion, categoria, ejemplares) VALUES ('El conde de Montecristo', 'Alexandre Dumas', 'Plutón', '', 2018, 'Novela', 100);