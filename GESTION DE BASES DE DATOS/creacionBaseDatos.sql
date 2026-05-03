-- 1. Limpieza del codigo para evitar posibles errores.
DROP DATABASE IF EXISTS tulipans_clothes;
CREATE DATABASE tulipans_clothes;
USE tulipans_clothes;-- 2. Tabla CATEGORIA
CREATE TABLE CATEGORIA (
id_categoria INT AUTO_INCREMENT PRIMARY KEY,
nombre_categoria VARCHAR(100) NOT NULL,
descripcion TEXT,
estado VARCHAR(20) DEFAULT 'Activo'
);
-- 3. Tabla PRODUCTO
CREATE TABLE PRODUCTO (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    tallas VARCHAR(50),
    colores VARCHAR(50),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES CATEGORIA(id_categoria)
);-- 4. Tabla CLIENTE 
CREATE TABLE CLIENTE (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    telefono VARCHAR(20),
    direccion VARCHAR(255),
    id_producto INT, 
    FOREIGN KEY (id_producto) REFERENCES PRODUCTO(id_producto)
);-- 5. Tabla VENTA
CREATE TABLE VENTA (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
cantidad INT NOT NULL,
forma_pago VARCHAR(50),
id_cliente INT,
FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);