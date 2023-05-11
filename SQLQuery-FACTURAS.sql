--TABLA CLIENTES
create table tb_Cliente (
	id_cliente int not null,
	Nombre_cliente varchar(150) not null,
	Direccion_cliente varchar(200) not null,
	telefono int not null
)

--PK
alter table tb_Cliente add constraint pk_id_cliente primary key (id_cliente);

--drop table tb_Cliente;

--TABLA PROVEEDORES
create table tb_Proveedor (
	id_proveedor int not null,
	Nombre_proveedor varchar(155) not null,
	Direccion_proveedor varchar(200) not null,
	telefono_proveedor int not null
)

--PK
alter table tb_Proveedor add constraint pk_id_proveedor
primary key (id_proveedor);

--drop table tb_Cliente;

--TABLA FACTURAS
create table tb_Factura (
	id_factura int not null,
	Fecha date not null,
	id_cliente int not null
)

--PK
alter table tb_Factura
add constraint pk_id_factura
primary key (id_factura);

--FK
alter table tb_Factura
add constraint fk_id_cliente
foreign key (id_cliente)
references tb_Cliente(id_cliente);

--drop table tb_Factura;


--TABLA PRODUCTOS
create table tb_Productos (
	id_producto int not null,
	Descripcion varchar(300) not null,
	precio float not null,
	id_proveedor int not null
)

--PK
alter table tb_Productos
add constraint pk_id_producto
primary key (id_producto);

--FK
alter table tb_Productos
add constraint fk_id_proveedor
foreign key (id_proveedor)
references tb_Proveedor(id_proveedor);

--TABLA VENTAS
create table tb_Venta(
	id_venta int not null,
	id_factura int not null,
	id_producto int not null,
	cantidad int not null
)

--PK
alter table tb_Venta
add constraint pk_id_venta
primary key (id_venta);

--FK
alter table tb_Venta
add constraint fk_id_factura
foreign key (id_factura)
references tb_Factura(id_factura);

alter table tb_Venta
add constraint fk_id_producto
foreign key (id_producto)
references tb_Productos(id_producto);

----------------------------------------------------------------------
--INSERTAR DATOS EN LA TABLA CLIENTES
INSERT INTO tb_Cliente (id_cliente, Nombre_cliente, Direccion_cliente, telefono) 
VALUES (1, 'Maria Rodriguez', '987 Maple Street', 222333444);

INSERT INTO tb_Cliente (id_cliente, Nombre_cliente, Direccion_cliente, telefono) 
VALUES (2, 'Michael Johnson', '567 Pine Avenue', 555444333);

INSERT INTO tb_Cliente (id_cliente, Nombre_cliente, Direccion_cliente, telefono) 
VALUES (3, 'Laura Martinez', '321 Oak Lane', 777888999);

INSERT INTO tb_Cliente (id_cliente, Nombre_cliente, Direccion_cliente, telefono) 
VALUES (4, 'Thomas Wilson', '456 Cedar Road', 111222333);

INSERT INTO tb_Cliente (id_cliente, Nombre_cliente, Direccion_cliente, telefono) 
VALUES (5, 'Emily Thompson', '789 Birch Street', 444555666);

INSERT INTO tb_Cliente (id_cliente, Nombre_cliente, Direccion_cliente, telefono) 
VALUES (6, 'Daniel Davis', '234 Elm Avenue', 888999000);

INSERT INTO tb_Cliente (id_cliente, Nombre_cliente, Direccion_cliente, telefono) 
VALUES (7, 'Sophia Anderson', '876 Oak Lane', 222333444);

INSERT INTO tb_Cliente (id_cliente, Nombre_cliente, Direccion_cliente, telefono) 
VALUES (8, 'Benjamin Taylor', '543 Pine Avenue', 555666777);

INSERT INTO tb_Cliente (id_cliente, Nombre_cliente, Direccion_cliente, telefono) 
VALUES (9, 'Olivia Brown', '765 Maple Street', 999888777);

INSERT INTO tb_Cliente (id_cliente, Nombre_cliente, Direccion_cliente, telefono) 
VALUES (10, 'Ethan Wilson', '432 Cedar Road', 111222333);

