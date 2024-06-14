# Creamos tabla 
CREATE DATABASE IFTS_N18_ADB_TP_ALFA_LOBO;

# Ponemos en uso la tabla
USE IFTS_N18_ADB_TP_ALFA_LOBO;

# Creamos la tabla Clientes
CREATE TABLE IF NOT EXISTS Clientes(
	ID_Clientes INT NOT NULL PRIMARY KEY AUTO_INCREMENT,  
   DNI INT(9) NOT NULL UNIQUE,
   Nombre VARCHAR(30) NOT NULL,
   Apellido VARCHAR(50) NOT NULL,
   Direccion VARCHAR(75) NOT NULL,
   Email VARCHAR(60) NOT NULL,
   Telefono VARCHAR(15) NOT NULL,
   Sexo CHAR(1),
   Fecha_Nacimiento DATE
);

# Creamos la tabla Estados
CREATE TABLE IF NOT EXISTS Estados_Productos(
	ID_Estados INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Estado VARCHAR(15)
);

# Creamos la tabla Categorias
CREATE TABLE IF NOT EXISTS Categorias_Productos(
	ID_Categorias INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Estado VARCHAR(15)
);

# Creamos la tabla Productos
CREATE TABLE IF NOT EXISTS Productos (
	ID_Productos INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Nombre VARCHAR(30),
	Descripcion TEXT,
	Precio_Unitario DECIMAL(10, 2),
	Stock BOOLEAN,
	Fecha_Alta DATE,
	ID_Estado_Producto INT NOT NULL,
	ID_Categoria INT NOT NULL,
	FOREIGN KEY (ID_Estado_Producto) REFERENCES IFTS_N18_ADB_TP_ALFA_LOBO.estados_productos(ID_Estados),
	FOREIGN KEY (ID_Categoria) REFERENCES IFTS_N18_ADB_TP_ALFA_LOBO.categorias_productos(ID_Categorias)
);

# Creamos la tabla Metodo_Pago
CREATE TABLE IF NOT EXISTS Metodo_Pagos(
	ID_Metodo_Pago INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Tipo_Pago VARCHAR(15) NOT NULL
);

# Creamos la tabla Estado_Pagos
CREATE TABLE IF NOT EXISTS Estado_Pagos(
	ID_Estado_Pago INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Tipo_Pago VARCHAR(15) NOT NULL
);

# Creamos la tabla Pedidos
CREATE TABLE IF NOT EXISTS Pedidos(
	ID_Pedidos INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	ID_Cliente INT NOT NULL,
	ID_Estado_Pago INT NOT NULL,
	ID_Metodo_Pago INT NOT NULL,
	Cantidad_Productos INT(2),
	Fecha_Pedido DATETIME, 
	Valor_Total DECIMAL(10, 2),
	FOREIGN KEY (ID_Cliente) REFERENCES IFTS_N18_ADB_TP_ALFA_LOBO.Clientes(ID_Clientes),
	FOREIGN KEY (ID_Metodo_Pago) REFERENCES IFTS_N18_ADB_TP_ALFA_LOBO.Metodo_pagos(ID_Metodo_Pago),
	FOREIGN KEY (ID_Estado_Pago) REFERENCES IFTS_N18_ADB_TP_ALFA_LOBO.Estado_Pagos(ID_Estado_Pago)
);

#Creamos la tabla estado del pedido
CREATE TABLE IF NOT EXISTS Estado_Pedidos (
	ID_Estado_Pedido INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Estado VARCHAR(20)
);

# Creamos la tabla Detalle_Pedido / carrito
CREATE TABLE IF NOT EXISTS Detalle_Pedidos(
	ID_Detalle_Pedidos INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	ID_Pedido INT NOT NULL, 
	ID_Producto INT NOT NULL,
	ID_Estado_Pedido INT NOT NULL,
	FOREIGN KEY (ID_Pedido) REFERENCES IFTS_N18_ADB_TP_ALFA_LOBO.pedidos(ID_Pedidos),
	FOREIGN KEY (ID_Producto) REFERENCES IFTS_N18_ADB_TP_ALFA_LOBO.productos(ID_Productos),
	FOREIGN KEY (ID_Estado_Pedido) REFERENCES IFTS_N18_ADB_TP_ALFA_LOBO.estado_pedidos(ID_Estado_Pedido)
);

----------------------------------------INGRESO DE DATOS------------------------------------------------------------------
# Ingresamos datos a la tabla Estados
INSERT INTO Estados_Productos (Estado)
VALUES 
('usado'),
('fallo fabrica')
;

