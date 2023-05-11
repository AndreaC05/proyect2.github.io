--Marca
create table tb_marca (
	id_marca int not null,
	Marca varchar (20) not null
)

--PK
alter table tb_marca add constraint pk_tb_marca primary key (id_marca); 

--drop table tb_marca;

--Dimension_Producto
create table tb_Producto (
	id_producto int not null,
	id_marca int not null,
	Producto varchar (60) not null,
	Peso float,
	Altura int,
	Anchura int,
	Profundidad int
)

--PK
alter table tb_Producto add constraint pk_id_producto primary key (id_producto);

--FK
alter table tb_Producto add constraint fk_id_marca foreign key (id_marca) references tb_marca(id_marca);

--drop table tb_Producto;

-- Sexo
create table tb_Dim_Sexo (
	id_sexo int not null,
	Sexo varchar (10)
)

--PK
alter table tb_Dim_Sexo add constraint pk_id_sexo primary key (id_sexo);

--drop table tb_Dim_Sexo;

--Edad
create table tb_Edad (
	id_edad int not null,
	Edad_init int not null,
	Edad_Final int not null
)

--PK
alter table tb_Edad add constraint pk_id_edad primary key (id_edad);

--drop table tb_Edad;

--Cliente 
create table tb_Cliente (
	id_cliente int not null,
	id_edad int not null,
	id_sexo int not null,
	Nombre_cliente varchar(200) not null,
	fecha_registro date not null
)

--PK
alter table tb_Cliente add constraint pk_id_cliente primary key (id_cliente);

--FK
alter table tb_Cliente add constraint fk_id_edad foreign key (id_edad) references tb_Edad(id_edad);
alter table tb_Cliente add constraint fk_id_sexo foreign key (id_sexo) references tb_Dim_Sexo(id_sexo);

--drop table tb_Cliente;

--Hechos ventas 
create table tb_Hecho_Ventas (
	id_producto int not null,
	id_cliente int not null,
	fecha date not null,
	Unidades int not null,
	Precio float not null
)

--FK
alter table tb_Hecho_Ventas add constraint fk_id_producto foreign key (id_producto) references tb_Producto(id_producto);
alter table tb_Hecho_Ventas add constraint fk_id_cliente foreign key (id_cliente) references tb_Cliente(id_cliente);

--drop table tb_Hecho_Ventas;

--------------------------------------------------------------------------------------------------------------------
--Insertar datos en la tabla marca
insert into [tb_marca](id_marca, Marca)
values (1, 'Gucci'),
	   (2, 'Chanel'),
	   (3, 'Prada'),
	   (4, 'Versace'),
	   (5, 'Dior'),
	   (6, 'Fendi'),
	   (7, 'Zara')
GO

--Insertar datos en la tabla Producto
insert into [tb_Producto] (id_producto, id_marca, Producto, Peso, Altura, Anchura, Profundidad)
values (1, 1, 'Bolso de cuero', 0.5, 25, 30, 15),
	   (2, 1, 'Zapatos de tacón', 0.4, 10, 8, 25),
	   (3, 2, 'Perfume Chanel n. 5', 0.2, 15, 5, 10),
	   (4, 4, 'Gafas de sol Versace', 0.1, 5, 15, 15),
	   (5, 6, 'Bolso Fendi de piel', 0.8, 30, 35, 20),
	   (6, 7, 'Vestido de flores Zara', 0.3, 20, 15, 5),
	   (7, 3, 'Bolso Prada de cuero', 0.6, 28, 33, 18),
	   (8, 5, 'Zapatos Dior de cuero', 0.5, 12, 10, 28),
	   (9, 1, 'Cinturón Gucci de piel', 0.2, 5, 90, 2),
	   (10, 4, 'Reloj Versace de oro', 0.3, 20, 20, 5),
	   (11, 6, 'Bufanda Fendi de seda', 0.1, 15, 150, 1),
	   (12, 7, 'Camisa de rayas Zara', 0.2, 18, 25, 5)
