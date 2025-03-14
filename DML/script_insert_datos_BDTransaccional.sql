-- ---------------------------------
-- Seleccionar la base de datos
-- ---------------------------------
USE bd_gestion_gimnasio;
GO

-- ---------------------------------
-- Insercion de datos en la base de datos
-- ---------------------------------

-- Tabla categoria
-- select * from categoria order by 1
INSERT INTO categoria (nombre) 
VALUES ('Cardiovascular'), 
('Fuerza y Acondicionamiento'),
('Flexibilidad y Cuerpo-Mente'),
('Boxeo y Artes Marciales'),
('Baile');

-- Tabla membresia
-- select * from membresia order by 1
INSERT INTO membresia (nombre, costo) 
VALUES ('Diario', 10),
('Semanal', 25),
('Quincenal', 40),
('Mensual', 70),
('Anual', 800);

-- Tabla cliente
-- select * from cliente order by 1
INSERT INTO cliente (tipo_documento, nro_documento, id_membresia, nombre, apellido, genero, telefono, correo, fecha_inscripcion, activo, fecha_nacimiento)
VALUES ('CI', '20123456', 3, 'Gabriel', 'Rojas', 'Masculino', '04161111111', 'gabriel.rojas@mail.com', '01/01/2023', 1, '12/11/1981'),
('CI', '22234567', 4, 'Elena', 'Morales', 'Femenino', '04162222222', 'elena.morales@mail.com', '05/01/2021', 1, '05/07/1990'),
('CI', '20345678', 1, 'Miguel', 'Castro', 'Masculino', '04163333333', 'miguel.castro@mail.com', '10/01/2023', 1, '09/09/1993'),
('CI', '20456789', 5, 'Lucía', 'Martín', 'Femenino', '04164444444', 'lucia.martin@mail.com', '15/01/2023', 1, '13/06/1987'),
('CI', '20567890', 2, 'Javier', 'Vargas', 'Masculino', '04165555555', 'javier.vargas@mail.com', '20/01/2022', 1, '26/02/1989'),
('CI', '28678901', 3, 'Carolina', 'Cruz', 'Femenino', '04166666666', 'carolina.cruz@mail.com', '25/01/2023', 1, '07/05/1979'),
('CI', '20789012', 4, 'Andrés', 'Soto', 'Masculino', '04167777777', 'andres.soto@mail.com', '30/01/2023', 1, '18/08/1992'),
('CI', '20890123', 1, 'Daniela', 'Ramírez', 'Femenino', '04168888888', 'daniela.ramirez@mail.com', '05/02/2023', 1, '22/10/1986'),
('CI', '11901234', 2, 'Santiago', 'López', 'Masculino', '04169999999', 'santiago.lopez@mail.com', '10/02/2020', 1, '14/03/1990'),
('CI', '21012345', 5, 'Valeria', 'González', 'Femenino', '04160000000', 'valeria.gonzalez@mail.com', '15/02/2023', 1, '08/01/1985'),
('CI', '21123456', 3, 'Luis', 'Ortiz', 'Masculino', '04161112345', 'luis.ortiz@mail.com', '20/02/2022', 1, '30/06/1975'),
('CI', '14234567', 4, 'Paula', 'Pérez', 'Femenino', '04162223456', 'paula.perez@mail.com', '25/02/2023', 1, '01/04/1991'),
('CI', '21345678', 1, 'Carlos', 'Mendoza', 'Masculino', '04163334567', 'carlos.mendoza@mail.com', '01/03/2023', 1, '09/09/1993'),
('CI', '21456789', 5, 'Mariana', 'Chávez', 'Femenino', '04164445678', 'mariana.chavez@mail.com', '05/03/2023', 1, '17/07/1986'),
('CI', '15567890', 2, 'Tomás', 'Silva', 'Masculino', '04165556789', 'tomas.silva@mail.com', '10/03/2023', 1, '25/11/1989'),
('CI', '20678901', 3, 'Camila', 'Reyes', 'Femenino', '04166667890', 'camila.reyes@mail.com', '15/03/2024', 1, '03/03/1987'),
('CI', '21789012', 4, 'Fernando', 'Moreno', 'Masculino', '04167778901', 'fernando.moreno@mail.com', '20/03/2025', 1, '12/12/1992'),
('CI', '18890123', 1, 'Lorena', 'Flores', 'Femenino', '04168889012', 'lorena.flores@mail.com', '25/03/2023', 1, '10/02/1988'),
('CI', '21901234', 2, 'Hugo', 'Rivas', 'Masculino', '04169990123', 'hugo.rivas@mail.com', '30/03/2020', 1, '20/08/1990'),
('CI', '19012345', 5, 'Sofía', 'Navarro', 'Femenino', '04160001234', 'sofia.navarro@mail.com', '01/04/2020', 1, '15/05/1985');

