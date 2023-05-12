--TABLA PRODUCTO
create table tb_Producto(
	id_producto int not null,
	Producto varchar(200) not null,
	Precio_unitario float not null
)

--PK
alter table tb_Producto add constraint pk_id_producto primary key (id_producto);

--drop table tb_Producto;

--TABLA PROVEEDOR
create table tb_Proveedor (
	id_proveedor int not null,
	Proveedor varchar(250) not null,
	Direccion varchar(150) not null,
	telefono int not null
)

--PK
alter table tb_Proveedor add constraint pk_id_proveedor primary key (id_proveedor);

--drop table tb_Proveedor;

--TABLA VENTA
create table tb_Venta (
	id_venta int not null,
	id_producto int not null,
	id_proveedor int not null,
	id_cliente int not null,
	cantidad int not null,
	precio_total float not null,
	fecha date not null
)

--PK
alter table tb_Venta add constraint pk_id_venta primary key (id_venta);

--FK
alter table tb_Venta add constraint fk_id_producto foreign key (id_producto) references tb_Producto(id_producto);
alter table tb_Venta add constraint fk_id_proveedor foreign key (id_proveedor) references tb_Proveedor(id_proveedor);
alter table tb_Venta add constraint fk_id_cliente foreign key (id_cliente) references tb_Cliente(id_cliente);


--drop table tb_Venta;

--TABLA TIPO DE CLIENTE
create table tb_Tipo_cliente(
	id_tipo_cliente int not null,
	tipo_cliente varchar(100) not null
)

--PK
alter table tb_Tipo_cliente add constraint pk_id_tipo_cliente primary key (id_tipo_cliente);

--TABLA CLIENTE
create table tb_Cliente (
	id_cliente INT NOT NULL,
    nombre VARCHAR(200) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    telefono INT NOT NULL,
    id_tipo_cliente INT NOT NULL,
)

--PK
alter table tb_Cliente add constraint pk_id_cliente primary key (id_cliente);

--FK
alter table tb_Cliente add constraint fk_id_tipo_cliente foreign key (id_tipo_cliente) references tb_Tipo_cliente(id_tipo_cliente);

----------------------------------------------------------------------------------------------------------------------------
--INGRESAR DATOS EN LA TABLA PRODUCTO
insert into tb_Producto (id_producto, Producto, Precio_unitario)
values (1, 'Camiseta', 19.99),
	   (2, 'Pantalón', 39.99),
	   (3, 'Zapatos', 59.99),
	   (4, 'Gorra', 9.99),
	   (5, 'Bolso', 29.99),
	   (6, 'Reloj', 99.99),
	   (7, 'Chaqueta', 79.99),
	   (8, 'Pulsera', 14.99),
	   (9, 'Anillo', 24.99),
	   (10, 'Cartera', 49.99)
go

--INGRESAR DATOS EN LA TABLA PROVEEDOR
insert into tb_Proveedor (id_proveedor, Proveedor, Direccion, telefono)
values (1, 'Proveedor A', 'Calle 123, Ciudad A', 123456789),
	   (2, 'Proveedor B', 'Avenida 456, Ciudad B', 987654321),
	   (3, 'Proveedor C', 'Carrera 789, Ciudad C', 555555555),
	   (4, 'Proveedor D', 'Calle 987, Ciudad D', 111111111),
	   (5, 'Proveedor E', 'Avenida 654, Ciudad E', 999999999),
	   (6, 'Proveedor F', 'Carrera 321, Ciudad F', 777777777),
	   (7, 'Proveedor G', 'Calle 555, Ciudad G', 888888888),
	   (8, 'Proveedor H', 'Avenida 222, Ciudad H', 444444444)
go

--INSERTAR DATOS EN LA TABLA TIPO DE CLIENTE
INSERT INTO tb_Tipo_cliente (id_tipo_cliente, tipo_cliente)
VALUES (1, 'Cliente Regular'),
       (2, 'Cliente Premium'),
       (3, 'Cliente Corporativo')
GO