# Ingresamos datos a la tabla Categoria
INSERT INTO Categorias_Productos (Estado)
VALUES 
('remeras'),
('buzo/camperas'),
('pantalones'),
('zapatillas'),
('accesorios')
;

# Ingresamos datos a la tabla Metodo_Pago
INSERT INTO Metodo_Pagos (Tipo_Pago)
VALUES 
('Efectivo'),
('Tarjeta'),
('Criptomonedas'),
('Transferencia'),
('PayPal')
;

# Ingresamos datos a la tabla Estado_Pago
INSERT INTO Estado_Pagos (Tipo_Pago)
VALUES 
('pendiente'),
('completado'),
('fallido'),
('reembolsado')
;

# Ingresamos datos a la tabla Productos
INSERT INTO Productos (Nombre, Descripcion, Precio_Unitario, Stock, Fecha_Alta, ID_Estado_Producto, ID_Categoria)
VALUES 
('Remera H&M', 'Remera rosa oversize', 14000.00, TRUE, '2023-01-10', 1, 1),
('Pantalón Adidas', 'Pantalón deportivo negro', 2500.00, TRUE, '2023-02-15', 1, 3),
('Zapatillas Nike Air Max', 'Zapatillas deportivas blancas', 25000.00, TRUE, '2023-03-20', 1, 4),
('Buzo Nike', 'Buzo holgado con capucha gris', 4000.00, TRUE, '2023-04-25', 1, 2),
('Gorra Adidas', 'Gorra negra con visera recta', 300.00, TRUE, '2023-05-30', 1, 5),
('Pantalón Puma', 'Pantalón deportivo azul', 2850.00, TRUE, '2023-06-05', 1, 3),
('Remera GAP', 'Remera básica blanca', 5000.00, TRUE, '2023-07-10', 1, 1),
('Zapatillas Adidas Superstar', 'Zapatillas casuales negras', 12000.00, TRUE, '2023-08-15', 1, 4),
('Buzo 47 Street', 'Buzo con el logo de Morat', 5400.00, TRUE, '2023-09-20', 1, 2),
('Remera Forever 21', 'Remera para salir de fiesta', 6000.00, TRUE, '2023-10-25', 1, 1),
('Campera The North Face', 'Campera impermeable para montaña', 30000.00, TRUE, '2023-11-05', 1, 2),
('Mochila Jansport', 'Mochila escolar resistente', 4500.00, TRUE, '2023-12-10', 1, 5),
('Sombrero Panama', 'Sombrero de ala ancha para el sol', 3200.00, TRUE, '2023-01-15', 1, 5),
('Bufanda de Lana', 'Bufanda abrigada de lana natural', 1500.00, TRUE, '2023-02-20', 1, 5),
('Gafas Ray-Ban', 'Gafas de sol con protección UV', 8000.00, TRUE, '2023-03-25', 1, 5),
('Reloj Casio', 'Reloj digital resistente al agua', 12000.00, TRUE, '2023-04-30', 1, 5),
('Bolso Deportivo Nike', 'Bolso para gimnasio y deporte', 2500.00, TRUE, '2023-05-05', 1, 5),
('Cinturón de Cuero', 'Cinturón de cuero genuino', 3000.00, TRUE, '2023-06-10', 1, 5),
('Guantes de Invierno', 'Guantes abrigados para el frío', 1200.00, TRUE, '2023-07-15', 1, 5),
('Calcetines de Algodón', 'Pack de 3 pares de calcetines', 900.00, TRUE, '2023-08-20', 1, 5)
;