-- Tabla clase
-- select * from clase order by 1
INSERT INTO clase (id_categoria, codigo_clase, nombre, descripcion, duracion_min, capacidad_max, activa)
VALUES 
(1,  'SPIN001', 'Spinning', 'Entrenamiento de alta intensidad sobre bicicletas estacionarias, que simula diferentes terrenos y velocidades, ayudando a mejorar la resistencia cardiovascular', 60, 10, 1),
(2,  'BOPU001', 'Body Pump', 'Clase que combina ejercicios con pesas ligeras a moderadas y altas repeticiones para tonificar y fortalecer los musculos', 45, 15, 1),
(2,  'BOPU002', 'Body Pump HIIT', 'Se basa en realizar ejercicios intensos durante cortos periodos de tiempo, seguidos de breves descansos, lo que maximiza la quema de calorias en poco tiempo', 45, 15, 1),
(2,  'CROS001', 'Crossfit', 'Entrenamiento de fuerza y acondicionamiento basado en ejercicios funcionales constantemente variados realizados a una alta intensidad', 45, 15, 1),
(3,  'YOGA001', 'Yoga', 'Ofrece diferentes estilos que ayudan a mejorar la flexibilidad, la postura y la concentracion mental', 45, 15, 1),
(3,  'PILA001', 'Pilates', 'Se centra en el control y fortalecimiento del core o centro del cuerpo, mejorando la postura y la flexibilidad', 45, 10, 1),
(4,  'KICK001', 'Kickboxing', 'Combinacion de tecnicas de boxeo y artes marciales con movimientos aerobicos que ayudan a mejorar la fuerza y la agilidad', 45, 15, 1),
(4,  'BOXE001', 'Boxeo', 'Entrenamiento con sacos, guantes y ejercicios de golpeo para mejorar la fuerza, coordinacion y resistencia cardiovascular', 45, 15, 1),
(4,  'DEPE001', 'Defensa Personal', 'Tecnicas para defenderse en situaciones de riesgo, a menudo combinadas con acondicionamiento fisico', 45, 10, 1),
(5,  'ZUMB001', 'Zumba', 'Combinacion de baile y ejercicio aerobico con ritmos latinos y populares', 45, 15, 1),
(5,  'BAFI001', 'Baile Fitness', 'Clases de baile de diferentes estilos (hip-hop, salsa, bachata, etc.) con un enfoque en el acondicionamiento fisico', 45, 15, 1);

-- Tabla entrenador
-- select * from entrenador order by 1
INSERT INTO entrenador (tipo_documento, nro_documento, nombre, apellido, genero, telefono, correo, especialidad, activo)
VALUES ('CI','14123456', 'Carlos', 'Perez', 'Masculino', '04141234567', 'carlos.perez@mail.com', 'Body Pump', 1),
('CI','11234567', 'Ana', 'Gomez', 'Femenino', '04142345678', 'ana.gomez@mail.com', 'Crossfit', 1),
('CI','18345678', 'Luis', 'Ramirez', 'Masculino', '04143456789', 'luis.ramirez@mail.com', 'Boxeo', 1),
('CI','15456789', 'Maria', 'Lopez', 'Femenino', '04144567890', 'maria.lopez@mail.com', 'Spinning', 1),
('CI','10567890', 'Jorge', 'Fernandez', 'Masculino', '04145678901', 'jorge.fernandez@mail.com', 'Spinning', 1),
('CI','11678901', 'Laura', 'Martinez', 'Femenino', '04146789012', 'laura.martinez@mail.com', 'Zumba y Baile Fitness', 1),
('CI','12789012', 'Pedro', 'Garcia', 'Masculino', '04147890123', 'pedro.garcia@mail.com', 'Zumba y Baile Fitness', 1),
('CI','16890123', 'Clara', 'Rodriguez', 'Femenino', '04148901234', 'clara.rodriguez@mail.com', 'Yoga', 1),
('CI','18901234', 'Andres', 'Hernandez', 'Masculino', '04149012345', 'andres.hernandez@mail.com', 'Kickboxing', 1),
('CI','11012345', 'Sofia', 'Ruiz', 'Femenino', '04125586696', 'sofia.ruiz@mail.com', 'Yoga', 1),
('CI','17123456', 'Victoria', 'Mejia', 'Femenino', '04121123456', 'victoria.mejia@mail.com', 'Pilates', 1),
('CI','16234567', 'Ricardo', 'Salazar', 'Masculino', '04122234567', 'ricardo.salazar@mail.com', 'Defensa Personal', 1),
('CI','12345678', 'Isabel', 'Ortiz', 'Femenino', '04123345678', 'isabel.ortiz@mail.com', 'Pilates', 1);