--INSERTAR DATOS EN LA TABLA PROVEEDORES
INSERT INTO tb_Proveedor (id_proveedor, Nombre_proveedor, Direccion_proveedor, telefono_proveedor) 
VALUES (1, 'Proveedor A', '123 Calle Principal', 111111111);

INSERT INTO tb_Proveedor (id_proveedor, Nombre_proveedor, Direccion_proveedor, telefono_proveedor) 
VALUES (2, 'Proveedor B', '456 Avenida Elm', 222222222);

INSERT INTO tb_Proveedor (id_proveedor, Nombre_proveedor, Direccion_proveedor, telefono_proveedor) 
VALUES (3, 'Proveedor C', '789 Carrera Oak', 333333333);

INSERT INTO tb_Proveedor (id_proveedor, Nombre_proveedor, Direccion_proveedor, telefono_proveedor) 
VALUES (4, 'Proveedor D', '321 Calle Maple', 444444444);

INSERT INTO tb_Proveedor (id_proveedor, Nombre_proveedor, Direccion_proveedor, telefono_proveedor) 
VALUES (5, 'Proveedor E', '543 Avenida Pine', 555555555);

INSERT INTO tb_Proveedor (id_proveedor, Nombre_proveedor, Direccion_proveedor, telefono_proveedor) 
VALUES (6, 'Proveedor F', '876 Carrera Birch', 666666666);

INSERT INTO tb_Proveedor (id_proveedor, Nombre_proveedor, Direccion_proveedor, telefono_proveedor) 
VALUES (7, 'Proveedor G', '987 Calle Cedar', 777777777);

INSERT INTO tb_Proveedor (id_proveedor, Nombre_proveedor, Direccion_proveedor, telefono_proveedor) 
VALUES (8, 'Proveedor H', '234 Avenida Oak', 888888888);

INSERT INTO tb_Proveedor (id_proveedor, Nombre_proveedor, Direccion_proveedor, telefono_proveedor) 
VALUES (9, 'Proveedor I', '765 Carrera Elm', 999999999);

INSERT INTO tb_Proveedor (id_proveedor, Nombre_proveedor, Direccion_proveedor, telefono_proveedor) 
VALUES (10, 'Proveedor J', '432 Calle Pine', 101010101);

--INSERTAR DATOS EN LA TABLA FACTURAS
INSERT INTO tb_Factura (id_factura, Fecha, id_cliente)
VALUES (1, '2023-05-01', 1);

INSERT INTO tb_Factura (id_factura, Fecha, id_cliente)
VALUES (2, '2023-05-02', 2);

INSERT INTO tb_Factura (id_factura, Fecha, id_cliente)
VALUES (3, '2023-05-03', 3);

INSERT INTO tb_Factura (id_factura, Fecha, id_cliente)
VALUES (4, '2023-05-04', 4);

INSERT INTO tb_Factura (id_factura, Fecha, id_cliente)
VALUES (5, '2023-05-05', 5);

INSERT INTO tb_Factura (id_factura, Fecha, id_cliente)
VALUES (6, '2023-05-06', 6);

INSERT INTO tb_Factura (id_factura, Fecha, id_cliente)
VALUES (7, '2023-05-07', 7);

INSERT INTO tb_Factura (id_factura, Fecha, id_cliente)
VALUES (8, '2023-05-08', 8);

INSERT INTO tb_Factura (id_factura, Fecha, id_cliente)
VALUES (9, '2023-05-09', 9);

INSERT INTO tb_Factura (id_factura, Fecha, id_cliente)
VALUES (10, '2023-05-10', 10);

--INSERTAR DATOS EN LA TABLA PRODUCTOS
INSERT INTO tb_Productos (id_producto, Descripcion, precio, id_proveedor)
VALUES (1, 'Producto A', 10.99, 1);

INSERT INTO tb_Productos (id_producto, Descripcion, precio, id_proveedor)
VALUES (2, 'Producto B', 19.99, 2);

INSERT INTO tb_Productos (id_producto, Descripcion, precio, id_proveedor)
VALUES (3, 'Producto C', 5.99, 3);

INSERT INTO tb_Productos (id_producto, Descripcion, precio, id_proveedor)
VALUES (4, 'Producto D', 7.5, 4);

