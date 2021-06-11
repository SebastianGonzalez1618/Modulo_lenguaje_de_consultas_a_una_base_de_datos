-- Ejercicio 1: Hacer 3 consultas con cada tabla creada en la clase anterior.

SELECT * FROM empleado;
SELECT nombre, apellidoP, apellidoM FROM empleado;
SELECT idEmpleado, departamento, cargo FROM empleado;

SELECT autor, nombreLibro from libro;
SELECT categoria FROM libro;
SELECT idLibro, nombreLibro, ejemplares FROM libro;


-- Ejercicio 2: Crear consultas con WHERE.

SELECT edad, nombre, apellidoP, apellidoM FROM empleado WHERE edad >= 50;
SELECT añoPublicacion, nombreLibro, autor FROM libro WHERE añoPublicacion < 1990;
SELECT autor, nombreLibro FROM libro WHERE categoria = 'Educación';


-- Ejercicio 3: Crear consultas con WHERE y operadores lógicos.

SELECT nombre, apellidoP, apellidoM, departamento, cargo, sueldo FROM empleado WHERE sueldo > 300000 AND sueldo < 500000;
SELECT nombre, apellidoP, apellidoM, edad FROM empleado WHERE edad > 55 AND edad < 103;
SELECT autor, nombreLibro FROM libro WHERE categoria = 'Biografía' OR categoria = 'Historia';
SELECT autor, nombreLibro, categoria, añoPublicacion FROM libro WHERE categoria = 'Educación' AND añoPublicacion < 2000;


-- Ejercicio 4: Crear consultas usando IN.

SELECT nombre, apellidoP, apellidoM, departamento, cargo FROM empleado WHERE departamento IN ('Producción', 'Recursos humanos');
SELECT autor, nombreLibro FROM libro WHERE editorial IN ('Planeta', 'Zig-Zag');