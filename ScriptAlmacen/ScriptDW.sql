use 
[extractorProject]
CREATE TABLE DIM_VENTAS
(
	id_cliente int primary key,	
	tipo_pago nvarchar(10)
)

CREATE TABLE  DIM_TIEMPO
(
	id_tiempo int primary key,
	fecha_venta datetime,
	ano_venta int,
	mes_venta int,
	dia_venta int
)

CREATE TABLE DIM_PRODUCTO(
	id_producto int primary key,
	nombre nvarchar(50)
)

CREATE TABLE DW_HECHOS_VENTAS
(
	dim_id_ventas int,
	dim_id_tiempo int,
	dim_id_producto int,
	total_pagos int,
	constraint fk_ventas foreign key(dim_id_ventas) references DIM_VENTAS,
	constraint fk_tiempo foreign key(dim_id_tiempo) references DIM_TIEMPO,
	constraint fk_producto foreign key(dim_id_producto) references DIM_PRODUCTO,
	constraint pk_hechos primary key (dim_id_ventas, dim_id_tiempo, dim_id_producto)
)


select * from DIM_VENTAS
select * from DIM_TIEMPO
select * from DIM_PRODUCTO
select * from DW_HECHOS_VENTAS

Delete from  DW_HECHOS_VENTAS
Delete from DIM_VENTAS
Delete from DIM_TIEMPO
Delete from DIM_PRODUCTO