--INSERTAR DATOS EN LA TABLA CLIENTE
INSERT INTO tb_Cliente (id_cliente, nombre, direccion, telefono, id_tipo_cliente)
VALUES
    (1, 'Juan Perez', 'Calle 123', 123456789, 1),
    (2, 'Ana Sanchez', 'Avenida 456', 987654321, 2),
    (3, 'Pedro Gomez', 'Carrera 789', 456789123, 1),
    (4, 'Maria Lopez', 'Callejón 321', 789123456, 1),
    (5, 'Carlos Ramirez', 'Plaza 567', 321654987, 3),
    (6, 'Laura Torres', 'Avenida 890', 654987321, 2),
    (7, 'Luis Garcia', 'Calle 234', 123987456, 1),
    (8, 'Sofia Fernandez', 'Carrera 567', 987456123, 2),
    (9, 'Andres Rodriguez', 'Avenida 890', 456123789, 1),
    (10, 'Gabriela Castro', 'Plaza 123', 789456321, 3)
go

--INSERTAR DATOS EN LA TABLA VENTAS
INSERT INTO tb_Venta (id_venta, id_producto, id_proveedor,id_cliente, cantidad, precio_total, fecha)
VALUES (1, 1, 1, 2, 5, 54.95, '2023-05-01');

INSERT INTO tb_Venta (id_venta, id_producto, id_proveedor,id_cliente, cantidad, precio_total, fecha)
VALUES (2, 2, 2, 5, 2, 79.98, '2023-05-02');

INSERT INTO tb_Venta (id_venta, id_producto, id_proveedor,id_cliente, cantidad, precio_total, fecha)
VALUES (3, 3, 3, 6, 1, 59.99, '2023-05-03');

INSERT INTO tb_Venta (id_venta, id_producto, id_proveedor,id_cliente, cantidad, precio_total, fecha)
VALUES (4, 4, 4, 7, 3, 29.97, '2023-05-04');

INSERT INTO tb_Venta (id_venta, id_producto, id_proveedor,id_cliente, cantidad, precio_total, fecha)
VALUES (5, 5, 5, 9, 2, 59.98, '2023-05-05');

INSERT INTO tb_Venta (id_venta, id_producto, id_proveedor,id_cliente, cantidad, precio_total, fecha)
VALUES (6, 6, 6, 10, 1, 99.99, '2023-05-06');

INSERT INTO tb_Venta (id_venta, id_producto, id_proveedor,id_cliente, cantidad, precio_total, fecha)
VALUES (7, 7, 7, 2, 4, 319.96, '2023-05-07');

INSERT INTO tb_Venta (id_venta, id_producto, id_proveedor,id_cliente, cantidad, precio_total, fecha)
VALUES (8, 8, 8, 5, 1, 14.99, '2023-05-08');

INSERT INTO tb_Venta (id_venta, id_producto, id_proveedor,id_cliente, cantidad, precio_total, fecha)
VALUES (9, 9, 7, 4, 2, 49.98, '2023-05-09');

INSERT INTO tb_Venta (id_venta, id_producto, id_proveedor,id_cliente, cantidad, precio_total, fecha)
VALUES (10, 1, 1, 2, 3, 149.97, '2023-05-10');

INSERT INTO tb_Venta (id_venta, id_producto, id_proveedor,id_cliente, cantidad, precio_total, fecha)
VALUES (11, 2, 3, 10, 1, 39.99, '2023-05-11');

INSERT INTO tb_Venta (id_venta, id_producto, id_proveedor,id_cliente, cantidad, precio_total, fecha)
VALUES (12, 5, 1, 6, 4, 119.96, '2023-05-12');

INSERT INTO tb_Venta (id_venta, id_producto, id_proveedor,id_cliente, cantidad, precio_total, fecha)
VALUES (13, 8, 5, 3, 2, 29.98, '2023-05-13');

INSERT INTO tb_Venta (id_venta, id_producto, id_proveedor,id_cliente, cantidad, precio_total, fecha)
VALUES (14, 3, 6, 1, 1, 59.99, '2023-05-14');

