USE tulipans_clothes;
-- 1. Categorías
INSERT INTO CATEGORIA VALUES 
('Línea Esencial', 'Prendas base para un armario modesto y funcional'),
('Abayas y Sobretodos', 'Prendas exteriores de corte holgado y elegante'),
('Prendas de Rezo', 'Diseños específicos para rezo'),
('Complementos', 'Accesorios versátiles para personalizar el estilo');

-- 2. Productos
INSERT INTO PRODUCTO VALUES 
('Abaya Open-Front Lino', 49.99, 20, 'Talla Única', 'Arena, Carbón', 2),
('Vestido Nour de Rezo', 35.00, 15, 'S-M, L-XL', 'Azul Profundo', 3),
('Maxi-Cárdigan Versátil', 42.50, 10, 'Talla Única', 'Verde Bosque', 2),
('Mangas Contemporáneas', 9.00, 100, 'Talla Única', 'Negro, Marfil', 4),
('Túnica Modest Oversize', 28.00, 30, 'S-M, L-XL', 'Terracota', 1);

-- 3. Clientes
INSERT INTO CLIENTE  VALUES 
('Aisha Ejemplo', 'aisha@ejemplo.com', '6123456', 'Calle Uno, Numero 111', 1),
('Fátima Prueba', 'fatima@test.com', '6789123', 'Avenida Dos, Numero 222', 2),
('Sara Test', 'sara@demo.com', '6554433', 'Vía Tres, Numero 333', 4);

-- 4. Ventas
INSERT INTO VENTA VALUES 
(1, 'Efectivo', 1),
(1, 'Tarjeta', 2),
(2, 'Transferencia', 3);