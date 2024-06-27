CREATE DATABASE DBKINALMALLSQLMAGNAMENT
USE DBKINALMALLSQLMAGNAMENT;

Create table Departamentos(
    codigoDepartamento int not null IDENTITY(1,1),
    nombreDepartamento varchar(45) not null,
    primary key (codigoDepartamento)
);

Create Table Cargos(
    codigoCargo int not null IDENTITY(1,1),
    nombreCargo varchar(45) not null,
    primary key (codigoCargo)
);

Create Table Horarios(
    codigoHorario int not null IDENTITY(1,1),
    horarioEntrada varchar(45) not null, 
    horarioSalida varchar(45) not null,
    lunes bit,
    martes bit,
    miercoles bit,
    jueves bit,
    viernes bit,
    primary key (codigoHorario)
);

Create Table Administracion(
    codigoAdministracion int not null IDENTITY(1,1),
    direccion varchar(45) not null,
    telefono varchar(45) not null,
    primary key (codigoAdministracion)
);

SELECT * FROM Departamentos;
SELECT * FROM Horarios;
SELECT * FROM Cargos;
SELECT * FROM Administracion;

Create Table TipoCliente(
    codigoTipoCliente int not null IDENTITY(1,1),
    descripcion varchar(45) not null,
    primary key (codigoTipoCliente)
);

Create Table Locales(
    codigoLocal int not null IDENTITY(1,1),
    saldoFavor decimal(11,2) default 0.0,
    saldoContra decimal(11,2) default 0.0,
    mesesPendientes int default 0,
    disponibilidad bit not null,
    valorLocal decimal(11,2) not null,
    valorAdministracion decimal(11,2) not null,
    primary key (codigoLocal)
);

Create Table Empleados(
    codigoEmpleados int not null IDENTITY(1,1),
    nombreEmpleado varchar(45) not null,
    apellidoEmpleado varchar(45) not null,
    correoElectronico varchar(45) not null,
    telefonoEmpleado varchar(8) not null,
    fechaContrato date not null,
    sueldo decimal(11,2) not null,
    codigoDepartamentos int not null, 
    codigoCargo int not null,
    codigoHorario int not null,
    codigoAdministracion int null,
    foreign key (codigoDepartamentos) references Departamentos(codigoDepartamento),
    foreign key (codigoCargo) references Cargos(codigoCargo),
    foreign key (codigoAdministracion) references Administracion(codigoAdministracion),
    foreign key (codigoHorario) references Horarios(codigoHorario),
    primary key (codigoEmpleados)
);

Create Table Proveedores(
    codigoProveedores int not null IDENTITY(1,1),
    NITProveedor varchar(45) not null, 
    servicioPrestado varchar(45) not null, 
    telefonoProveedor varchar(8) not null,
    direccionProveedor varchar(45) not null,
    saldoFavor decimal(11,2) not null,
    saldoContra decimal(11,2) not null,
    administracion_codigoAdministracion int not null,
    foreign key (administracion_codigoAdministracion) references Administracion(codigoAdministracion),
    primary key (codigoProveedores)
);

SELECT * FROM TipoCliente;
SELECT * FROM Locales;
SELECT * FROM Proveedores;
SELECT * FROM Empleados;

Create Table CuentasPorPagar(
    codigoCuentasPorPagar int not null IDENTITY(1,1), 
    numeroFactura varchar(45) not null,
    fechaLimitePago date not null,
    estadoPago varchar(45) not null,
    valorNetoPago decimal(11,2) not null, 
    codigoAdministracion int not null, 
    codigoProveedor int not null, 
    foreign key (codigoAdministracion) references Administracion(codigoAdministracion),
    foreign key (codigoProveedor) references Proveedores(codigoProveedores),
    primary key (codigoCuentasPorPagar)
);

SELECT numeroFactura, estadoPago, valorNetoPago FROM CuentasPorPagar WHERE valorNetoPago BETWEEN 2000.00 AND 3000.00;

Create Table Clientes(
    codigoCliente int not null IDENTITY(1,1),
    nombreCliente varchar(45) not null,
    apellidoCliente varchar(45) not null,
    telefonoCliente varchar(8) not null,
    direccionCliente varchar(60) not null,
    email varchar(45) not null,
    codigoLocal int not null,
    codigoAdministracion int not null,
    codigoTipoCliente int not null,
    foreign key (codigoLocal) references Locales(codigoLocal),
    foreign key (codigoTipoCliente) references TipoCliente(codigoTipoCliente),
    foreign key (codigoAdministracion) references Administracion(codigoAdministracion),
    primary key (codigoCliente)
);

