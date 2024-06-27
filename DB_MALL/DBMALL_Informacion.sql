/* Insertando valores en Departamentos */
INSERT INTO Departamentos (nombreDepartamento) VALUES 
('Recursos Humanos'), ('Ventas'), ('Marketing'), ('TI'), 
('Finanzas'), ('Logística'), ('Producción'), ('Compras'), 
('Servicio al Cliente'), ('Legal'), ('Investigación y Desarrollo'), 
('Calidad'), ('Mantenimiento'), ('Proyectos'), ('Administración'), 
('Seguridad'), ('Comunicación'), ('Planeación'), 
('Innovación'), ('Ingeniería'), ('Consultoría'), 
('Gestión de Riesgos'), ('Sistemas'), ('Operaciones'), 
('Relaciones Públicas'), ('Auditoría'), ('Control Interno'), 
('Educación'), ('Soporte Técnico'), ('Salud y Seguridad');

/* Insertando valores en Cargos */
INSERT INTO Cargos (nombreCargo) VALUES 
('Gerente'), ('Asistente'), ('Analista'), ('Coordinador'), 
('Director'), ('Supervisor'), ('Jefe de Área'), ('Técnico'), 
('Especialista'), ('Auxiliar'), ('Operador'), 
('Consultor'), ('Administrador'), ('Recepcionista'), 
('Secretario'), ('Encargado'), ('Líder de Proyecto'), 
('Auditor'), ('Contador'), ('Abogado'), ('Ingeniero'), 
('Diseñador'), ('Desarrollador'), ('Analista de Datos'), 
('Agente de Ventas'), ('Representante'), ('Gerente de Producto'), 
('Investigador'), ('Capacitador'), ('Inspector');

/* Insertando valores en Horarios */
INSERT INTO Horarios (horarioEntrada, horarioSalida, lunes, martes, miercoles, jueves, viernes) VALUES 
('08:00', '17:00', 1, 1, 1, 1, 1), ('09:00', '18:00', 1, 1, 1, 1, 1), ('07:00', '16:00', 1, 1, 1, 1, 1), 
('10:00', '19:00', 1, 1, 1, 1, 1), ('06:00', '15:00', 1, 1, 1, 1, 1), ('08:30', '17:30', 1, 1, 1, 1, 1), 
('09:30', '18:30', 1, 1, 1, 1, 1), ('07:30', '16:30', 1, 1, 1, 1, 1), ('10:30', '19:30', 1, 1, 1, 1, 1), 
('06:30', '15:30', 1, 1, 1, 1, 1), ('08:00', '17:00', 1, 1, 1, 1, 0), ('09:00', '18:00', 1, 1, 1, 1, 0), 
('07:00', '16:00', 1, 1, 1, 1, 0), ('10:00', '19:00', 1, 1, 1, 1, 0), ('06:00', '15:00', 1, 1, 1, 1, 0), 
('08:30', '17:30', 1, 1, 1, 1, 0), ('09:30', '18:30', 1, 1, 1, 1, 0), ('07:30', '16:30', 1, 1, 1, 1, 0), 
('10:30', '19:30', 1, 1, 1, 1, 0), ('06:30', '15:30', 1, 1, 1, 1, 0), ('08:00', '17:00', 0, 0, 0, 0, 0), 
('09:00', '18:00', 0, 0, 0, 0, 0), ('07:00', '16:00', 0, 0, 0, 0, 0), ('10:00', '19:00', 0, 0, 0, 0, 0), 
('06:00', '15:00', 0, 0, 0, 0, 0), ('08:30', '17:30', 0, 0, 0, 0, 0), ('09:30', '18:30', 0, 0, 0, 0, 0), 
('07:30', '16:30', 0, 0, 0, 0, 0), ('10:30', '19:30', 0, 0, 0, 0, 0), ('06:30', '15:30', 0, 0, 0, 0, 0);

