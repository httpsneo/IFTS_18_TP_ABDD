lobos# Creamos tabla 
CREATE DATABASE lobos;

# Ponemos en uso la tabla
USE lobos;

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
	FOREIGN KEY (ID_Estado_Producto) REFERENCES lobos.estados_productos(ID_Estados),
	FOREIGN KEY (ID_Categoria) REFERENCES lobos.categorias_productos(ID_Categorias)
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
	FOREIGN KEY (ID_Cliente) REFERENCES lobos.Clientes(ID_Clientes),
	FOREIGN KEY (ID_Metodo_Pago) REFERENCES lobos.Metodo_pagos(ID_Metodo_Pago),
	FOREIGN KEY (ID_Estado_Pago) REFERENCES lobos.Estado_Pagos(ID_Estado_Pago)
);

# Creamos la tabla Detalle_Pedido / carrito
CREATE TABLE IF NOT EXISTS Detalle_Pedidos(
	ID_Detalle_Pedidos INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	ID_Pedido INT NOT NULL, 
	ID_Producto INT NOT NULL,
	FOREIGN KEY (ID_PEDIDO) REFERENCES lobos.pedidos(ID_Pedidos),
	FOREIGN KEY (ID_PRODUCTO) REFERENCES lobos.productos(ID_Productos)
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

# Ingresamos datos a la tabla Productos
INSERT INTO Pedidos (ID_Cliente, ID_Estado_Pago, ID_Metodo_Pago, Cantidad_Productos, Fecha_Pedido, Valor_Total)
VALUES 
(1, 2, 2, 2, '2023-12-01 10:30:00', 45000.00),
(2, 1, 1, 1, '2023-12-02 14:00:00', 14000.00),
(3, 2, 3, 3, '2023-12-03 16:45:00', 61000.00),
(4, 4, 4, 2, '2023-12-04 18:20:00', 16000.00),
(5, 2, 5, 1, '2023-12-05 20:10:00', 3000.00),
(6, 3, 1, 1, '2023-12-06 08:15:00', 2500.00),
(7, 2, 2, 2, '2023-12-07 09:45:00', 11000.00),
(8, 1, 3, 2, '2023-12-08 11:30:00', 15000.00),
(9, 2, 4, 1, '2023-12-09 12:00:00', 4500.00),
(10, 2, 5, 2, '2023-12-10 13:20:00', 5700.00)
;

# Ingresamos datos a la tabla Detalle_Pedidos
INSERT INTO Detalle_Pedidos (ID_Pedido, ID_Producto)
VALUES 
(1, 3), (1, 5),
(2, 1),
(3, 4), (3, 7), (3, 8),
(4, 10), (4, 6),
(5, 18),
(6, 2),
(7, 9), (7, 11),
(8, 12), (8, 13),
(9, 14),
(10, 15), (10, 16)
;

-----------------------------------------------------CONSULTAS_SQL---------------------------------------------------------
# Pedidos que están pendientes de aceptarse
SELECT * FROM Pedidos WHERE ID_Estado_Pago = 1;

# Pedidos que tienen un precio menor a $5000
SELECT * FROM Productos WHERE Precio_Unitario < 5000.00;

# Total de ventas por mes
SELECT MONTH(Fecha_Pedido) AS Mes, YEAR(Fecha_Pedido) AS Año, COUNT(*) AS Total_Ventas FROM Pedidos GROUP BY YEAR(Fecha_Pedido), MONTH(Fecha_Pedido) ORDER BY Año, Mes;
