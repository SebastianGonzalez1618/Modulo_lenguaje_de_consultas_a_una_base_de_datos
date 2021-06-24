-- Insertar datos de muestra a la base de datos de tienda de videojuegos para probar consultas.
INSERT INTO videojuego(nombre, plataforma, genero, precioactual, stock)
VALUES
      ('videojuego1', 'plataforma1', 'genero1', 1000, 1)
    , ('videojuego2', 'plataforma2', 'genero2', 2000, 2)
    , ('videojuego3', 'plataforma3', 'genero3', 3000, 3)
    , ('videojuego4', 'plataforma4', 'genero4', 4000, 4)
    , ('videojuego5', 'plataforma5', 'genero5', 5000, 5)
    ;


INSERT INTO proveedor(nombre, dirección, telefono, email)
VALUES
      ('proveedor1', 'dirección1', 'teléfono1', 'email1')
    , ('proveedor2', 'dirección2', 'teléfono1', 'email2')
    , ('proveedor3', 'dirección3', 'teléfono1', 'email3')
    , ('proveedor4', 'dirección4', 'teléfono1', 'email4')
    , ('proveedor5', 'dirección5', 'teléfono1', 'email5')
    ;


INSERT INTO cliente (nombre, dirección, telefono)
VALUES
      ('cliente1', 'dirección1', 'teléfono1')
    , ('cliente2', 'dirección2', 'teléfono1')
    , ('cliente3', 'dirección3', 'teléfono1')
    , ('cliente4', 'dirección4', 'teléfono1')
    , ('cliente5', 'dirección5', 'teléfono1')
    ;


INSERT INTO ordenProveedor(proveedor_idProveedor, fecha)
VALUES
      (1, '2021-01-01')
    , (2, '2021-02-02')
    , (2, '2021-02-28')
    , (3, '2021-03-03')
    , (2, '2021-03-13')
    , (1, '2021-04-23')
    ;


INSERT INTO itemOrdenProveedor (ordenProveedor_idOrden, videojuego_idVideojuego, cantidad, precio)
VALUES
      (1, 1, 10, 1000)
    , (2, 2, 20, 2000)
    , (2, 3, 30, 3000)
    , (3, 3, 30, 3000)
    , (3, 4, 40, 4000)
    , (3, 5, 50, 5000)
    , (4, 4, 40, 5000)
    , (5, 3, 60, 5000)
    , (5, 5, 100, 5000)
    , (6, 1, 10, 1000)
    , (6, 3, 10, 2000)
    , (6, 5, 10, 3000)
    ;


INSERT INTO ordenCliente(cliente_idcliente, fecha)
VALUES
      (1, '2021-01-10')
    , (2, '2021-01-10')
    , (3, '2021-01-11')
    , (4, '2021-01-11')
    , (5, '2021-01-11')
    , (1, '2021-02-15')
    , (2, '2021-01-20')
    , (3, '2021-03-03')
    ;


INSERT INTO itemOrdenCliente (ordenCliente_idOrdenCliente, videojuego_idVideojuego, cantidad, precio)
VALUES
      (1, 1, 1, 1100)
    , (2, 2, 2, 2200)
    , (2, 3, 3, 3300)
    , (3, 3, 3, 3300)
    , (3, 4, 4, 4400)
    , (3, 5, 5, 5500)
    , (4, 1, 1, 1100)
    , (4, 2, 2, 2200)
    , (4, 3, 3, 3300)
    , (4, 4, 4, 4400)
    , (5, 1, 1, 1100)
    , (5, 2, 2, 2200)
    , (5, 3, 3, 3300)
    , (5, 4, 4, 4400)
    , (5, 5, 5, 5500)
    , (6, 1, 3, 1100)
    , (6, 2, 2, 2200)
    , (6, 3, 1, 3300)
    , (7, 3, 2, 3300)
    , (7, 4, 1, 4400)
    , (7, 5, 3, 5500)
    , (8, 5, 3, 5500)
    , (8, 4, 2, 4400)
    , (8, 3, 2, 3300)
    , (8, 2, 2, 2200)
    ;