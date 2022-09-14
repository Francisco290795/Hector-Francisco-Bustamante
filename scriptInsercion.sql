use ttc;

insert into empleados (nombre, direccion, telefono, mail)
values ('Jose Gonzalez','Chacabuco','3814825896','jose@gmail.com'),
('Lucas Ramirez','Mitre 260','3814789582','lura@outlook.com'),
('Fernando Paez','Bolivar 682','3814569878','ferpa@gmail.com'),
('Jose Sosa','Sargento Cabral 52','3814659848','josesosa@gmail.com'),
('Mauro Jaluf','Salta 9874','3813548963','maurolj@gmail.com'),
('Pablo Cano','Sarmiento 5449','3813284859','pabo@gmail.com'),
('Gian Camoglio','Roca 51','381848989','lucas24@gmail.com'),
('Mauricio Frias','Jujuy 986','3815698956','fgs24@gmail.com'),
('Cristian Gutierrez','Utinger 26','3812659845','CrisF@gmail.com'),
('Enzo Teruel','Monteagudo 987','3813598475','enzo@gmail.com'),
('Javier Carrera','Peru 587','38147878965','javi_14@gmail.com'),
('Andres Carrizo','Alberdi 9865','3814745882','andy_cero@hoymail.com');

insert into proveedores (nombre, direccion, telefono, mail)
values ('Jose Sad','Chacabuco','3814598789','joseS@gmail.com'),
('Gabriel Luna','Mendoza 85','3814789582','lunaga24@gmail.com'),
('Nicolas Carrizo','Las Piedras 588','3813654143','nicocarrizo@hotmail.com'),
('Guadalupe Nuñez','Mitre 260','3815648215','lguada24@gmail.com'),
('Gabriela Barboza','Av colon 454','3813545698','gabibar@gmail.com'),
('Ruben Avila','Rivadavia','38147654','elcraken@gmail.com'),
('Maximiliano Aguirre','Bolivia 1569','3814789654','maxi93@gmail.com'),
('Santiago Peralta','Benjamin Matienzo','3814569852','santi@gmail.com'),
('Florencia Perez','Adolfo de la vega 56','38147854654','flopy@gmail.com'),
('Leo Alderete','Don Bosco 569','3814789582','leoal@gmail.com');


insert into categorias (nombre) values ('frenos'),
 ('amortiguadores'),
 ('bujias'),
 ('cadenas'),
 ('balancines'),
 ('baterias');
 
insert into categorias (Nombre)
values ('Frenos'),
('Amortiguadores'),
('Aros'),
('Cadenas'),
('Asientos'),
('Cascos'),
('Balancines'),
('Carburadores'),
('Bujias');

insert into productos (Descripcion, Marca, Precio, Id_proveedor, Id_categoria )
values ('GUANTES','Yamaha','3000.00','1','1'),
('AMORTIGUADOR PAR ','Honda','3400.00','2','3'),
('ARO FARO AX 100 2 2.00','Vector','2640.00','5','2'),
('ASIENTO GN 1 ','Bajaj','3650.00','1','4'),
('BANDA DE FRENOS (NIKKI)','Motomel','2000.00','4','2'),
('ARANDELA ','Rouser','1550.00','3','5'),
('ACEITE ULTRALUB 10W','Yamaha','1200.00','5','4');


insert into ventas (Fecha, Total,  Id_producto, Id_empleado )
values ('2022-07-25', '3000','1','3'),
('2022-04-25', '5655','1','2'),
('2022-08-06', '4520','2','3'),
('2022-01-24', '2500','3','5'),
('2022-07-03', '3050','4','4'),
('2022-05-14', '2560','1','5'),
('2022-03-17', '4520','3','9'),
('2022-05-25', '5075','3','1'),
('2022-08-19', '3350','3','3'),
('2022-06-08', '5000','3','6');