INSERT INTO tb_Venta (id_venta, id_producto, id_proveedor,id_cliente, cantidad, precio_total, fecha)
VALUES (15, 1, 8, 5, 3, 32.97, '2023-05-15');

-----------------------------------------------------------------------------------------------------------------
--EJERCICIO 1: mostrar el listado de ventas, incluyendo el nombre del producto y el nombre del proveedor. 
SELECT tb1.id_venta, tb2.Producto, tb3.Proveedor, tb1.cantidad, tb1.precio_total, tb1.fecha
FROM tb_Venta tb1
JOIN tb_Producto tb2 ON tb1.id_producto = tb2.id_producto
JOIN tb_Proveedor tb3 ON tb1.id_proveedor = tb3.id_proveedor;

--EJERCICIO 2: mostrar el listado de ventas, incluyendo el nombre del producto
SELECT tb1.id_venta, tb2.Producto, tb1.cantidad, tb1.precio_total, tb1.fecha
FROM tb_Venta tb1
JOIN tb_Producto tb2 ON tb1.id_producto = tb2.id_producto;

--EJERCICIO 3: cuantos productos distintos han vendido en total ?
SELECT COUNT(DISTINCT id_producto) AS total_productos_distintos
FROM tb_Venta;

--EJERCICIO 4: muestra los 2 nombres de producto, que han registrado más ventas
SELECT TOP 2 tb2.Producto, COUNT(*) AS total_ventas
FROM tb_Venta tb1
JOIN tb_Producto tb2 ON tb2.id_producto = tb2.id_producto
GROUP BY tb2.Producto
ORDER BY total_ventas DESC;

--EJERCICIO 5: muestra el nombre del proveedor, que tiene más productos
SELECT top 1 tb2.Proveedor, COUNT(DISTINCT tb1.id_producto) AS total_productos
FROM tb_Venta tb1
JOIN tb_Proveedor tb2 ON tb1.id_proveedor = tb2.id_proveedor
GROUP BY tb2.Proveedor
ORDER BY total_productos DESC;

--EJERCICIO 6: muestra el nombre cada proveedor y cuenta cuantos productos distintos provee
SELECT tb1.Proveedor, COUNT(DISTINCT tb3.id_producto) AS total_productos_distintos
FROM tb_Proveedor tb1
JOIN tb_Venta tb2 ON tb1.id_proveedor = tb2.id_proveedor
JOIN tb_Producto tb3 ON tb2.id_producto = tb3.id_producto
GROUP BY tb1.Proveedor;

--EJERCICIO 7: muestra el nombre de los productos que suman mas de 100 soles en ventas.
SELECT tb2.Producto
FROM tb_Venta tb1
JOIN tb_Producto tb2 ON tb1.id_producto = tb2.id_producto
GROUP BY tb2.Producto
HAVING SUM(tb1.precio_total) > 100;

--EJERCICIO 8: muestra el nombre del proveedor, que ha sumado menos ventas
SELECT TOP 1 tb1.Proveedor, SUM(tb2.precio_total) AS total_ventas
FROM tb_Proveedor tb1
JOIN tb_Venta tb2 ON tb1.id_proveedor = tb2.id_proveedor
GROUP BY tb1.Proveedor
ORDER BY total_ventas;

--EJERCICIO 9: muestra cuantas ventas hay en total, por codigo de producto
SELECT tb1.id_producto, COUNT(1) AS total_ventas
FROM tb_Venta tb1
JOIN tb_Producto tb2 ON tb1.id_producto = tb2.id_producto
GROUP BY tb1.id_producto;

--EJERCICIO 10: muestra la suma total vendida, por código de producto
SELECT tb1.id_producto, SUM(tb1.precio_total) AS total_vendido
FROM tb_Venta tb1
JOIN tb_Producto tb2 ON tb1.id_producto = tb2.id_producto
GROUP BY tb1.id_producto;

--EJERCICIO 11: muestra cuantas ventas hay en total, por nombre de producto
SELECT tb2.Producto, COUNT(1) AS total_ventas
FROM tb_Venta tb1
JOIN tb_Producto tb2 ON tb1.id_producto = tb2.id_producto
GROUP BY tb2.Producto;

