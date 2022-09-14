CREATE DATABASE  `TTC`  DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_es_0900_ai_ci 
DEFAULT ENCRYPTION='N' ;
 
USE TTC;

create table Empleados (
Id_empleado int primary key auto_increment not null ,
Nombre varchar (30),
Direccion varchar (30),
Telefono varchar (30),
Mail varchar (30) 
);

create table Proveedores (
Id_proveedor int primary key auto_increment not null ,
Nombre varchar (30),
Direccion varchar (30),
Telefono varchar (30),
Mail varchar (30) 
);

create table Categorias (
Id_categoria int primary key auto_increment not null ,
Nombre varchar (30)
);

 create table Productos (
 Id_producto int  primary key auto_increment not null ,
 Descripcion varchar (30),
 Marca	varchar (30),
 Precio decimal (7.2) ,
 Id_proveedor int not null,
 Id_categoria int not null,
 foreign key (Id_proveedor) references Proveedores (Id_proveedor),
 foreign key (Id_categoria) references Categorias (Id_categoria)
 );
 
 create table Ventas (
Id_venta int primary key auto_increment not null ,
Fecha datetime ,
Total decimal (7.2),
Id_producto int,
Id_empleado int,
foreign key (Id_producto) references Productos (Id_producto),
foreign key (Id_empleado) references Empleados (Id_empleado)
)
