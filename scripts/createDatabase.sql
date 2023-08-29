Create table Categoria (
	IdCategoria int primary key identity,
	Descripcion varchar(100),
	Activo bit default 1,
	FechaRegistro datetime default getdate()
)
GO
Create table Marca (
	IdMarca int primary key identity,
	Descripcion varchar(100),
	Activo bit default 1,
	FechaRegistro datetime default getdate()
)
go
create table Producto (
	IdProducto int primary key identity,
	Nombre varchar(500),
	Descripcion varchar(500),
	IdMarca int references Marca(IdMarca),
	IdCategoria int references Categoria(IdCategoria),
	Precio decimal(10, 2) default 0,
	Stock int,
	RutaImagen varchar(100),
	NombreImagen varchar(100),
	Activo bit default 1,
	FechaRegistro datetime default getdate()
)
go
create table Cliente (
	IdCliente int primary key identity,
	Nombres varchar(100),
	Apellidos varchar(100),
	Correo varchar(100),
	Clave varchar(150),
	Restablecer bit default 0,
	FechaRegistro datetime default getdate()
)
go
create table Carrito (
	IdCarrito int primary key identity,
	IdCliente int references Cliente(IdCliente),
	IdProducto int references Producto(IdProducto),
	Cantidad int
)
go
create table Venta (
	IdVenta int primary key identity,
	IdCliente int references Cliente(IdCliente),
	TotalProducto int,
	MontoTotal decimal(10,2),
	Contacto varchar(50),
	IdDistrito varchar(10),
	Telefono varchar(50),
	Direccion varchar(500),
	IdTransaccion varchar(50),
	FechaVenta datetime default getdate()
)
go
create table DetalleVenta (
	IdDetalleVenta int primary key identity,
	IdVenta int references Venta(IdVenta),
	IdProducto int references Producto(IdProducto),
	Cantidad int,
	Total decimal(10, 2)
)
go
create table Usuario (
	IdUsuario int primary key identity,
	Nombres varchar(100),
	Apellidos varchar(100),
	Correo varchar(100),
	Clave varchar(150),
	Restablecer bit default 1,
	Activo bit default 1,
	FechaRegistro datetime default getdate()
)

go
create table Departamento (
	IdDepartamento varchar(2) not null,
	Descripcion varchar(45) not null
)
go
create table Provincia (
	IdProvincia varchar(4) not null,
	Descripcion varchar(45) not null,
	IdDepartamento varchar(2) not null
)
go
create table Distrito (
	IdDistrito varchar(6) not null,
	Descripcion varchar(45) not null,
	IdProvincia varchar(4) not null,
	IdDepartamento varchar(2) not null
)