-- Tabla entrenamiento_personal
-- duracion_meses=-1 (Indefinido)
-- select * from entrenamiento_personal order by 1
INSERT INTO entrenamiento_personal (id_cliente, id_entrenador, fecha_inicio, duracion_meses, costo, activo)
VALUES (1, 1, '2023-01-01', -1, 70, 1),
(2, 2, '2021-01-05', -1, 70, 1),
(3, 2, '2023-01-10', -1, 70, 1),
(4, 8, '2023-01-15', -1, 60, 1),
(5, 2, '2022-01-20', -1, 70, 1),
(6, 5, '2023-01-25', -1, 70, 1),
(8, 8, '2023-02-05', -1, 60, 1),
(10, 5, '2023-02-15', -1, 70, 1),
(12, 5, '2023-02-25', -1, 70, 1),
(14, 5, '2023-03-05', -1, 70, 1),
(15, 8, '2023-03-10', -1, 60, 1),
(16, 11, '2024-03-15', -1, 70, 1),
(18, 8, '2023-03-25', -1, 60, 1),
(20, 8, '2020-04-01', -1, 60, 1);

-- Tabla horario_clase
-- select * from horario_clase order by 1
INSERT INTO horario_clase (id_clase, id_entrenador, hora_inicio, dia_semana, costo, activo)
VALUES (1, 4, '0630', 'Lunes', 10, 1),	-- Spinning Lunes 0630
(1, 5, '1800', 'Miercoles', 10, 1),		-- Spinning Miercoles 1800
(1, 5, '0630', 'Viernes', 10, 1),		-- Spinning Viernes 0630
(2, 1, '1900', 'Martes', 5, 1),			-- Body Pump Martes 1900
(2, 1, '1900', 'Jueves', 5, 1),			-- Body Pump Jueves 1900
(3, 1, '2000', 'Martes', 5, 1),			-- Body Pump HIIT Martes 2000
(3, 1, '2000', 'Jueves', 5, 1),			-- Body Pump HIIT Jueves 2000
(4, 2, '0800', 'Sabado', 5, 1),			-- Crossfit Sabado 0800
(5, 8, '0700', 'Martes', 5, 1),			-- Yoga Martes 0700
(5, 8, '0700', 'Jueves', 5, 1),			-- Yoga Jueves 0700
(5, 10, '0700', 'Sabado', 5, 1),		-- Yoga Sabado 0700
(6, 11, '1000', 'Martes', 10, 1),		-- Pilates Martes 1000
(6, 11, '1000', 'Jueves', 10, 1),		-- Pilates Jueves 1000
(7, 9, '1700', 'Miercoles', 5, 1),		-- Kickboxing Miercoles 1700
(7, 9, '1700', 'Jueves', 5, 1),			-- Kickboxing Jueves 1700
(8, 3, '0900', 'Lunes', 5, 1),			-- Boxeo Miercoles 1900
(9, 12, '1600', 'Jueves', 5, 1),		-- Defensa Personal 1600
(10, 6, '1800', 'Lunes', 5, 1),			-- Zumba Lunes 1800
(10, 6, '1800', 'Martes', 5, 1),		-- Zumba Martes 1800
(10, 6, '2000', 'Miercoles', 5, 1),		-- Zumba Miercoles 2000
(10, 7, '1800', 'Jueves', 5, 1),		-- Zumba Jueves 1800
(10, 7, '1800', 'Viernes', 5, 1),		-- Zumba Viernes 1800
(10, 7, '0900', 'Sabado', 5, 1),		-- Zumba Sabado 0900
(11, 6, '0900', 'Martes', 5, 1),		-- Baile Fitness Martes 0900
(11, 7, '0900', 'Miercoles', 5, 1),		-- Baile Fitness Miercoles 0900
(11, 7, '0900', 'Jueves', 5, 1);		-- Baile Fitness Jueves 0900

