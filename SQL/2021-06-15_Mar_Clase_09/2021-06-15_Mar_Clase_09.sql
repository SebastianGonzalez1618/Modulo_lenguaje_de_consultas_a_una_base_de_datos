-- Ejercicio 1: Crear vistas.

-- 1.1: Mostrar cantidad de personas por departamento.
CREATE VIEW personasPorDepartamento AS
    SELECT departamento, COUNT(*) AS personas
    FROM empleado
    GROUP BY departamento
    ORDER BY COUNT(*) DESC;

-- 1.2 Mostrar libros con menos de 100 ejemplares.
CREATE VIEW pocosEjemplares AS
    SELECT nombreLibro, autor, ejemplares
    FROM libro
    WHERE ejemplares < 100
    ORDER BY ejemplares;

-- Ejercicio 2: Creación de subconsultas.

-- 2.1 Mostrar datos de la persona con mayor sueldo.
SELECT *
FROM EMPLEADO
WHERE sueldo =
  (
  SELECT MAX(sueldo)
  FROM empleado
  );


-- 2.2 Mostrar datos de libros que pertenezcan a la categoría con más ejemplares.
SELECT *
FROM libro
WHERE categoria = 
(
    SELECT categoria
    FROM libro
    GROUP BY categoria
    ORDER BY SUM(ejemplares) DESC
    LIMIT 1
)
ORDER BY ejemplares DESC;


-- Ejercicio 3: Crear consultas con JOIN.

-- 3.1 Mostrar todos los ítemes vendidos, ordenados por orden de cliente, desde la orden más reciente.
SELECT
    ordenCliente.fecha
  , ordenCliente.idOrdenCliente
  , videojuego.nombre AS videojuego
  , itemOrdenCliente.cantidad
  , itemOrdenCliente.precio
FROM ordenCliente
JOIN itemOrdenCliente
  ON ordenCliente.idOrdenCliente = itemOrdenCliente.ordenCliente_idOrdenCliente
JOIN videojuego
  ON itemOrdenCliente.videojuego_idVideojuego = videojuego.idVideojuego
ORDER BY itemOrdenCliente.ordenCliente_idOrdenCliente DESC, itemOrdenCliente.videojuego_idVideojuego;

-- 3.2 Mostrar total de dinero pagado a proveedores por mes.
SELECT
    MONTHNAME(ordenProveedor.fecha) AS mes
  , SUM(itemOrdenProveedor.precio * itemOrdenProveedor.cantidad) AS 'total pagado a proveedores'
FROM ordenProveedor
JOIN itemOrdenProveedor
  ON ordenProveedor.idOrden = itemOrdenProveedor.ordenProveedor_idOrden
GROUP BY mes
ORDER BY MONTH(ordenProveedor.fecha);