INSERT INTO tb_Productos (id_producto, Descripcion, precio, id_proveedor)
VALUES (5, 'Producto E', 12.75, 5);

INSERT INTO tb_Productos (id_producto, Descripcion, precio, id_proveedor)
VALUES (6, 'Producto F', 8.99, 6);

INSERT INTO tb_Productos (id_producto, Descripcion, precio, id_proveedor)
VALUES (7, 'Producto G', 14.5, 7);

INSERT INTO tb_Productos (id_producto, Descripcion, precio, id_proveedor)
VALUES (8, 'Producto H', 9.99, 8);

INSERT INTO tb_Productos (id_producto, Descripcion, precio, id_proveedor)
VALUES (9, 'Producto I', 6.25, 9);

INSERT INTO tb_Productos (id_producto, Descripcion, precio, id_proveedor)
VALUES (10, 'Producto J', 11.5, 10);

--INSERTAR DATOS EN LA TABLA VENTAS
INSERT INTO tb_Venta (id_venta, id_factura, id_producto, cantidad)
VALUES (1, 1, 1, 5);

INSERT INTO tb_Venta (id_venta, id_factura, id_producto, cantidad)
VALUES (2, 1, 2, 3);

INSERT INTO tb_Venta (id_venta, id_factura, id_producto, cantidad)
VALUES (3, 2, 3, 2);

INSERT INTO tb_Venta (id_venta, id_factura, id_producto, cantidad)
VALUES (4, 2, 4, 1);

INSERT INTO tb_Venta (id_venta, id_factura, id_producto, cantidad)
VALUES (5, 3, 5, 4);

INSERT INTO tb_Venta (id_venta, id_factura, id_producto, cantidad)
VALUES (6, 3, 6, 2);

INSERT INTO tb_Venta (id_venta, id_factura, id_producto, cantidad)
VALUES (7, 4, 7, 3);

INSERT INTO tb_Venta (id_venta, id_factura, id_producto, cantidad)
VALUES (8, 4, 8, 1);

INSERT INTO tb_Venta (id_venta, id_factura, id_producto, cantidad)
VALUES (9, 5, 9, 5);

INSERT INTO tb_Venta (id_venta, id_factura, id_producto, cantidad)
VALUES (10, 5, 10, 2);

--EJERCICIO 1: Cuales son los dos codigos de producto con la mayor 
--suma de cantidad en ventas?
SELECT top 2 id_producto, SUM(cantidad) AS total_cantidad
FROM tb_Venta
GROUP BY id_producto
ORDER BY total_cantidad DESC;

--EJERCICIO 2: Cuales son los dos nombres de producto con la mayor 
--suma de cantidad en ventas?
SELECT top 2 tb2.Descripcion, SUM(tb1.cantidad) AS total_cantidad
FROM tb_Venta tb1
INNER JOIN tb_Productos tb2 ON tb1.id_producto = tb2.id_producto
GROUP BY tb2.Descripcion
ORDER BY total_cantidad DESC;

--EJERCICIO 3: Cuales son los dos nombres de proveedor con la mayor 
--suma de cantidad en ventas?

SELECT tb3.Nombre_proveedor, SUM(tb1.cantidad) AS total_cantidad
FROM tb_Venta tb1
INNER JOIN tb_Productos tb2 ON tb1.id_producto = tb2.id_producto
INNER JOIN tb_Proveedor tb3 ON tb2.id_proveedor = tb3.id_proveedor
GROUP BY tb3.Nombre_proveedor
ORDER BY total_cantidad DESC;

--EJERCICIO 4: con group by sin having: 
--cuantas ventas existen por codigo de producto ?
--muestra la cantidad de ventas por codigo de producto
SELECT id_producto, COUNT(1) AS cantidad_ventas
FROM tb_Venta
GROUP BY id_producto;


--EJERCICIO 5: con group by con having: 
--cuales son los codigo de producto, con numero de ventas menores o iguales a 2 ?
--muestra los codigo de producto, con numero de ventas menores o iguales a 2
SELECT id_producto, COUNT(1) AS cantidad_ventas
FROM tb_Venta
GROUP BY id_producto
HAVING COUNT(1) <= 2;
