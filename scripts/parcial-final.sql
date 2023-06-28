USE proyectoFinal;

-- Tabla: Solicitud
CREATE TABLE Solicitud (
  Especificaciones VARCHAR(255),
  Plazo_entrega VARCHAR(50),
  Cantidad INT,
  Personalizacion VARCHAR(3),
  Presupuesto VARCHAR(50),
  Proveedor_preferido VARCHAR(50),
  PRIMARY KEY (Especificaciones, Plazo_entrega)
);

-- Tabla: Cintillo de identificación
CREATE TABLE Cintillo (
  Fecha_Vacunacion DATE PRIMARY KEY,
  Tamano VARCHAR(50),
  Color VARCHAR(50),
  Resistencia_agua VARCHAR(3)
);

-- Tabla: Proveedor
CREATE TABLE Proveedor (
  Correo VARCHAR(100) PRIMARY KEY,
  Nombre VARCHAR(100),
  Direccion VARCHAR(100),
  Telefono VARCHAR(20)
);

-- Tabla: Dueño del perro
CREATE TABLE Propietario (
  Correo VARCHAR(100) PRIMARY KEY,
  Nombre VARCHAR(100),
  Telefono VARCHAR(20),
  Direccion VARCHAR(100)
);

-- Tabla: Mascota
CREATE TABLE Mascota (
  Nombre_Mascota VARCHAR(100),
  Num_identificacion VARCHAR(50),
  Datos_salud VARCHAR(255),
  PRIMARY KEY (Nombre_Mascota, Num_identificacion)
);

-- Tabla: Sistema de registro
CREATE TABLE Registro (
  Fecha_Vacunacion DATE,
  Especificaciones VARCHAR(300),
  Correo VARCHAR(100),
  Nombre_Mascota VARCHAR(100),
  Estado VARCHAR(50),
  FOREIGN KEY (Especificaciones) REFERENCES Solicitud (Especificaciones),
  FOREIGN KEY (Fecha_Vacunacion) REFERENCES Cintillo (Fecha_Vacunacion),
  FOREIGN KEY (Correo) REFERENCES Propietario (Correo),
  FOREIGN KEY (Nombre_Mascota) REFERENCES Mascota (Nombre_Mascota),
  PRIMARY KEY (Fecha_Vacunacion, Especificaciones, Correo, Nombre_Mascota)
);

-- Tabla: Sistema de pago
CREATE TABLE Pago (
  Especificaciones VARCHAR(300),
  Monto VARCHAR(50),
  Forma_pago VARCHAR(50),
  FOREIGN KEY (Especificaciones) REFERENCES Solicitud (Especificaciones),
  PRIMARY KEY (Especificaciones, Monto)
);

INSERT INTO Solicitud (Especificaciones, Plazo_entrega, Cantidad, Personalizacion, Presupuesto, Proveedor_preferido) VALUES 
('Tamano pequeno', '2 semanas', 100, 'No', '500bs', 'Proveedor A'), 
('Tamano mediano', '1 semana', 50, 'Si', '300bs', 'Proveedor B');

INSERT INTO Cintillo (Fecha_Vacunacion, Tamano, Color, Resistencia_agua) VALUES
('2023-06-01', 'Pequeno', 'Rojo', 'Si'),
('2023-06-15', 'Mediano', 'Azul', 'No');

INSERT INTO Proveedor (Correo, Nombre, Direccion, Telefono) VALUES
('proveedorA@gmail.com', 'Proveedor A', 'Direccion A', '123456789'),
('proveedorB@gmail.com', 'Proveedor B', 'Direccion B', '987654321');

INSERT INTO Propietario (Correo, Nombre, Telefono, Direccion) VALUES
('propietario1@gmail.com', 'Juan Perez', '987654321', 'Direccion A'),
('propietario2@gmail.com', 'Maria Gomez', '123456789', 'Direccion B');

INSERT INTO Mascota (Nombre_Mascota, Num_identificacion, Datos_salud) VALUES
('Max', '1234', 'Salud A'),
('Bella', '5678', 'Salud B');

INSERT INTO Registro (Fecha_Vacunacion, Especificaciones, Correo, Nombre_Mascota, Estado) VALUES
('2023-06-01', 'Tamano pequeno', 'propietario1@gmail.com', 'Max', 'Defectuoso'),
('2023-06-15', 'Tamano mediano', 'propietario2@gmail.com', 'Bella', 'Entregado');

INSERT INTO Pago (Especificaciones, Monto, Forma_pago) VALUES
('Tamano pequeno', '500', 'Efectivo'),
('Tamano mediano', '300', 'Tarjeta');
