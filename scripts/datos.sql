insert into Usuario
(Nombres, Apellidos, Correo, Clave)
values
('David', 'Ferreira', 'davidferreira87@gmail.com', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08')

go

insert into Categoria (Descripcion)
values 
('Tecnología'),
('Muebles'),
('Dormitorio'),
('Deportes')

go

insert into Marca (Descripcion)
values
('Sony'),
('HP'),
('LG'),
('Hyundai'),
('Cannon'),
('Motorola'),
('Yamaha')

go

insert into Departamento (IdDepartamento, Descripcion)
values
('01', 'Arequipa'),
('02', 'Ica'),
('03', 'Lima')

go

insert into Provincia(IdProvincia, Descripcion, IdDepartamento)
values
('0101', 'Arequipa', '01'),
('0102', 'Camaná', '01'),
('0201', 'Ica', '02'),
('0202', 'Chincha', '02'),
('0301', 'Lima', '03'),
('0302', 'Barranca', '03')


go
insert into DISTRITO(IdDistrito,Descripcion, IdProvincia, IdDepartamento) values
('010101','Nieva','0101','01'),
('010102', 'El Cenepa', '0101', '01'),
('010201', 'Camaná', '0102', '01'),
('010202', 'José María Quimper', '0102', '01'),

--ICA - DISTRITO
('020101', 'Ica', '0201', '02'),
('020102', 'La Tinguiña', '0201', '02'),
('020201', 'Chincha Alta', '0202', '02'),
('020202', 'Alto Laran', '0202', '02'),

-- DISTRITO
('030101', 'Lima', '0301', '03'),
('030102', 'Ancón', '0301', '03'),
('030201', 'Barranca', '0302', '03'),
('030202', 'Paramonga', '0302', '03')

go