# Ingresamos datos a la tabla Clientes
INSERT INTO Clientes (DNI, Nombre, Apellido, Direccion, Email, Telefono, Sexo, Fecha_Nacimiento)
VALUES 
(94034804, 'Diego Alexandro', 'Flores Nube', 'Quito 4340', 'Floresnubediego@gmail.com', '11 5142-7181', 'M', '1990-05-15'),
(12345678, 'María', 'García Pérez', 'Calle Mayor 123', 'maria@example.com', '12 3456-7890', 'F', '1985-10-20'),
(98765432, 'Juan', 'López Martínez', 'Avenida Libertad 45', 'juan@example.com', '11 2345-6789', 'M', '1978-03-12'),
(54321678, 'Ana', 'Martínez Ruiz', 'Plaza España 7', 'ana@example.com', '11 8765-4321', 'F', '1992-07-28'),
(87654322, 'Pedro', 'Rodríguez Sánchez', 'Calle Alameda 32', 'pedro@example.com', '11 9876-5432', 'M', '1980-01-08'),
(34567812, 'Laura', 'Gómez Fernández', 'Paseo del Prado 67', 'laura@example.com', '12 3456-7890', 'F', '1989-12-03'),
(23145687, 'Carlos', 'Sánchez Pérez', 'Calle Mayor 89', 'carlos@example.com', '11 6543-2109', 'M', '1987-09-17'),
(98765431, 'Marta', 'Fernández Martínez', 'Avenida de la Constitución 54', 'marta@example.com', '11 7890-1234', 'F', '1983-06-25'),
(65432178, 'David', 'Pérez Rodríguez', 'Plaza del Sol 21', 'david@example.com', '11 4321-0987', 'M', '1975-11-30'),
(87654321, 'Elena', 'Ruiz Gómez', 'Calle Gran Vía 78', 'elena@example.com', '12 3456-7890', 'F', '1995-04-18'),
(47345708, 'Lola', 'Commenge', 'Matienzo 1643', 'lolarod@example.com', '11 6032-8221', 'X', '2006-06-14'),
(19110862, 'Andres', 'Rodriguez', 'Calle Falsa 123', 'meencanta@example.com', '11 2756-6586', 'M', '1900-06-30')
;

# Ingresamos datos a la tabla Pedidos
INSERT INTO Estado_Pedidos (Estado)
VALUES 
('en preparacion'),
('pendiente de envio'),
('enviado'),
('entregado'),
('reembolsado')
;

# Ingresamos datos a la tabla Pedidos
INSERT INTO Pedidos (ID_Cliente, ID_Estado_Pago, ID_Metodo_Pago, Cantidad_Productos, Fecha_Pedido, Valor_Total)
VALUES
(1, 2, 1, 2, '2024-01-10 10:00:00', 28000.00),
(2, 1, 2, 1, '2024-02-15 15:30:00', 2500.00),
(3, 2, 3, 3, '2024-03-20 12:45:00', 32000.00),
(4, 3, 4, 1, '2024-04-25 14:00:00', 4000.00),
(5, 1, 5, 5, '2024-05-30 09:30:00', 10500.00),
(6, 2, 1, 2, '2024-06-05 11:15:00', 5700.00),
(7, 3, 2, 1, '2024-07-10 16:00:00', 5000.00),
(8, 4, 3, 1, '2024-08-15 13:45:00', 12000.00),
(9, 2, 4, 1, '2024-09-20 08:00:00', 5400.00),
(10, 2, 5, 1, '2024-10-25 17:30:00', 6000.00)
;
SELECT * FROM pedidos;
# Ingresamos datos a la tabla Detalle_Pedidos
INSERT INTO Detalle_Pedidos (ID_Pedido, ID_Producto, ID_Estado_Pedido)
VALUES
(1, 3, 1), (1, 8, 2),
(2, 2, 3),
(3, 3, 4), (3, 10, 5), (3, 12, 1),
(4, 4, 2),
(5, 5, 3), (5, 6, 4), (5, 7, 5), (5, 11, 1), (5, 13, 2),
(6, 7, 3), (6, 14, 4),
(7, 8, 5),
(8, 9, 1),
(9, 10, 2),
(10, 1, 3)
;
-----------------------------------------------------CONSULTAS_SQL---------------------------------------------------------
# Listar nombre de clientes, cantidad de productos y valor total de los pedidos con estado pendiente
SELECT 
    Clientes.Nombre AS Nombre_Cliente,  
    Pedidos.Cantidad_Productos, 
    Pedidos.Valor_Total
FROM 
    Pedidos
JOIN 
    Clientes ON Pedidos.ID_Cliente = Clientes.ID_Clientes
JOIN 
    Detalle_Pedidos ON Pedidos.ID_Pedidos = Detalle_Pedidos.ID_Pedido
JOIN 
    Productos ON Detalle_Pedidos.ID_Producto = Productos.ID_Productos
JOIN 
    Estado_Pedidos ON Detalle_Pedidos.ID_Estado_Pedido = Estado_Pedidos.ID_Estado_Pedido
WHERE 
    Estado_Pedidos.Estado = 'pendiente de envio';
    
# Listar todos los productos con precio menor o igual a $ 5000
SELECT Nombre, Precio_Unitario FROM Productos WHERE Precio_Unitario <= 5000.00;

# Listar el total de ventas por mes
SELECT MONTH(Fecha_Pedido) AS Mes, YEAR(Fecha_Pedido) AS Año, COUNT(*) AS Total_Ventas FROM Pedidos GROUP BY YEAR(Fecha_Pedido), MONTH(Fecha_Pedido) ORDER BY Año, Mes;