/* Insertando valores en Administracion */
INSERT INTO Administracion (direccion, telefono) VALUES 
('Av. Principal 123', '12345678'), ('Calle Falsa 456', '87654321'), ('Av. Secundaria 789', '11223344'), 
('Calle Real 101', '55667788'), ('Av. Central 202', '99887766'), ('Calle Norte 303', '44332211'), 
('Av. Sur 404', '66778899'), ('Calle Este 505', '33445566'), ('Av. Oeste 606', '22113344'), 
('Calle Nueva 707', '77889900'), ('Av. Vieja 808', '99882211'), ('Calle Alta 909', '55664433'), 
('Av. Baja 1010', '33446655'), ('Calle Larga 1111', '77886655'), ('Av. Corta 1212', '99884433'), 
('Calle Ancha 1313', '11225577'), ('Av. Estrecha 1414', '33448822'), ('Calle Redonda 1515', '55669988'), 
('Av. Cuadrada 1616', '77881100'), ('Calle Curva 1717', '99883322'), ('Av. Recta 1818', '11221144'), 
('Calle Llana 1919', '33443366'), ('Av. Empinada 2020', '55665588'), ('Calle Empedrada 2121', '77887799'), 
('Av. Asfaltada 2222', '99880011'), ('Calle Pavimentada 2323', '11223355'), ('Av. Terracería 2424', '33446677'), 
('Calle Sin Salida 2525', '55669900'), ('Av. Con Salida 2626', '77882211'), ('Calle Estrecha 2727', '99884455');

/* Insertando valores en TipoCliente */
INSERT INTO TipoCliente (descripcion) VALUES 
('Regular'), ('VIP'), ('Nuevo'), ('Fidelizado'), ('Mayorista'), ('Minorista'), ('Online'), 
('Presencial'), ('Corporativo'), ('Individual'), ('Internacional'), ('Nacional'), ('Frecuente'), 
('Ocasional'), ('Suscriptor'), ('Preferente'), ('Premium'), ('Platino'), ('Oro'), 
('Plata'), ('Bronce'), ('Estándar'), ('Especial'), ('Básico'), ('Avanzado'), ('Plus'), 
('Negocios'), ('Estudiante'), ('Senior'), ('Joven');


INSERT INTO Locales (saldoFavor, saldoContra, mesesPendientes, disponibilidad, valorLocal, valorAdministracion)
VALUES 
(1000.00, 200.00, 2, 1, 50000.00, 5000.00),
(500.00, 0.00, 0, 0, 35000.00, 3500.00),
(200.00, 300.00, 1, 1, 45000.00, 4500.00),
(1200.00, 100.00, 3, 1, 60000.00, 6000.00),
(800.00, 150.00, 2, 0, 40000.00, 4000.00),
(1100.00, 250.00, 1, 1, 55000.00, 5500.00),
(1300.00, 350.00, 0, 0, 65000.00, 6500.00),
(900.00, 50.00, 3, 1, 37000.00, 3700.00),
(1400.00, 400.00, 2, 0, 70000.00, 7000.00),
(600.00, 0.00, 1, 1, 30000.00, 3000.00),
(700.00, 100.00, 2, 1, 32000.00, 3200.00),
(1500.00, 500.00, 3, 0, 75000.00, 7500.00),
(1600.00, 600.00, 0, 1, 80000.00, 8000.00),
(1700.00, 700.00, 1, 0, 85000.00, 8500.00),
(1800.00, 800.00, 2, 1, 90000.00, 9000.00),
(1900.00, 900.00, 3, 0, 95000.00, 9500.00),
(2000.00, 1000.00, 0, 1, 100000.00, 10000.00),
(2100.00, 1100.00, 1, 0, 105000.00, 10500.00),
(2200.00, 1200.00, 2, 1, 110000.00, 11000.00),
(2300.00, 1300.00, 3, 0, 115000.00, 11500.00),
(2400.00, 1400.00, 0, 1, 120000.00, 12000.00),
(2500.00, 1500.00, 1, 0, 125000.00, 12500.00),
(2600.00, 1600.00, 2, 1, 130000.00, 13000.00),
(2700.00, 1700.00, 3, 0, 135000.00, 13500.00),
(2800.00, 1800.00, 0, 1, 140000.00, 14000.00),
(2900.00, 1900.00, 1, 0, 145000.00, 14500.00),
(3000.00, 2000.00, 2, 1, 150000.00, 15000.00),
(3100.00, 2100.00, 3, 0, 155000.00, 15500.00),
(3200.00, 2200.00, 0, 1, 160000.00, 16000.00),
(3300.00, 2300.00, 1, 0, 165000.00, 16500.00);


