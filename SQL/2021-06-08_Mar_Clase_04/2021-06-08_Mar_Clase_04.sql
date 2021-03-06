-- Ejercicio 1: Crear las siguientes consultas.

-- 1.1 Determinar los datos de los libros con más de 100 ejemplares.
SELECT idLibro, autor, nombreLibro, ejemplares
FROM libro
WHERE  ejemplares > 100;

-- 1.2 Determinar el nombre, apellidoP, apellidoM y cargo de los empleados que tienen un sueldo sobre los $500.000 y que pertenecen al departamento Producción.
SELECT nombre, apellidoP, apellidoM, cargo
FROM empleado
WHERE sueldo > 500000 AND departamento = 'Producción';

-- 1.3 Determinar los datos de los libros que son de la editorial Planeta o Penguin Random House y de la categoría Novela.
SELECT idLibro, autor, nombreLibro, editorial, edicion
FROM libro
WHERE editorial IN('Planeta', 'Penguin Random House') AND categoria = 'Novela';

-- 1.4 Determinar los autores que tienen algunas de las siguientes categorias: educación o filosofía.
SELECT autor, categoria
FROM libro
WHERE categoria IN ('Educación', 'Filosofía');

-- 1.5 Determinar los empleados que pertenecen al departamento Recursos humanos.
SELECT nombre, apellidoP, apellidoM, cargo
FROM empleado
WHERE departamento = 'Recursos humanos';

-- Ejercicio 2: Crear consultas usando NOT IN.
SELECT nombre, apellidoP, apellidoM, departamento, cargo
FROM empleado
WHERE departamento NOT IN ('Comercial', 'Finanzas');

SELECT idLibro, autor, nombreLibro, editorial
FROM libro
WHERE editorial NOT IN ('Planeta', 'Zig-Zag', 'Porrúa', 'Penguin Random House');

-- Ejercicio 3: Crear consultas con <>.
SELECT nombre, apellidoP, apellidoM, departamento, cargo
FROM empleado
WHERE cargo <> 'Operaciones';

SELECT idLibro, autor, nombreLibro, añoPublicacion, categoria
FROM libro
WHERE categoria <> 'Educación';


-- Ejercicio 4: Crear consultas con BETWEEN.
SELECT idLibro, autor, nombreLibro, añoPublicacion
FROM libro
WHERE añoPublicacion BETWEEN 1990 AND 1999;

SELECT nombre, apellidoP, apellidoM, departamento, cargo, sueldo
FROM empleado
WHERE sueldo BETWEEN 500000 AND 1000000;


-- Ejercicio 5: Crear consultas con LIKE.
SELECT nombre, apellidoP, apellidoM
FROM empleado
WHERE apellidoP LIKE 'H%';

SELECT nombreLibro, autor, categoria
FROM libro
WHERE categoria LIKE 'Novela%';