-- Tabla reservacion_clase
-- select * from reservacion_clase order by 1
-- Este registro inserta 100 registros en reservacion_clase con fechas aleatorias entre 01/01/2025 y 31/03/2025
DECLARE @i INT = 1;

WHILE @i <= 100
BEGIN
    DECLARE @id_cliente INT = FLOOR(RAND(CHECKSUM(NEWID())) * 20) + 1;
    DECLARE @id_horario_clase INT = FLOOR(RAND(CHECKSUM(NEWID())) * 26) + 1;
    DECLARE @fecha_reservacion DATE = DATEADD(DAY, FLOOR(RAND(CHECKSUM(NEWID())) * 90), '2025-01-01'); -- Fecha aleatoria entre 01/01/2025 y 31/03/2025
    DECLARE @asistio INT = CASE 
                              WHEN @fecha_reservacion > '2025-03-14' THEN 1
                              ELSE FLOOR(RAND(CHECKSUM(NEWID())) * 2)
                           END;

    INSERT INTO reservacion_clase (id_cliente, id_horario_clase, fecha_reservacion, asistio)
    VALUES (@id_cliente, @id_horario_clase, @fecha_reservacion, @asistio);

    SET @i = @i + 1;
END;

-- Tablas pago y pago_detalle
-- select * from pago order by 1
-- select * from pago_detalle order by id_pago, id
-- Este registro inserta 20 registros de pagos por mes, para un total de 60 registros en ambas tablas
DECLARE @fecha_inicio DATE = CONVERT(datetime, '01/01/2025');	--01/02/2025 | 01/03/2025
DECLARE @fecha_fin DATE = CONVERT(datetime, '31/01/2025');		--28/02/2025 | 31/03/2025
DECLARE @monto_membresia INT = 0;
DECLARE @monto_clases INT = 0;
DECLARE @monto_entrenamiento_personal INT = 0;
DECLARE @i INT = 1;
DECLARE @id_pago INT = 1;		-- 21 | 41

WHILE @i <= 20
BEGIN
   -- reservacion_clase
   SELECT @monto_clases = ISNULL(SUM(h.costo),0)
     FROM reservacion_clase r
     JOIN horario_clase h on (r.id_horario_clase = h.id)
    WHERE r.fecha_reservacion between @fecha_inicio and @fecha_fin
      AND asistio = 1
      AND r.id_cliente = @i;

   -- entrenamiento_personal
   SELECT @monto_entrenamiento_personal = ISNULL(SUM(p.costo),0)
     FROM entrenamiento_personal p
    WHERE (    p.duracion_meses = -1
            OR DATEDIFF(month, p.fecha_inicio, p.duracion_meses) <= CONVERT(datetime, @fecha_fin)
          )
      AND p.id_cliente = @i;
   
   -- membresia
   SELECT @monto_membresia = ISNULL(
		SUM(
		CASE
            WHEN m.nombre = 'Diario'    THEN ROUND(m.costo*30,2)
            WHEN m.nombre = 'Semanal'   THEN ROUND(m.costo*4,2)
            WHEN m.nombre = 'Quincenal' THEN ROUND(m.costo*2,2)
			WHEN m.nombre = 'Mensual'   THEN ROUND(m.costo,2)
			WHEN m.nombre = 'Anual'     THEN ROUND(m.costo/12,2)
        END),0)
	FROM cliente c
	JOIN membresia m ON (m.id = c.id_membresia)
	WHERE c.activo=1
	  AND c.id = @i;

    DECLARE @metodo_pago NVARCHAR(50) = CASE FLOOR(RAND(CHECKSUM(NEWID())) * 3)
                                            WHEN 0 THEN 'Efectivo'
                                            WHEN 1 THEN 'Transferencia'
                                            ELSE 'Punto de Venta'
                                        END;

    INSERT INTO pago (fecha, monto_pago, metodo_pago)
    VALUES (@fecha_fin, @monto_membresia+@monto_clases+@monto_entrenamiento_personal, @metodo_pago);

    INSERT INTO pago_detalle (id_pago, id_cliente, monto_membresia, monto_clases, monto_entrenamiento_personal)
    VALUES (@id_pago, @i, @monto_membresia, @monto_clases, @monto_entrenamiento_personal);

    SET @i = @i + 1;
	SET @id_pago = @id_pago + 1;
END;

/*
-- USADO PARA REINICIAR LOS CAMPOS IDENTITY
DBCC CHECKIDENT('NOMBRE_TABLA' , RESEED, 0);
*/
