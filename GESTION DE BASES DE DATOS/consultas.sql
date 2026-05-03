-- 1. Consulta de catálogo
SELECT nombre, precio, stock, tallas 
FROM PRODUCTO 
WHERE id_categoria = 2;-- 2. JOIN entre tablaS
SELECT CLIENTE.nombre AS 'Clienta', PRODUCTO.nombre AS 'Prenda de Interés'
FROM CLIENTE
JOIN PRODUCTO ON CLIENTE.id_producto = PRODUCTO.id_producto;
-- 3. Listado de ventas 
SELECT id_venta, cantidad, forma_pago, id_cliente 
FROM VENTA 
WHERE forma_pago = 'Tarjeta';-- 4. Búsqueda de productos
SELECT nombre, stock, colores 
FROM PRODUCTO 
WHERE stock < 15 ;