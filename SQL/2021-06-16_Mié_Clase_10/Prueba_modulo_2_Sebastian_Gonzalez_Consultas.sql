-- 1. Mostrar libros con precio entre $5000 y $10000, ordenados de menor a mayor precio.
SELECT titulo, precioActual, stock
FROM libro
WHERE precioActual BETWEEN 5000 AND 10000
ORDER BY precioActual;


-- 2. Mostrar libros que comiencen con "A".
SELECT titulo, precioActual, stock
FROM libro
WHERE titulo LIKE "A%";


-- 3. Mostrar editoriales que comiencen con "P", excepto "Planeta" y "Porrúa".
SELECT DISTINCT editorial
FROM libro
WHERE editorial LIKE 'P%' AND editorial NOT IN ('Planeta', 'Porrúa')
ORDER BY editorial;


-- 4. En preparación para los días Cyber, aumentar el precio actual de todos los libros al doble.
UPDATE libro SET precioActual = precioActual * 2;

-- 5. Al comenzar los días Cyber, devolver los precios a su valor original.
UPDATE libro SET precioActual = precioActual / 2;


-- 6. Mostrar total de títulos por editorial, de mayor a menor, sólo para editoriales que tengan más de 1 título.
SELECT editorial, COUNT(*) AS ejemplares
FROM libro
GROUP BY editorial
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;


-- 7. Mostrar stock de libros por cada editorial, para editoriales con 100 o menos ejemplares.
SELECT editorial, SUM(stock)
FROM libro
GROUP BY editorial
HAVING SUM(stock) <= 100
ORDER BY SUM(stock) DESC;


-- 8. Mostrar fecha, nombre de cliente, dirección de despacho, teléfono de cliente, email de cliente para la última venta realizada.
SELECT fecha, nombre, direccionDespacho, telefono, email
FROM cliente
JOIN orden
ON cliente_idCliente = idCliente
WHERE fecha =
	(
	SELECT MAX(fecha) FROM orden
    );
SELECT * FROM cliente;


-- 9. Mostrar fecha, nombre de cliente, dirección de despacho, título, cantidad y precio de todas las ventas, desde la última hacia atrás.
SELECT 
  fecha, cliente.nombre, direccionDespacho, titulo, cantidad, precio
FROM cliente
JOIN orden
  ON idCliente = cliente_idCliente
JOIN item
  ON idOrden = orden_idOrden
JOIN libro
  ON libro_idLibro = idLibro
ORDER BY fecha DESC;


-- 10. Mostrar ranking de libros con más ejemplares vendidos. 
SELECT titulo, SUM(cantidad)
FROM libro
JOIN item
ON idLibro = libro_idLibro
JOIN orden
on idOrden = orden_idOrden
GROUP BY titulo
ORDER BY SUM(cantidad) DESC;


-- 11. Mostrar ranking de clientes que han gastado más dinero, con su nombre, total de ejemplares y total de dinero gastado.
SELECT nombre, SUM(cantidad) AS 'ejemplares', SUM(precio) AS '$'
FROM cliente
JOIN orden
  ON idCliente = cliente_idCliente
JOIN item
  ON idOrden = orden_idOrden
GROUP BY (fecha), nombre
ORDER BY SUM(precio) DESC;


-- 12. Mostrar ventas totales (en pesos y en cantidad de libros) por mes.
SELECT 
    MONTHNAME(fecha) AS 'mes'
  , SUM(precio) AS 'ventas ($)'
  , SUM(cantidad) AS 'ventas (libros)'
FROM cliente
JOIN orden
  ON idCliente = cliente_idCliente
JOIN item
  ON idOrden = orden_idOrden
JOIN libro
  ON libro_idLibro = idLibro
GROUP BY MONTHNAME(fecha);


-- 13. Mostrar nombres de clientes que hayan efectuado compras entre el 15 y el 31 de mayo de 2021.
SELECT fecha, nombre
FROM cliente
JOIN orden
ON cliente_idCliente = idCliente
WHERE fecha BETWEEN '2021-05-15' AND '2021-05-31'
ORDER BY fecha DESC;

-- 7.1. Mostrar nombre y datos de contacto de clientes.
CREATE VIEW contactoClientes AS
SELECT nombre, telefono, email FROM cliente;

-- 7.2. Mostrar titulo y autor de libros.
CREATE VIEW tituloAutor AS
SELECT titulo, nombre
FROM libro
JOIN autor
ON autor_idAutor = idAutor
ORDER BY titulo;