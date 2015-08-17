# MiClub
Proyecto Final de asignatura Progamacion Aplicada II



Create table Usuarios(
	IdUsuario int primary key identity (1,1) not null,
	Usuario nvarchar(20) not null,
	Pass nvarchar(10) not null,
	Nombres nvarchar(40) not null,
	Apellidos nvarchar(40) not null,
	FechaNac Date,
	Direccion nvarchar(100),
	Telefono nvarchar(12),
	Celular nvarchar(12),
	Email nvarchar(255),
	Genero int
)

Create table Clubes(
	IdClub int primary key identity(1,1) not null,
	Nombre nvarchar(50) not null,
	IdUsuario int foreign key references Usuarios(IdUsuario)
)

Create table Miembros(
	IdMiembro int primary key identity(1,1) not null,
	Nombres nvarchar(40) not null,
	Apellidos nvarchar(40) not null,
	FechaNac Date,
	Direccion nvarchar(100),
	Telefono nvarchar(12),
	Celular nvarchar(12),
	Email nvarchar(255),
	Genero int,
	Cedula nvarchar(15),
	IdClub int foreign key references Clubes(IdClub)
)


Create table TipoMultas(
	IdTipoMulta int primary key identity (1,1),
	Descripcion nvarchar(50),
	Monto float,
	IdClub int foreign key references Clubes(IdClub)
)


Create table TipoDocumentos(
	IdTipoDocumento int primary key identity (1,1),
	Descripcion nvarchar(20)
)

Create table CxC(
	IdCxC int primary key identity (1,1),
	IdTipoDocumento int foreign key references TipoDocumentos(IdTipoDocumento),
	IdMiembro int foreign key references Miembros(IdMiembro),
	IdTipoMulta int foreign key references TipoMultas(IdTipoMulta),
	Fecha Date,
	IdClub int foreign key references Clubes(IdClub),
	Monto float,
	Estado bit
)

Create table Cobros(
	IdCobro int primary key identity (1,1),
	Total float,
	Fecha Date
)

Create table DetalleCobros(
	IdDetalleCobros int primary key identity (1,1),
	IdCobro int foreign key references Cobros(IdCobro),
	IdCxC int foreign key references CxC(IdCxC),
	Valor float
)

Create table Configuraciones(
	IdConfiguracion int primary key identity (1,1),
	MontoCuota float,
	IdClub int foreign key references Clubes(IdClub)
)

insert into TipoDocumentos(Descripcion) values('Cuota')
go
insert into TipoDocumentos(Descripcion) values('Multa')