--EJERCICIO 12: muestra la suma total vendida, por nombre de producto
SELECT tb2.Producto, SUM(tb1.precio_total) AS total_vendido
FROM tb_Venta tb1
JOIN tb_Producto tb2 ON tb1.id_producto = tb2.id_producto
GROUP BY tb2.Producto;

--EJERCICIO 13: muestra cuantas ventas hay en total, por nombre de proveedor
SELECT tb3.Proveedor, COUNT(1) AS total_ventas
FROM tb_Venta tb1
JOIN tb_Producto tb2 ON tb1.id_producto = tb2.id_producto
JOIN tb_Proveedor tb3 ON tb1.id_proveedor = tb3.id_proveedor
GROUP BY tb3.Proveedor;

--EJERCICIO 14: muestra la suma total vendida, por nombre de proveedor
SELECT tb3.Proveedor, SUM(tb1.precio_total) AS total_vendido
FROM tb_Venta tb1
JOIN tb_Producto tb2 ON tb1.id_producto = tb2.id_producto
JOIN tb_Proveedor tb3 ON tb1.id_proveedor = tb3.id_proveedor
GROUP BY tb3.Proveedor;

--EJERCICIO 15: mostrar el listado de ventas, cuya cantidad vendida sea igual a 1
SELECT *
FROM tb_Venta
WHERE cantidad = 1;

--EJERCICIO 16: cuantos clientes hay en total ?
SELECT COUNT(1) AS total_clientes
FROM tb_Cliente;

--EJERCICIO 17: cuantos código de cliente distintos existen en la lista de ventas ?
SELECT COUNT(DISTINCT id_cliente) AS total_codigos_cliente
FROM tb_Venta;

--EJERCICIO 18: muestre los dos código de cliente que acumularon (sumaron) mayor monto de ventas
SELECT TOP 2 id_cliente, SUM(precio_total) AS monto_total_ventas
FROM tb_Venta
GROUP BY id_cliente
ORDER BY monto_total_ventas DESC;

--EJERCICIO 19: muestre los dos nombre de cliente que acumularon (sumaron) mayor monto de ventas
SELECT top 2 tb2.nombre, SUM(tb1.precio_total) AS monto_total_ventas
FROM tb_Venta tb1
JOIN tb_Cliente tb2 ON tb1.id_cliente = tb2.id_cliente
GROUP BY tb2.nombre
ORDER BY monto_total_ventas DESC;

--EJERCICIO 20: muestre los dos nombre de TIPO de cliente que acumularon (sumaron) mayor monto de ventas
SELECT TOP 2 tb3.tipo_cliente, SUM(tb1.precio_total) AS monto_total_ventas
FROM tb_Venta tb1
JOIN tb_Cliente tb2 ON tb2.id_cliente = tb1.id_cliente
JOIN tb_Tipo_cliente tb3 ON tb2.id_tipo_cliente = tb3.id_tipo_cliente
GROUP BY tb3.tipo_cliente
ORDER BY monto_total_ventas DESC;

--EJERCICIO 21: muestre el nombre del cliente que menos unidades ha comprado en total
SELECT top 1 c.nombre, SUM(v.cantidad) AS total_unidades_compradas
FROM tb_Venta v
JOIN tb_Cliente c ON v.id_cliente = c.id_cliente
GROUP BY c.nombre
ORDER BY total_unidades_compradas;

--EJERCICIO 22: muestre el nombre del TIPO de cliente que menos unidades ha comprado en total
SELECT TOP 1 tc.tipo_cliente, SUM(v.cantidad) AS total_unidades_compradas
FROM tb_Venta v
JOIN tb_Cliente c ON v.id_cliente = c.id_cliente
JOIN tb_Tipo_cliente tc ON c.id_tipo_cliente = tc.id_tipo_cliente
GROUP BY tc.tipo_cliente
ORDER BY total_unidades_compradas;

