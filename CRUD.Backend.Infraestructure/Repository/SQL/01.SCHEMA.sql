create database BD_Cliente

use BD_Cliente


CREATE TABLE cliente (
	idCliente INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100),
    apellidoPaterno VARCHAR(100),
	apellidoMaterno VARCHAR(100), 
    telefono VARCHAR(20),
	docIdentidad VARCHAR(8),
    direccion VARCHAR(300),
    fecha_registro DATETIME DEFAULT GETDATE()
);
-- alt + shift --> seleccion de varias lineas
-- obtener lista de clientes
create procedure [dbo].[spu_get_list_cliente]
as
begin
	SELECT
	idCliente,
    nombre,
    apellidoPaterno,
	apellidoMaterno,
    telefono,
	docIdentidad,
    direccion,
    fecha_registro
	FROM
	cliente
end

-- obtener solo 1 cliente por su id
create procedure [dbo].[spu_get_cliente_by_id]
(
@idCliente int
)
as
begin
	SELECT
	idCliente,
    nombre,
    apellidoPaterno,
	apellidoMaterno,
    telefono,
	docIdentidad,
    direccion,
    fecha_registro
	FROM
	cliente
	WHERE idCliente = @idCliente
end

-- create empleado
create procedure [dbo].[spu_create_cliente]
(
    @nombre VARCHAR(100),
    @apellidoPaterno VARCHAR(100),
	@apellidoMaterno VARCHAR(100), 
    @telefono VARCHAR(20),
	@docIdentidad VARCHAR (8),
    @direccion VARCHAR(300),
    @fecha_registro DATETIME,
    @mssError VARCHAR(100)
)
as
begin
	IF (EXISTS (SELECT docIdentidad FROM cliente WHERE docIdentidad = @docIdentidad)) -- valido si tiene el mismo DNI
    begin
        set @mssError = 'El cliente ya se encuentraesta registrado'
        return
    end
		
	INSERT INTO cliente
	(
		nombre,
		apellidoPaterno,
		apellidoMaterno,
		telefono,
		docIdentidad,
		direccion,
		fecha_registro
	)
	VALUES
	(
		@nombre,
		@apellidoPaterno,
		@apellidoMaterno,
		@telefono,
		@docIdentidad,
		@direccion,
		@fecha_registro
	)
	set @mssError ='Cliente insertado'

end
