-- Ejercicio 1: Crear las siguientes consultas.

-- 1.1 Determinar los datos de los libros que no pertenecen a dos editoriales.
SELECT *
FROM libro
WHERE editorial NOT IN ('Porrúa', 'Alfaguara', 'Bruguera');

-- 1.2 Determinar los datos nombreLibro, editorial y ejemplares de los libros cuyos ejemplares se encuentren entre 100 y 330.
SELECT nombreLibro, editorial, ejemplares
FROM libro
WHERE ejemplares BETWEEN 100 AND 330;

-- 1.3 Determinar el nombre, apellidoP y cargo de los empleados que tienen un sueldo entre $550.000 y $750.000.
SELECT nombre, apellidoP, cargo
FROM empleado
WHERE sueldo BETWEEN 350000 AND 750000;


-- Ejercicio 2: Crear consultas usando ORDER BY.
SELECT nombreLibro, ejemplares
FROm libro
ORDER BY ejemplares DESC;

SELECT nombre, apellidoP, apellidoM, fechaIngreso
FROM empleado
ORDER BY fechaIngreso;


-- Ejercicio 3: Hacer consultas con funciones.
SELECT
    COUNT(*) AS 'Total libros',
    SUM(ejemplares) AS 'Total ejemplares'
FROM libro;

SELECT
    SUM(sueldo) AS 'Total sueldos',
    AVG(sueldo) AS 'Sueldo promedio',
    MAX(sueldo) AS 'Sueldo mayor',
    MIN(sueldo) AS 'Sueldo menor',
    MAX(sueldo) / MIN(sueldo) AS 'Sueldo mayor / Sueldo menor'
FROM empleado;


-- Ejercicio 4: Hacer consultas con GROUP BY.
SELECT categoria, COUNT(*) AS ejemplares
FROM libro
GROUP BY categoria
ORDER BY ejemplares DESC;

SELECT departamento, AVG(sueldo)
FROM empleado
GROUP BY departamento
ORDER BY AVG(sueldo);