go

--Inserta datos en la tabla de Sexo
insert into [tb_Dim_Sexo] (id_sexo, Sexo)
values (1, 'Mujer'),
	   (2, 'Hombre')
go

--Insertar datos en la tabla de Edad
insert into tb_Edad (id_edad, Edad_init, Edad_Final)
values (1, 0, 17),
       (2, 18, 25),
	   (3, 26, 40),
	   (4, 41, 60),
	   (5, 61, 100)
go

--Insertar datos en la tabla Clientes
insert into tb_Cliente (id_cliente, id_edad, id_sexo, Nombre_cliente, fecha_registro)
values (1, 2, 1, 'Ana Pérez', '2022-01-15'),
	   (2, 4, 2, 'Juan García', '2022-02-28'),
	   (3, 3, 1, 'María González', '2022-03-12'),
	   (4, 1, 2, 'Pedro Sánchez', '2022-04-02'),
	   (5, 5, 1, 'Carla López', '2022-05-20'),
	   (6, 4, 1, 'Sofía Torres', '2022-06-08'),
	   (7, 2, 2, 'Javier Ruiz', '2022-07-01'),
	   (8, 3, 1, 'Luisa García', '2022-08-14'),
	   (9, 1, 1, 'Mariana López', '2022-09-30'),
	   (10, 5, 2, 'David Sánchez', '2022-10-22')
go

--Insertar Datos en la tabla Hechos Ventas
insert into [tb_Hecho_Ventas] (id_producto, id_cliente, fecha, Unidades, Precio)
values (1, 1, '2022-01-15', 2, 150.00),
	   (2, 2, '2022-02-28', 1, 450.00),
	   (3, 3, '2022-03-14', 3, 75.50),
	   (4, 4, '2022-04-10', 2, 399.99),
	   (5, 5, '2022-05-23', 1, 789.50),
	   (6, 6, '2022-06-06', 3, 129.99),
	   (7, 7, '2022-07-30', 1, 99.99),
	   (8, 8, '2022-08-12', 2, 199.50),
	   (9, 9, '2022-09-27', 1, 599.00),
	   (10, 10, '2022-10-18', 2, 99.00),
	   (1, 5, '2022-11-11', 1, 500.00),
	   (2, 2, '2022-12-01', 3, 1800.00),
	   (3, 3, '2023-01-03', 2, 120.00),
	   (4, 9, '2023-02-15', 1, 329.99),
	   (5, 8, '2023-03-19', 2, 999.99)
go

--Ejercicio 1: Los dos productos que tengan mas ventas
SELECT TOP 2 id_producto, COUNT(1)
FROM tb_Hecho_Ventas
GROUP BY id_producto
ORDER BY 2 DESC;

--Ejercicio 2: 
SELECT TOP 2 tb2.Producto, COUNT(1) as Ventas
FROM tb_Hecho_Ventas tb1 inner join tb_Producto tb2
on tb1.id_producto = tb2.id_producto
GROUP BY tb2.Producto
ORDER BY 2 DESC;

--Ejercicio 3: El nombre de dos clientes que mas compras han hecho
SELECT TOP 2 tb2.Nombre_cliente, COUNT(1) as num_Compras
FROM tb_Hecho_Ventas tb1 inner join tb_Cliente tb2
on tb1.id_cliente = tb2.id_cliente
GROUP BY tb2.Nombre_cliente
ORDER BY 2 DESC;

--Ejercicio 4: Nombre de clientes que mas compras poseen y rango de edad

SELECT TOP 2 tb2.Nombre_cliente, tb3.Edad_init, tb3.Edad_Final, COUNT(1) as num_Compras
FROM tb_Hecho_Ventas tb1 inner join tb_Cliente tb2 
on tb1.id_cliente = tb2.id_cliente inner join tb_Edad tb3 on tb2.id_edad = tb3.id_edad
GROUP BY tb2.Nombre_cliente, tb3.Edad_init, tb3.Edad_Final
ORDER BY 4 DESC;









