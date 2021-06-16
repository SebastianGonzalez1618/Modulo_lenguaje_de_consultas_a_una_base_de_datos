-- Ejercicio 1: Crear las siguientes consultas.

-- 1.1 Determinar nombre, apellidos, cargo y departamento al cual pertenece l empleado con el mayor sueldo.
SELECT nombre, apellidoP, apellidoM, cargo, departamento
FROM empleado
WHERE sueldo =
    (
    SELECT MAX(sueldo)
    FROM empleado
    );

-- 1.2 Determinar nombre, apellidos, cargo y departamento al cual pertenece el empleado con el menor sueldo.
SELECT nombre, apellidoP, apellidoM, cargo, departamento
FROM empleado
WHERE sueldo = 
    (
	SELECT MIN(sueldo)
    FROM empleado
    );

-- 1.3 Determinar cuántos empleados hay por departamento dentro de la empresa.
SELECT departamento, COUNT(*)
FROM empleado
GROUP BY departamento
ORDER BY COUNT(*) DESC;

-- 1.4 Determinar cuánto es el gasto total mensual en sueldos dentro de la empresa.
SELECT SUM(sueldo)
FROM empleado;

-- 1.5 Agrupar por editorial y determinar cuántos libros pertenecen a cada una.
SELECT editorial, COUNT(*)
FROM libro
GROUP BY editorial
ORDER BY COUNT(*) DESC;

-- 1.6 Determinar la cantidad de libros en existencia dentro de la biblioteca (ejemplares).
SELECT SUM(ejemplares)
FROM libro;

-- Ejercicio 2: Crear consultas usando HAVING.
SELECT categoria, COUNT(*)
FROM libro
GROUP BY (categoria)
HAVING (categoria LIKE 'Novela%');

SELECT departamento, AVG(edad)
FROM empleado
GROUP BY departamento
HAVING AVG(edad) >= 40
ORDER BY AVG(edad);