INSERT INTO Empleados (nombreEmpleado, apellidoEmpleado, correoElectronico, telefonoEmpleado, fechaContrato, sueldo, codigoDepartamentos, codigoCargo, codigoHorario, codigoAdministracion)
VALUES 
('Juan', 'Perez', 'juan.perez1@example.com', '12345678', '2022-01-15', 30000.00, 1, 2, 1, 1),
('Maria', 'Gonzalez', 'maria.gonzalez2@example.com', '87654321', '2021-05-20', 28000.00, 2, 3, 2, 2),
('Carlos', 'Rodriguez', 'carlos.rodriguez3@example.com', '11223344', '2023-03-10', 32000.00, 3, 1, 3, NULL),
('Ana', 'Lopez', 'ana.lopez4@example.com', '22334455', '2022-02-01', 29000.00, 1, 2, 2, 3),
('Pedro', 'Martinez', 'pedro.martinez5@example.com', '33445566', '2021-08-15', 31000.00, 2, 3, 1, 4),
('Luis', 'Hernandez', 'luis.hernandez6@example.com', '44556677', '2020-12-20', 27000.00, 3, 1, 2, NULL),
('Sofia', 'Ramirez', 'sofia.ramirez7@example.com', '55667788', '2023-04-25', 33000.00, 1, 2, 3, 5),
('Miguel', 'Fernandez', 'miguel.fernandez8@example.com', '66778899', '2022-07-30', 30000.00, 2, 3, 1, 6),
('Laura', 'Gomez', 'laura.gomez9@example.com', '77889900', '2021-11-05', 28000.00, 3, 1, 2, NULL),
('Jorge', 'Diaz', 'jorge.diaz10@example.com', '88990011', '2023-01-10', 32000.00, 1, 2, 3, 7),
('Patricia', 'Morales', 'patricia.morales11@example.com', '99001122', '2022-03-15', 29000.00, 2, 3, 1, 8),
('Alberto', 'Ortega', 'alberto.ortega12@example.com', '10111213', '2021-06-20', 31000.00, 3, 1, 2, NULL),
('Isabel', 'Castro', 'isabel.castro13@example.com', '11121314', '2020-09-25', 27000.00, 1, 2, 3, 9),
('Ricardo', 'Vargas', 'ricardo.vargas14@example.com', '12131415', '2023-05-30', 33000.00, 2, 3, 1, 10),
('Valeria', 'Santos', 'valeria.santos15@example.com', '13141516', '2022-08-05', 30000.00, 3, 1, 2, NULL),
('Daniel', 'Ruiz', 'daniel.ruiz16@example.com', '14151617', '2021-12-10', 28000.00, 1, 2, 3, 11),
('Andrea', 'Mendoza', 'andrea.mendoza17@example.com', '15161718', '2023-02-15', 32000.00, 2, 3, 1, 12),
('Francisco', 'Reyes', 'francisco.reyes18@example.com', '16171819', '2022-04-20', 29000.00, 3, 1, 2, NULL),
('Elena', 'Rojas', 'elena.rojas19@example.com', '17181920', '2021-07-25', 31000.00, 1, 2, 3, 13),
('Hugo', 'Romero', 'hugo.romero20@example.com', '18192021', '2020-10-30', 27000.00, 2, 3, 1, 14),
('Marta', 'Acosta', 'marta.acosta21@example.com', '19202122', '2023-06-05', 33000.00, 3, 1, 2, NULL),
('Fernando', 'Silva', 'fernando.silva22@example.com', '20212223', '2022-09-10', 30000.00, 1, 2, 3, 15),
('Alicia', 'Nunez', 'alicia.nunez23@example.com', '21222324', '2021-01-15', 28000.00, 2, 3, 1, 16),
('Oscar', 'Mejia', 'oscar.mejia24@example.com', '22232425', '2023-03-20', 32000.00, 3, 1, 2, NULL),
('Claudia', 'Vega', 'claudia.vega25@example.com', '23242526', '2022-05-25', 29000.00, 1, 2, 3, 17),
('Victor', 'Herrera', 'victor.herrera26@example.com', '24252627', '2021-08-30', 31000.00, 2, 3, 1, 18),
('Teresa', 'Jimenez', 'teresa.jimenez27@example.com', '25262728', '2020-12-05', 27000.00, 3, 1, 2, NULL),
('Rafael', 'Iglesias', 'rafael.iglesias28@example.com', '26272829', '2023-04-10', 33000.00, 1, 2, 3, 19),
('Gabriela', 'Flores', 'gabriela.flores29@example.com', '27282930', '2022-06-15', 30000.00, 2, 3, 1, 20),
('Sergio', 'Campos', 'sergio.campos30@example.com', '28293031', '2021-09-20', 28000.00, 3, 1, 2, NULL);

