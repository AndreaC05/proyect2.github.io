--TABLA CLIENTE
create table tb_Cliente (
	id_cliente int not null,
	Nombre_cliente varchar(200)
)
--PK
alter table tb_Cliente add constraint pk_id_cliente primary key (id_cliente);

--drop table tb_Cliente;

--TABLA PRODUCTO
create table tb_Producto (
	id_producto int not null,
	Rubro varchar(100),
	Tipo varchar(100), 
	Producto varchar(100)
)

--PK
alter table tb_Producto add constraint pk_id_producto primary key (id_producto);

--drop table tb_Producto;

--TABLA FECHA
create table tb_Fecha (
	id_fecha int not null,
	fecha date not null
)

--PK
alter table tb_Fecha add constraint pk_id_fecha primary key (id_fecha);

--drop table tb_Fecha;

--TABLA VENTAS
create table tb_Venta (
	id_cliente int not null,
	id_producto int not null,
	id_fecha int not null,
	importe_total float not null,
	Utilidad varchar(100)
)


--FK
alter table tb_Venta add constraint fk_id_cliente foreign key (id_cliente) references tb_Cliente(id_cliente);
alter table tb_Venta add constraint fk_id_producto foreign key (id_producto) references tb_Producto(id_producto);
alter table tb_Venta add constraint fk_id_fecha foreign key (id_fecha) references tb_Fecha(id_fecha);

--drop table tb_Venta;

------------------------------------------------------------------------------------------------------------------
--INSERTAR DATOS EN LA TABLA CLIENTES
INSERT INTO tb_Cliente (id_cliente, Nombre_cliente) 
VALUES (1, 'Juan Pérez'),
	   (2, 'María González'),
	   (3, 'Carlos Ramírez'),
	   (4, 'Laura García'),
	   (5, 'Pedro López'),
	   (6, 'Ana Martínez'),
	   (7, 'Luis Rodríguez'),
	   (8, 'Sofía Herrera'),
	   (9, 'Daniel Castro'),
	   (10, 'Isabella Fernández')
go

--INSERTAR DATOS EN LA TABLA PRODUCTO
insert into tb_Producto (id_producto, Rubro, Tipo, Producto)
values (1, 'Electrónica', 'Teléfono', 'iPhone 12'),
	   (2, 'Electrodomésticos', 'Refrigerador', 'Samsung'),
	   (3, 'Moda', 'Zapatos', 'Nike Air Max'),
	   (4, 'Electrónica', 'Televisor', 'LG OLED'),
	   (5, 'Hogar', 'Muebles', 'Sofá seccional'),
	   (6, 'Moda', 'Ropa', 'Camiseta Polo'),
	   (7, 'Deportes', 'Equipamiento', 'Balón de fútbol'),
	   (8, 'Electrónica', 'Computadoras', 'MacBook Pro'),
	   (9, 'Moda', 'Bolsos', 'Cartera de cuero'),
	   (10, 'Hogar', 'Electrodomésticos', 'Aspiradora')
go

--INSERTAR DATOS EN LA TABLA FECHA
insert into tb_Fecha  (id_fecha, fecha)
values (1, '2023-01-01'),
	   (2, '2023-02-15'),
	   (3, '2023-03-10'),
	   (4, '2023-04-22'),
	   (5, '2023-05-05'),
	   (6, '2023-06-18'),
	   (7, '2023-07-29'),
	   (8, '2023-08-12'),
	   (9, '2023-09-03'),
	   (10, '2023-10-20')
go

--INSERTAR DATOS EN LA TABLA VENTAS

INSERT INTO tb_Venta (id_cliente, id_producto, id_fecha, importe_total, Utilidad)
VALUES (1, 1, 1, 1000.50, 'Alta');

INSERT INTO tb_Venta (id_cliente, id_producto, id_fecha, importe_total, Utilidad)
VALUES (2, 3, 2, 500.25, 'Media');

INSERT INTO tb_Venta (id_cliente, id_producto, id_fecha, importe_total, Utilidad)
VALUES (3, 2, 3, 750.75, 'Alta');

INSERT INTO tb_Venta (id_cliente, id_producto, id_fecha, importe_total, Utilidad)
VALUES (4, 5, 4, 1200.00, 'Baja');

INSERT INTO tb_Venta (id_cliente, id_producto, id_fecha, importe_total, Utilidad)
VALUES (5, 4, 5, 900.50, 'Media');

INSERT INTO tb_Venta (id_cliente, id_producto, id_fecha, importe_total, Utilidad)
VALUES (6, 6, 6, 650.00, 'Alta');

INSERT INTO tb_Venta (id_cliente, id_producto, id_fecha, importe_total, Utilidad)
VALUES (7, 9, 7, 800.75, 'Baja');

INSERT INTO tb_Venta (id_cliente, id_producto, id_fecha, importe_total, Utilidad)
VALUES (8, 8, 8, 1100.25, 'Alta');

INSERT INTO tb_Venta (id_cliente, id_producto, id_fecha, importe_total, Utilidad)
VALUES (9, 7, 9, 950.50, 'Media');

INSERT INTO tb_Venta (id_cliente, id_producto, id_fecha, importe_total, Utilidad)
VALUES (10, 10, 10, 700.00, 'Baja');


--EJERCICIO 1: CUALES SON los dos codigos de cliente, con la mayor suma de importe total?
SELECT top 2 id_cliente, SUM(importe_total) AS suma_total
FROM tb_Venta
GROUP BY id_cliente
ORDER BY suma_total DESC;

--EJERCICIO 2: CUALES SON los dos nombres de producto con la mayor suma de importe total?
SELECT top 2 tb1.Producto, SUM(tb2.importe_total) AS suma_total
FROM tb_Venta tb2
INNER JOIN tb_Producto tb1 ON tb2.id_producto = tb1.id_producto
GROUP BY tb1.Producto
ORDER BY suma_total DESC;

--EJERCICIO 3: CUALES SON los dos nombres de cliente con la mayor suma de importe total?
SELECT top 2 tb2.Nombre_cliente, SUM(tb1.importe_total) AS suma_total
FROM tb_Venta tb1
INNER JOIN tb_Cliente tb2 ON tb1.id_cliente = tb2.id_cliente
GROUP BY tb2.Nombre_cliente
ORDER BY suma_total DESC;

--EJERCICIO 4: CUALES SON las dos fechas, con la mayor suma de importe total?
SELECT top 2 fecha, SUM(tb1.importe_total) AS suma_total
FROM tb_Venta tb1
INNER JOIN tb_Fecha tb2 ON tb1.id_fecha = tb2.id_fecha
GROUP BY fecha
ORDER BY suma_total DESC;




