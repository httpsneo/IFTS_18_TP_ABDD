-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.32-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando datos para la tabla ifts_n18_adb_tp_alfa_lobo.categorias_productos: ~5 rows (aproximadamente)
INSERT INTO `categorias_productos` (`ID_Categorias`, `Estado`) VALUES
	(1, 'remeras'),
	(2, 'buzo/camperas'),
	(3, 'pantalones'),
	(4, 'zapatillas'),
	(5, 'accesorios');

-- Volcando datos para la tabla ifts_n18_adb_tp_alfa_lobo.clientes: ~12 rows (aproximadamente)
INSERT INTO `clientes` (`ID_Clientes`, `DNI`, `Nombre`, `Apellido`, `Direccion`, `Email`, `Telefono`, `Sexo`, `Fecha_Nacimiento`) VALUES
	(1, 94034804, 'Diego Alexandro', 'Flores Nube', 'Quito 4340', 'Floresnubediego@gmail.com', '11 5142-7181', 'M', '1990-05-15'),
	(2, 12345678, 'María', 'García Pérez', 'Calle Mayor 123', 'maria@example.com', '12 3456-7890', 'F', '1985-10-20'),
	(3, 98765432, 'Juan', 'López Martínez', 'Avenida Libertad 45', 'juan@example.com', '11 2345-6789', 'M', '1978-03-12'),
	(4, 54321678, 'Ana', 'Martínez Ruiz', 'Plaza España 7', 'ana@example.com', '11 8765-4321', 'F', '1992-07-28'),
	(5, 87654322, 'Pedro', 'Rodríguez Sánchez', 'Calle Alameda 32', 'pedro@example.com', '11 9876-5432', 'M', '1980-01-08'),
	(6, 34567812, 'Laura', 'Gómez Fernández', 'Paseo del Prado 67', 'laura@example.com', '12 3456-7890', 'F', '1989-12-03'),
	(7, 23145687, 'Carlos', 'Sánchez Pérez', 'Calle Mayor 89', 'carlos@example.com', '11 6543-2109', 'M', '1987-09-17'),
	(8, 98765431, 'Marta', 'Fernández Martínez', 'Avenida de la Constitución 54', 'marta@example.com', '11 7890-1234', 'F', '1983-06-25'),
	(9, 65432178, 'David', 'Pérez Rodríguez', 'Plaza del Sol 21', 'david@example.com', '11 4321-0987', 'M', '1975-11-30'),
	(10, 87654321, 'Elena', 'Ruiz Gómez', 'Calle Gran Vía 78', 'elena@example.com', '12 3456-7890', 'F', '1995-04-18'),
	(11, 47345708, 'Lola', 'Commenge', 'Matienzo 1643', 'lolarod@example.com', '11 6032-8221', 'X', '2006-06-14'),
	(12, 19110862, 'Andres', 'Rodriguez', 'Calle Falsa 123', 'meencanta@example.com', '11 2756-6586', 'M', '1900-06-30');

-- Volcando datos para la tabla ifts_n18_adb_tp_alfa_lobo.detalle_pedidos: ~0 rows (aproximadamente)
INSERT INTO `detalle_pedidos` (`ID_Detalle_Pedidos`, `ID_Pedido`, `ID_Producto`, `ID_Estado_Pedido`) VALUES
	(1, 1, 3, 1),
	(2, 1, 8, 2),
	(3, 2, 2, 3),
	(4, 3, 3, 4),
	(5, 3, 10, 5),
	(6, 3, 12, 1),
	(7, 4, 4, 2),
	(8, 5, 5, 3),
	(9, 5, 6, 4),
	(10, 5, 7, 5),
	(11, 5, 11, 1),
	(12, 5, 13, 2),
	(13, 6, 7, 3),
	(14, 6, 14, 4),
	(15, 7, 8, 5),
	(16, 8, 9, 1),
	(17, 9, 10, 2),
	(18, 10, 1, 3);

-- Volcando datos para la tabla ifts_n18_adb_tp_alfa_lobo.estados_productos: ~2 rows (aproximadamente)
INSERT INTO `estados_productos` (`ID_Estados`, `Estado`) VALUES
	(1, 'usado'),
	(2, 'fallo fabrica');

-- Volcando datos para la tabla ifts_n18_adb_tp_alfa_lobo.estado_pagos: ~4 rows (aproximadamente)
INSERT INTO `estado_pagos` (`ID_Estado_Pago`, `Tipo_Pago`) VALUES
	(1, 'pendiente'),
	(2, 'completado'),
	(3, 'fallido'),
	(4, 'reembolsado');

-- Volcando datos para la tabla ifts_n18_adb_tp_alfa_lobo.estado_pedidos: ~0 rows (aproximadamente)
INSERT INTO `estado_pedidos` (`ID_Estado_Pedido`, `Estado`) VALUES
	(1, 'en preparacion'),
	(2, 'pendiente de envio'),
	(3, 'enviado'),
	(4, 'entregado'),
	(5, 'reembolsado');