--EJERCICIO 23: mostrar la cantidad de clientes, por nombre de TIPO de cliente
SELECT tc.tipo_cliente, COUNT(c.id_cliente) AS cantidad_clientes
FROM tb_Cliente c
JOIN tb_Tipo_cliente tc ON c.id_tipo_cliente = tc.id_tipo_cliente
GROUP BY tc.tipo_cliente;

--EJERCICIO 24: cuál es el NOMBRE de TIPO de cliente, que ha sumado mayor monto de ventas ?
SELECT top 1 tc.tipo_cliente, SUM(v.precio_total) AS monto_total_ventas
FROM tb_Venta v
JOIN tb_Cliente c ON v.id_cliente = c.id_cliente
JOIN tb_Tipo_cliente tc ON c.id_tipo_cliente = tc.id_tipo_cliente
GROUP BY tc.tipo_cliente
ORDER BY monto_total_ventas DESC;

--EJERCICIO 25: cuál es el NOMBRE de TIPO de cliente, que tiene la mayor cantidad de ventas ?
SELECT top 1 tc.tipo_cliente, COUNT(*) AS cantidad_ventas
FROM tb_Venta v
JOIN tb_Cliente c ON v.id_cliente = c.id_cliente
JOIN tb_Tipo_cliente tc ON c.id_tipo_cliente = tc.id_tipo_cliente
GROUP BY tc.tipo_cliente
ORDER BY cantidad_ventas DESC;

--EJERCICIO 26: muestra cuantas ventas hay en total, por codigo de cliente
SELECT id_cliente, COUNT(1) AS total_ventas
FROM tb_Venta
GROUP BY id_cliente;

--EJERCICIO 27: muestra la suma total vendida, por codigo de cliente
SELECT id_cliente, SUM(precio_total) AS suma_total_vendida
FROM tb_Venta
GROUP BY id_cliente;

--EJERCICIO 28:muestra cuantas ventas hay en total, por nombre de cliente
SELECT c.nombre, COUNT(1) AS total_ventas
FROM tb_Venta v
JOIN tb_Cliente c ON v.id_cliente = c.id_cliente
GROUP BY c.nombre;

--EJERCICIO 29: muestra la suma total vendida, por nombre de cliente
SELECT c.nombre, SUM(v.precio_total) AS suma_total_vendida
FROM tb_Venta v
JOIN tb_Cliente c ON v.id_cliente = c.id_cliente
GROUP BY c.nombre;

--EJERCICIO 30: muestra cuantas ventas hay en total, por codigo de TIPO de cliente
SELECT tc.id_tipo_cliente, COUNT(1) AS total_ventas
FROM tb_Venta v
JOIN tb_Cliente c ON v.id_cliente = c.id_cliente
JOIN tb_Tipo_cliente tc ON c.id_tipo_cliente = tc.id_tipo_cliente
GROUP BY tc.id_tipo_cliente;

--EJERCICIO 31: muestra la suma total vendida, por codigo TIPO de cliente
SELECT tc.id_tipo_cliente, SUM(v.precio_total) AS suma_total_vendida
FROM tb_Venta v
JOIN tb_Cliente c ON v.id_cliente = c.id_cliente
JOIN tb_Tipo_cliente tc ON c.id_tipo_cliente = tc.id_tipo_cliente
GROUP BY tc.id_tipo_cliente;

--EJERCICIO 32: muestra cuantas ventas hay en total, por nombre TIPO de cliente
SELECT tc.tipo_cliente, COUNT(*) AS total_ventas
FROM tb_Venta v
JOIN tb_Cliente c ON v.id_cliente = c.id_cliente
JOIN tb_Tipo_cliente tc ON c.id_tipo_cliente = tc.id_tipo_cliente
GROUP BY tc.tipo_cliente;

--EJERCICIO 33: muestra la suma total vendida, por nombre TIPO de cliente
SELECT tc.tipo_cliente, SUM(v.precio_total) AS suma_total_vendida
FROM tb_Venta v
JOIN tb_Cliente c ON v.id_cliente = c.id_cliente
JOIN tb_Tipo_cliente tc ON c.id_tipo_cliente = tc.id_tipo_cliente
GROUP BY tc.tipo_cliente;











