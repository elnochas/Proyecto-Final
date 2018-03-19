DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda CHARACTER SET utf8mb4;
USE tienda;

CREATE TABLE usuario (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(128) NOT NULL,
  nombre VARCHAR(128) NOT NULL
);

CREATE TABLE fabricante (
  codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE producto (
  codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  precio DOUBLE NOT NULL,
  codigo_fabricante INT UNSIGNED NOT NULL,
  imagen VARCHAR(256) NOT NULL,
  descripcion VARCHAR(512) NOT NULL,
  contenido VARCHAR(300) NOT NULL,
  FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo)
);

INSERT INTO usuario VALUES (1, 'usuario@usuario.es', 'f8032d5cae3de20fcec887f395ec9a6a', 'Usuario');

INSERT INTO usuario VALUES (2, 'elnochas3443@gmail.com', '0aaf86a8243d69fbd57d96d47479b7c1', 'elpanocha23');


INSERT INTO fabricante VALUES(1,'Asus');
INSERT INTO fabricante VALUES(2,'Lenovo');
INSERT INTO fabricante VALUES(3,'Hewlett-Packard');
INSERT INTO fabricante VALUES(4,'Samsung');
INSERT INTO fabricante VALUES(5,'Seagate');
INSERT INTO fabricante VALUES(6,'Crucial');
INSERT INTO fabricante VALUES(7,'Gigabyte');
INSERT INTO fabricante VALUES(8,'Huawei');
INSERT INTO fabricante VALUES(9,'Xiaomi');

INSERT INTO producto VALUES(1,'Disco duro SATA3 1TB', 86, 5, 'images/discoduro.png', 'Seagate - Disco duro interno de 1 TB (3,5", 64 MB de cach&eacute; SATA de 6 GB/s hasta 210 MB/s), plateado.','Disco HDD');
INSERT INTO producto VALUES(2,'Memoria RAM DDR4 8GB', 120, 6, 'images/ramcrucial.png', 'Dise&ntilde;ada para ser compatible con los sistemas Mac, la memoria Crucial elimina las conjeturas relacionadas con una actualizaci&oacute;n de memoria. F&aacute;cil de instalar y respaldada por una garant&iacute;a de vida &uacute;til limitada, la memoria Crucial mejora la velocidad de tu sistema para que funcione tal y como deber&iacute;a funcionar.','Memoria Ram');
INSERT INTO producto VALUES(3,'Disco SSD 1 TB', 150, 4, 'images/ssdsamsung.png', 'Algoritmos de seguridad soportados: 256-bit AESAltura: 6,8 mmAncho: 6,985 cm Velocidad de escritura: 520 MB/sVelocidad de lectura: 540 MB/s','Disco SDD 1 Tb');
INSERT INTO producto VALUES(4,'GeForce GTX 1050Ti',185, 7, 'images/tar.png', 'GeForce GTX 1050 Ti OC 4G. PCIE 3.0 / 4 GB GDDR5 128bit 7.08GHz / 1455MHz / 768 cuda cores / DVI+HDMI+DP. Para el correcto funcionamiento de esta tarjeta gr&aacute;fica es necesario disponer de un bus PCI-ex 16x y una buena calidad de suministro de energ&iacute;a y la eficiencia en al menos 500W. Adem&aacute;s para la correcta instalaci&oacute;n de los controladores de v&iacute;deo debe estar instalado para actualizar Windows 10 Anniversary Update versi&oacute;n 1067.','Grafica');
INSERT INTO producto VALUES(5,'GeForce GTX 1080 Xtreme',755, 6, 'images/cru.png', 'Series GV-N1080AORUS X11-8GDPeso del producto 998g -Dimensiones del producto 27 x 5 x 12 cm','Grafica');
INSERT INTO producto VALUES(6,'Monitor 24 LED Full HD',202, 1, 'images/asus.png', 'Incluye una pareja de altavoces est&eacute;reo ocultos Monitor Full HD de 24" con 1 ms de tiempo de respuesta para eliminar las im&aacute;genes borrosas y ofrecer una acci&oacute;n totalmente fluida.Opciones de conectividad: HDMI, DVI-D y D-Sub Altavoces con 1 W de potencia','Monitor 24 LED Full HD');
INSERT INTO producto VALUES(7,'Monitor 27 LED Full HD',245, 1, 'images/asus27.png', 'Inspirado en un legado art&iacute;stico milenario, la nueva serie Designo MX incorpora un dise&ntilde;o muy elegante marcado por un panel sin marco con un &aacute;ngulo de visi&oacute;n de 178 grados','Monitor 27 LED Full HD');