-- Volcando datos para la tabla ifts_n18_adb_tp_alfa_lobo.metodo_pagos: ~5 rows (aproximadamente)
INSERT INTO `metodo_pagos` (`ID_Metodo_Pago`, `Tipo_Pago`) VALUES
	(1, 'Efectivo'),
	(2, 'Tarjeta'),
	(3, 'Criptomonedas'),
	(4, 'Transferencia'),
	(5, 'PayPal');

-- Volcando datos para la tabla ifts_n18_adb_tp_alfa_lobo.pedidos: ~0 rows (aproximadamente)
INSERT INTO `pedidos` (`ID_Pedidos`, `ID_Cliente`, `ID_Estado_Pago`, `ID_Metodo_Pago`, `Cantidad_Productos`, `Fecha_Pedido`, `Valor_Total`) VALUES
	(1, 1, 2, 1, 2, '2024-01-10 10:00:00', 28000.00),
	(2, 2, 1, 2, 1, '2024-02-15 15:30:00', 2500.00),
	(3, 3, 2, 3, 3, '2024-03-20 12:45:00', 32000.00),
	(4, 4, 3, 4, 1, '2024-04-25 14:00:00', 4000.00),
	(5, 5, 1, 5, 5, '2024-05-30 09:30:00', 10500.00),
	(6, 6, 2, 1, 2, '2024-06-05 11:15:00', 5700.00),
	(7, 7, 3, 2, 1, '2024-07-10 16:00:00', 5000.00),
	(8, 8, 4, 3, 1, '2024-08-15 13:45:00', 12000.00),
	(9, 9, 2, 4, 1, '2024-09-20 08:00:00', 5400.00),
	(10, 10, 2, 5, 1, '2024-10-25 17:30:00', 6000.00);

-- Volcando datos para la tabla ifts_n18_adb_tp_alfa_lobo.productos: ~20 rows (aproximadamente)
INSERT INTO `productos` (`ID_Productos`, `Nombre`, `Descripcion`, `Precio_Unitario`, `Stock`, `Fecha_Alta`, `ID_Estado_Producto`, `ID_Categoria`) VALUES
	(1, 'Remera H&M', 'Remera rosa oversize', 14000.00, 1, '2023-01-10', 1, 1),
	(2, 'Pantalón Adidas', 'Pantalón deportivo negro', 2500.00, 1, '2023-02-15', 1, 3),
	(3, 'Zapatillas Nike Air Max', 'Zapatillas deportivas blancas', 25000.00, 1, '2023-03-20', 1, 4),
	(4, 'Buzo Nike', 'Buzo holgado con capucha gris', 4000.00, 1, '2023-04-25', 1, 2),
	(5, 'Gorra Adidas', 'Gorra negra con visera recta', 300.00, 1, '2023-05-30', 1, 5),
	(6, 'Pantalón Puma', 'Pantalón deportivo azul', 2850.00, 1, '2023-06-05', 1, 3),
	(7, 'Remera GAP', 'Remera básica blanca', 5000.00, 1, '2023-07-10', 1, 1),
	(8, 'Zapatillas Adidas Superstar', 'Zapatillas casuales negras', 12000.00, 1, '2023-08-15', 1, 4),
	(9, 'Buzo 47 Street', 'Buzo con el logo de Morat', 5400.00, 1, '2023-09-20', 1, 2),
	(10, 'Remera Forever 21', 'Remera para salir de fiesta', 6000.00, 1, '2023-10-25', 1, 1),
	(11, 'Campera The North Face', 'Campera impermeable para montaña', 30000.00, 1, '2023-11-05', 1, 2),
	(12, 'Mochila Jansport', 'Mochila escolar resistente', 4500.00, 1, '2023-12-10', 1, 5),
	(13, 'Sombrero Panama', 'Sombrero de ala ancha para el sol', 3200.00, 1, '2023-01-15', 1, 5),
	(14, 'Bufanda de Lana', 'Bufanda abrigada de lana natural', 1500.00, 1, '2023-02-20', 1, 5),
	(15, 'Gafas Ray-Ban', 'Gafas de sol con protección UV', 8000.00, 1, '2023-03-25', 1, 5),
	(16, 'Reloj Casio', 'Reloj digital resistente al agua', 12000.00, 1, '2023-04-30', 1, 5),
	(17, 'Bolso Deportivo Nike', 'Bolso para gimnasio y deporte', 2500.00, 1, '2023-05-05', 1, 5),
	(18, 'Cinturón de Cuero', 'Cinturón de cuero genuino', 3000.00, 1, '2023-06-10', 1, 5),
	(19, 'Guantes de Invierno', 'Guantes abrigados para el frío', 1200.00, 1, '2023-07-15', 1, 5),
	(20, 'Calcetines de Algodón', 'Pack de 3 pares de calcetines', 900.00, 1, '2023-08-20', 1, 5);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;