INSERT INTO Proveedores (NITProveedor, servicioPrestado, telefonoProveedor, direccionProveedor, saldoFavor, saldoContra, administracion_codigoAdministracion)
VALUES 
('1234567890', 'Servicios de limpieza', '12345678', 'Calle 1, Ciudad', 1500.00, 300.00, 1),
('0987654321', 'Mantenimiento de equipos', '23456789', 'Avenida 2, Ciudad', 2000.00, 500.00, 2),
('1122334455', 'Suministro de materiales', '34567890', 'Boulevard 3, Ciudad', 1000.00, 200.00, 3),
('2233445566', 'Reparación de maquinaria', '45678901', 'Calle 4, Ciudad', 1800.00, 400.00, 4),
('3344556677', 'Consultoría técnica', '56789012', 'Avenida 5, Ciudad', 2200.00, 600.00, 5),
('4455667788', 'Servicios de seguridad', '67890123', 'Boulevard 6, Ciudad', 1400.00, 300.00, 6),
('5566778899', 'Servicios de transporte', '78901234', 'Calle 7, Ciudad', 1900.00, 500.00, 7),
('6677889900', 'Alquiler de maquinaria', '89012345', 'Avenida 8, Ciudad', 1300.00, 200.00, 8),
('7788990011', 'Servicios de catering', '90123456', 'Boulevard 9, Ciudad', 2100.00, 400.00, 9),
('8899001122', 'Mantenimiento eléctrico', '01234567', 'Calle 10, Ciudad', 1600.00, 300.00, 10),
('9900112233', 'Suministro de combustible', '12345678', 'Avenida 11, Ciudad', 1700.00, 200.00, 11),
('1011123344', 'Servicios de jardinería', '23456789', 'Boulevard 12, Ciudad', 1200.00, 400.00, 12),
('1112134455', 'Limpieza industrial', '34567890', 'Calle 13, Ciudad', 2000.00, 500.00, 13),
('1213145566', 'Reparación de vehículos', '45678901', 'Avenida 14, Ciudad', 1500.00, 300.00, 14),
('1314156677', 'Servicios de TI', '56789012', 'Boulevard 15, Ciudad', 2300.00, 600.00, 15),
('1415167788', 'Consultoría legal', '67890123', 'Calle 16, Ciudad', 2400.00, 700.00, 16),
('1516178899', 'Auditoría financiera', '78901234', 'Avenida 17, Ciudad', 1800.00, 400.00, 17),
('1617189900', 'Servicios de marketing', '89012345', 'Boulevard 18, Ciudad', 2200.00, 500.00, 18),
('1718190011', 'Diseño gráfico', '90123456', 'Calle 19, Ciudad', 1400.00, 300.00, 19),
('1819201122', 'Servicios de publicidad', '01234567', 'Avenida 20, Ciudad', 1700.00, 400.00, 20);


INSERT INTO CuentasPorPagar (numeroFactura, fechaLimitePago, estadoPago, valorNetoPago, codigoAdministracion, codigoProveedor)
VALUES 
('FAC001', '2023-07-10', 'Pendiente', 1500.00, 1, 1),
('FAC002', '2023-07-15', 'Pagado', 2000.00, 2, 2),
('FAC003', '2023-07-20', 'Pendiente', 2500.00, 3, 3),
('FAC004', '2023-07-25', 'Pagado', 1800.00, 4, 4),
('FAC005', '2023-08-01', 'Pendiente', 2200.00, 5, 5),
('FAC006', '2023-08-05', 'Pagado', 1600.00, 6, 6),
('FAC007', '2023-08-10', 'Pendiente', 1900.00, 7, 7),
('FAC008', '2023-08-15', 'Pagado', 2100.00, 8, 8),
('FAC009', '2023-08-20', 'Pendiente', 2400.00, 9, 9),
('FAC010', '2023-08-25', 'Pagado', 1700.00, 10, 10),
('FAC011', '2023-09-01', 'Pendiente', 2000.00, 11, 11),
('FAC012', '2023-09-05', 'Pagado', 2300.00, 12, 12),
('FAC013', '2023-09-10', 'Pendiente', 2100.00, 13, 13),
('FAC014', '2023-09-15', 'Pagado', 1800.00, 14, 14),
('FAC015', '2023-09-20', 'Pendiente', 2200.00, 15, 15),
('FAC016', '2023-09-25', 'Pagado', 2500.00, 16, 16),
('FAC017', '2023-10-01', 'Pendiente', 1900.00, 17, 17),
('FAC018', '2023-10-05', 'Pagado', 2400.00, 18, 18),
('FAC019', '2023-10-10', 'Pendiente', 2000.00, 19, 19),
('FAC020', '2023-10-15', 'Pagado', 2100.00, 20, 20);