Create Table CuentasPorCobrar(
    codigoCuentasPorCobrar int not null IDENTITY(1,1),
    codigoFactura varchar(45) not null,
    anio varchar(4) not null,
    mes int not null,
    valorNetoPago decimal(10,2) not null,
    estadoPago varchar(45) not null,
    codigoAdministracion int not null,
    codigoCliente int not null,
    codigoLocal int not null,
    foreign key (codigoAdministracion) references Administracion(codigoAdministracion),
    foreign key (codigoCliente) references Clientes(codigoCliente),
    foreign key (codigoLocal) references Locales(codigoLocal),
    primary key (codigoCuentasPorCobrar)
);

Create Table Usuario(
    codigoUsuario int not null IDENTITY(1,1),
    nombreUsuario varchar(100) not null,
    apellidoUsuario varchar(100) not null,
    usuarioLogin varchar(100) not null,
    contrasena varchar(50) not null,
    primary key (codigoUsuario)
);

Create Table Login(
    usuarioMaster varchar(50) not null,
    passwordLogin varchar(50) not null,
    primary key (usuarioMaster)
);

/***********************CONSULTAS DE SQL SERVER *********************************************/

-- CONSULTAS Departementos
-- 1. Encontrar toda la informacion de departamentos 
SELECT * FROM Departamentos;
-- 2. Estoy traendo informacion  especifica con el operador like 
SELECT * FROM Departamentos WHERE nombreDepartamento like '%TI';
-- 3. Forma dos de encontrar dicho valor 
SELECT * FROM Departamentos WHERE nombreDepartamento = 'Servicio al cliente';
-- 4. Estoy traendo la informacion que tengo como id 10 
SELECT nombreDepartamento FROM Departamentos WHERE codigoDepartamento = 10;

-- CONSULTAS Cargos
-- 1. Encontrar todos los cargos 
SELECT * FROM Cargos;
-- 2. Encontrar datos por medio del operador LIKE
SELECT * FROM Cargos WHERE nombreCargo LIKE '%Analista de%';
-- 3. Encontrar datos por medio del WHERE 
SELECT * FROM Cargos WHERE nombreCargo = 'Analista de datos';
-- 4. Encontrar valores por numero 
SELECT * FROM Cargos WHERE codigoCargo = 10;


-- CONSULTAS HORARIOS 
-- 1. Seleccione todos los horarios disponibles
SELECT * FROM Horarios;
-- 2. Seleccion horarios utilizando el between 
SELECT * FROM Horarios
WHERE CAST(horarioEntrada AS TIME) = '08:00';


-- CONSULTAS ADMINISTRACION 
SELECT * FROM ADMINISTRACION;


-- NO RECOMENDABLE : CONVINACION DE LAS DOS TABLAS : Departamentos , Cargos , Horarios , Administacion 
SELECT nombreDepartamento 
FROM Departamentos UNION 
SELECT nombreCargo from Cargos;

-- T% donde comience y donde finaliza %T
SELECT nombreCargo 
FROM Cargos WHERE nombreCargo LIKE 'T%';

SELECT nombreCargo 
FROM Cargos WHERE nombreCargo IN('Técnico','Supervisor');



-- CONSULTAS POR CUENTASPORPAGAR 
SELECT * FROM CuentasPorPagar;

-- 1. Traer todas las estados de pago pagados 
SELECT codigoCuentasPorPagar, numeroFactura, estadoPago FROM CuentasPorPagar WHERE  estadoPago = 'Pagado';

-- 2. Traeme el numero de factura de pagos mayores a 2000.00
SELECT numeroFactura, valorNetoPago, estadoPago FROM CuentasPorPagar WHERE valorNetoPago  >= 2000 AND estadoPago = 'Pagado';

-- 3. Traeme el numro de factura  el estado de pago , el estaod de valor y el codigo de proveedor con los valores reales 
SELECT numeroFactura cpp, estadoPago cpp, NITProveedor p FROM CuentasPorPagar  cpp INNER JOIN Proveedores p ON cpp.codigoCuentasPorPagar = p.codigoProveedores;


SELECT 
    cpp.numeroFactura AS numeroFactura, 
    cpp.estadoPago AS estadoPago, 
    p.NITProveedor AS NITProveedor
FROM 
    CuentasPorPagar cpp
INNER JOIN 
    Proveedores p 
ON 
    cpp.codigoProveedor = p.codigoProveedores;

SELECT * FROM Empleados;


/********************************************VISTAS EN SQL SERVER ************************************************************************/

-- Empleados Relacion Departamentos, Cargos, Administracion, Horario, Empleado

-- CREACION DE VISTAS 
-- Quiero que por medio de una vista  muestre el id del empleado, nomobre y apellido del emeplado,  departamento y el sueldo que sea mayor a 4000 qquetzales 

CREATE VIEW vw_Empleados AS
SELECT e.nombreEmpleado, e.apellidoEmpleado, d.nombreDepartamento, e.sueldo
FROM Empleados e 
JOIN Departamentos d ON e.codigoDepartamentos = d.codigoDepartamento
WHERE e.sueldo > 4000.00;

SELECT * FROM vw_Empleados;
DROP VIEW vw_Empleados;

