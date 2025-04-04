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
INSERT INTO membresia (nombre, costo, fecha_inicio, fecha_fin) 
VALUES ('Diario', 10, '01/01/2020', '31/12/2050'),
('Semanal', 25, '01/01/2020', '31/12/2050'),
('Quincenal', 40, '01/01/2020', '31/12/2050'),
('Mensual', 70, '01/01/2020', '31/12/2050');

-- Tabla cliente
-- select * from cliente order by 1
INSERT INTO cliente (tipo_documento, nro_documento, membresia_id, nombre, apellido, genero, telefono, correo, fecha_inscripcion, activo, fecha_nacimiento)
VALUES ('CI', '20123456', 3, 'Gabriel', 'Rojas', 'Masculino', '04161111111', 'gabriel.rojas@mail.com', '01/01/2023', 1, '12/11/1981'),
('CI', '22234567', 4, 'Elena', 'Morales', 'Femenino', '04162222222', 'elena.morales@mail.com', '05/01/2021', 1, '05/07/1990'),
('CI', '20345678', 1, 'Miguel', 'Castro', 'Masculino', '04163333333', 'miguel.castro@mail.com', '10/01/2023', 1, '09/09/1993'),
('CI', '20456789', 4, 'Lucía', 'Martín', 'Femenino', '04164444444', 'lucia.martin@mail.com', '15/01/2023', 1, '13/06/1987'),
('CI', '20567890', 2, 'Javier', 'Vargas', 'Masculino', '04165555555', 'javier.vargas@mail.com', '20/01/2022', 1, '26/02/1989'),
('CI', '28678901', 3, 'Carolina', 'Cruz', 'Femenino', '04166666666', 'carolina.cruz@mail.com', '25/01/2023', 1, '07/05/1979'),
('CI', '20789012', 4, 'Andrés', 'Soto', 'Masculino', '04167777777', 'andres.soto@mail.com', '30/01/2023', 1, '18/08/1992'),
('CI', '20890123', 1, 'Daniela', 'Ramírez', 'Femenino', '04168888888', 'daniela.ramirez@mail.com', '05/02/2023', 1, '22/10/1986'),
('CI', '11901234', 2, 'Santiago', 'López', 'Masculino', '04169999999', 'santiago.lopez@mail.com', '10/02/2020', 1, '14/03/1990'),
('CI', '21012345', 4, 'Valeria', 'González', 'Femenino', '04160000000', 'valeria.gonzalez@mail.com', '15/02/2023', 1, '08/01/1985'),
('CI', '21123456', 3, 'Luis', 'Ortiz', 'Masculino', '04161112345', 'luis.ortiz@mail.com', '20/02/2022', 1, '30/06/1975'),
('CI', '14234567', 4, 'Paula', 'Pérez', 'Femenino', '04162223456', 'paula.perez@mail.com', '25/02/2023', 1, '01/04/1991'),
('CI', '21345678', 1, 'Carlos', 'Mendoza', 'Masculino', '04163334567', 'carlos.mendoza@mail.com', '01/03/2023', 1, '09/09/1993'),
('CI', '21456789', 4, 'Mariana', 'Chávez', 'Femenino', '04164445678', 'mariana.chavez@mail.com', '05/03/2023', 1, '17/07/1986'),
('CI', '15567890', 2, 'Tomás', 'Silva', 'Masculino', '04165556789', 'tomas.silva@mail.com', '10/03/2023', 1, '25/11/1989'),
('CI', '20678901', 3, 'Camila', 'Reyes', 'Femenino', '04166667890', 'camila.reyes@mail.com', '15/03/2024', 1, '03/03/1987'),
('CI', '21789012', 4, 'Fernando', 'Moreno', 'Masculino', '04167778901', 'fernando.moreno@mail.com', '20/03/2025', 1, '12/12/1992'),
('CI', '18890123', 1, 'Lorena', 'Flores', 'Femenino', '04168889012', 'lorena.flores@mail.com', '25/03/2023', 1, '10/02/1988'),
('CI', '21901234', 2, 'Hugo', 'Rivas', 'Masculino', '04169990123', 'hugo.rivas@mail.com', '30/03/2020', 1, '20/08/1990'),
('CI', '19012345', 4, 'Sofía', 'Navarro', 'Femenino', '04160001234', 'sofia.navarro@mail.com', '01/04/2020', 1, '15/05/1985');

-- Tabla disciplina
-- select * from disciplina order by 1
INSERT INTO disciplina (categoria_id, codigo_disciplina, nombre, descripcion, duracion_min, capacidad_max, activa)
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
-- select * from entrenamiento_personal order by 1
INSERT INTO entrenamiento_personal (cliente_id, entrenador_id, fecha_inicio, fecha_fin, hora_inicio, hora_fin, costo_mensual, activo)
VALUES (1, 1, '01/01/2023', '31/12/2050', '0700', '0800', 70, 1),
(2, 2,   '05/01/2021', '31/12/2050', '0700', '0800', 70, 1),
(3, 2,   '10/01/2023', '31/12/2050', '0700', '0800', 70, 1),
(4, 8,   '15/01/2023', '31/12/2050', '0830', '0930', 60, 1),
(5, 2,   '20/01/2022', '31/12/2050', '0700', '0800', 70, 1),
(6, 5,   '25/01/2023', '31/12/2050', '1000', '1100', 70, 1),
(8, 8,   '05/02/2023', '31/12/2050', '0830', '0930', 60, 1),
(10, 5,  '15/02/2023', '31/12/2050', '1000', '1100', 70, 1),
(12, 5,  '25/02/2023', '31/12/2050', '1000', '1100', 70, 1),
(14, 5,  '05/03/2023', '31/12/2050', '1000', '1100', 70, 1),
(15, 8,  '10/03/2023', '31/12/2050', '0830', '0930', 60, 1),
(16, 11, '15/03/2024', '31/12/2050', '1600', '1700', 70, 1),
(18, 8,  '25/03/2023', '31/12/2050', '0830', '0930', 60, 1),
(20, 8,  '01/04/2020', '31/12/2050', '0830', '0930', 60, 1);

-- Tabla horario_disciplina
-- select * from horario_disciplina order by 1
INSERT INTO horario_disciplina (disciplina_id, entrenador_id, hora_inicio, hora_fin, dia_semana, costo, activo)
VALUES (1, 4, '0630', '0730', 'Lunes', 10, 1),	-- Spinning Lunes 0630
(1, 5,  '1800', '1900', 'Miercoles', 10, 1),	-- Spinning Miercoles 1800
(1, 5,  '0630', '0730', 'Viernes', 10, 1),		-- Spinning Viernes 0630
(2, 1,  '1900', '1945', 'Martes', 5, 1),		-- Body Pump Martes 1900
(2, 1,  '1900', '1945', 'Jueves', 5, 1),		-- Body Pump Jueves 1900
(3, 1,  '2000', '2045', 'Martes', 5, 1),		-- Body Pump HIIT Martes 2000
(3, 1,  '2000', '2045', 'Jueves', 5, 1),		-- Body Pump HIIT Jueves 2000
(4, 2,  '0800', '0845', 'Sabado', 5, 1),		-- Crossfit Sabado 0800
(5, 8,  '0700', '0745', 'Martes', 5, 1),		-- Yoga Martes 0700
(5, 8,  '0700', '0745', 'Jueves', 5, 1),		-- Yoga Jueves 0700
(5, 10, '0700', '0745', 'Sabado', 5, 1),		-- Yoga Sabado 0700
(6, 11, '1000', '1045', 'Martes', 10, 1),		-- Pilates Martes 1000
(6, 11, '1000', '1045', 'Jueves', 10, 1),		-- Pilates Jueves 1000
(7, 9,  '1700', '1745', 'Miercoles', 5, 1),		-- Kickboxing Miercoles 1700
(7, 9,  '1700', '1745', 'Jueves', 5, 1),		-- Kickboxing Jueves 1700
(8, 3,  '0900', '0945', 'Lunes', 5, 1),			-- Boxeo Miercoles 1900
(9, 12, '1600', '1645', 'Jueves', 5, 1),		-- Defensa Personal 1600
(10, 6, '1800', '1845', 'Lunes', 5, 1),			-- Zumba Lunes 1800
(10, 6, '1800', '1845', 'Martes', 5, 1),		-- Zumba Martes 1800
(10, 6, '2000', '2045', 'Miercoles', 5, 1),		-- Zumba Miercoles 2000
(10, 7, '1800', '1845', 'Jueves', 5, 1),		-- Zumba Jueves 1800
(10, 7, '1800', '1845', 'Viernes', 5, 1),		-- Zumba Viernes 1800
(10, 7, '0900', '0945', 'Sabado', 5, 1),		-- Zumba Sabado 0900
(11, 6, '0900', '0945', 'Martes', 5, 1),		-- Baile Fitness Martes 0900
(11, 7, '0900', '0945', 'Miercoles', 5, 1),		-- Baile Fitness Miercoles 0900
(11, 7, '0900', '0945', 'Jueves', 5, 1);		-- Baile Fitness Jueves 0900

-- Tabla reservacion_disciplina
-- select * from reservacion_disciplina order by 1
-- Este script inserta 500 registros en reservacion_disciplina con fechas aleatorias entre 01/01/2020 y 31/03/2025
DECLARE @i INT = 1;

WHILE @i <= 500
BEGIN
    DECLARE @id_cliente INT = FLOOR(RAND(CHECKSUM(NEWID())) * 20) + 1;
    DECLARE @id_horario_disciplina INT = FLOOR(RAND(CHECKSUM(NEWID())) * 26) + 1;
    DECLARE @fecha_reservacion DATE = DATEADD(DAY, FLOOR(RAND(CHECKSUM(NEWID())) * 1916), '2020-03-01'); -- Fecha aleatoria entre 01/03/2020 y 31/03/2025
    DECLARE @asistio INT = CASE 
                              WHEN @fecha_reservacion > '2025-03-20' THEN 1
                              ELSE FLOOR(RAND(CHECKSUM(NEWID())) * 2)
                           END;

    INSERT INTO reservacion_disciplina (cliente_id, horario_disciplina_id, fecha_reservacion, asistio)
    VALUES (@id_cliente, @id_horario_disciplina, @fecha_reservacion, @asistio);

    SET @i = @i + 1;
END;

-- Tablas pago y pago_detalle
-- select * from pago order by 1
-- select * from pago_detalle order by id_pago, id
-- 
-- Inserta los pagos segun el tipo de suscripcion (Diaria, Semanal, Quincenal, Mensual, Anual), a partir del 01/02/2020 y hasta el 31/03/2025
DECLARE @fecha_inicio_semilla DATE = CONVERT(datetime, '01/02/2020');
DECLARE @fecha_fin_semilla DATE = CONVERT(datetime, '31/03/2025');

DECLARE @fecha_inicio DATE;
DECLARE @fecha_fin DATE;

DECLARE @fecha_inicio_Temp DATE;
DECLARE @fecha_inscripcion DATE;

DECLARE @membresia_id INT;                        -- 1:Diario, 2:Semanal, 3:Quincenal, 4:Mensual
DECLARE @monto_membresia DECIMAL(10,4) = 0;
DECLARE @monto_disciplinas DECIMAL(10,4) = 0;
DECLARE @monto_entrenamiento_personal DECIMAL(10,4) = 0;

DECLARE @dias_ep INT = 0;
DECLARE @monto_ep DECIMAL(10,4) = 0;
DECLARE @dias_m INT = 0;
DECLARE @monto_m DECIMAL(10,4) = 0;

DECLARE @membresia_cliente INT;

DECLARE @i INT = 1;
DECLARE @pago_id INT = 1;

-- While de Membresia
SET @membresia_id = 1; 

WHILE @membresia_id<=4
BEGIN
   SET @i = 1;
   
   -- While de Clientes
   WHILE @i <= 20
   BEGIN
     
	 -- Obtener la membresia del cliente
	 SELECT @membresia_cliente = membresia_id,
	        @fecha_inscripcion = fecha_inscripcion
	   FROM cliente
	  WHERE id = @i;

     IF  @membresia_cliente = @membresia_id
	 BEGIN

     SET @fecha_inicio = @fecha_inicio_semilla;

     -- Obtener el campo @fecha_fin
     IF @membresia_id=1
        SET @fecha_fin = @fecha_inicio;
     ELSE IF  @membresia_id=2
        SET @fecha_fin = DATEADD(DAY, -1, DATEADD(DAY, 7, @fecha_inicio));
     ELSE IF  @membresia_id=3
        SET @fecha_fin = DATEADD(DAY, -1, DATEADD(DAY, 15, @fecha_inicio));
     ELSE
        SET @fecha_fin = DATEADD(DAY, -1, DATEADD(MONTH, 1, @fecha_inicio));
      
     -- While de Fechas
     WHILE @fecha_fin<=@fecha_fin_semilla
     BEGIN
         -- Obtener el monto de reservacion_disciplina
         SELECT @monto_disciplinas = ISNULL(SUM(h.costo),0)
            FROM reservacion_disciplina r
            JOIN horario_disciplina h on (r.horario_disciplina_id = h.id)
            JOIN cliente c ON (r.cliente_id = c.id)
            JOIN membresia m ON (c.membresia_id = m.id)
           WHERE r.fecha_reservacion between @fecha_inicio and @fecha_fin
             AND asistio = 1
             AND r.cliente_id = @i
             AND m.id = @membresia_id;

         -- Si @fecha_inicio<@fecha_inscripcion, se actualiza la fecha_inicio con la fecha_inscripcion
		 IF @fecha_inicio<@fecha_inscripcion AND @fecha_fin>=@fecha_inscripcion
		   SET @fecha_inicio_Temp = @fecha_inscripcion;
		 ELSE
		   SET @fecha_inicio_Temp = @fecha_inicio;

         -- Obtener el monto de entrenamiento_personal
         SELECT @dias_ep = ISNULL(
                SUM(
                CASE
                 WHEN CONVERT(datetime, @fecha_fin)<CONVERT(datetime, p.fecha_inicio) THEN 0
                 WHEN CONVERT(datetime, @fecha_inicio_Temp)>CONVERT(datetime, p.fecha_fin) THEN 0
                 WHEN (CONVERT(datetime, @fecha_inicio_Temp) BETWEEN CONVERT(datetime, p.fecha_inicio) AND CONVERT(datetime, p.fecha_fin)) AND 
                     (CONVERT(datetime, @fecha_fin) BETWEEN CONVERT(datetime, p.fecha_inicio) AND CONVERT(datetime, p.fecha_fin)) AND
                     c.membresia_id = 4 THEN 1
                 WHEN (CONVERT(datetime, @fecha_inicio_Temp) BETWEEN CONVERT(datetime, p.fecha_inicio) AND CONVERT(datetime, p.fecha_fin)) AND 
                     (CONVERT(datetime, @fecha_fin) BETWEEN CONVERT(datetime, p.fecha_inicio) AND CONVERT(datetime, p.fecha_fin)) THEN 
                     ABS(DATEDIFF(DAY, CONVERT(datetime, @fecha_inicio_Temp), CONVERT(datetime, @fecha_fin)))+1
                 WHEN CONVERT(datetime, @fecha_inicio_Temp)<CONVERT(datetime, p.fecha_inicio) AND 
                     CONVERT(datetime, @fecha_fin)<CONVERT(datetime, p.fecha_fin) THEN
                     ABS(DATEDIFF(DAY, CONVERT(datetime, @fecha_fin), CONVERT(datetime, p.fecha_inicio)))+1
                 ELSE ABS(DATEDIFF(DAY, CONVERT(datetime, @fecha_inicio_Temp), CONVERT(datetime, p.fecha_fin)))+1
                END
                ) 
                ,0),
               @monto_ep = ISNULL(
               SUM(
               CASE
                WHEN c.membresia_id = 4 THEN p.costo_mensual
               ELSE ROUND(p.costo_mensual/30,4)
               END
               ) 
               ,0)
          FROM entrenamiento_personal p
          JOIN cliente c ON (p.cliente_id = c.id)
          JOIN membresia m ON (c.membresia_id = m.id)
         WHERE p.cliente_id = @i
           AND m.id = @membresia_id;
         
         SET @monto_entrenamiento_personal = ROUND(@dias_ep*@monto_ep,2);

		 -- Obtener el monto de membresia
         SELECT @dias_m = ISNULL(
               SUM(
               CASE
                 WHEN CONVERT(datetime, @fecha_fin)<CONVERT(datetime, m.fecha_inicio) THEN 0
                 WHEN CONVERT(datetime, @fecha_inicio_Temp)>CONVERT(datetime, m.fecha_fin) THEN 0
                 WHEN (CONVERT(datetime, @fecha_inicio_Temp) BETWEEN CONVERT(datetime, m.fecha_inicio) AND CONVERT(datetime, m.fecha_fin)) AND 
                     (CONVERT(datetime, @fecha_fin) BETWEEN CONVERT(datetime, m.fecha_inicio) AND CONVERT(datetime, m.fecha_fin)) AND 
					 ABS(DATEDIFF(DAY, CONVERT(datetime, @fecha_inicio_Temp), CONVERT(datetime, @fecha_fin)))+1 = 1 AND 
                     c.membresia_id = 1 THEN 1
                 WHEN (CONVERT(datetime, @fecha_inicio_Temp) BETWEEN CONVERT(datetime, m.fecha_inicio) AND CONVERT(datetime, m.fecha_fin)) AND 
                     (CONVERT(datetime, @fecha_fin) BETWEEN CONVERT(datetime, m.fecha_inicio) AND CONVERT(datetime, m.fecha_fin)) AND 
					 ABS(DATEDIFF(DAY, CONVERT(datetime, @fecha_inicio_Temp), CONVERT(datetime, @fecha_fin)))+1 = 7 AND 
                     c.membresia_id = 2 THEN 7
                 WHEN (CONVERT(datetime, @fecha_inicio_Temp) BETWEEN CONVERT(datetime, m.fecha_inicio) AND CONVERT(datetime, m.fecha_fin)) AND 
                     (CONVERT(datetime, @fecha_fin) BETWEEN CONVERT(datetime, m.fecha_inicio) AND CONVERT(datetime, m.fecha_fin)) AND 
					 ABS(DATEDIFF(DAY, CONVERT(datetime, @fecha_inicio_Temp), CONVERT(datetime, @fecha_fin)))+1 = 15 AND 
                     c.membresia_id = 3 THEN 15
                 WHEN (CONVERT(datetime, @fecha_inicio_Temp) BETWEEN CONVERT(datetime, m.fecha_inicio) AND CONVERT(datetime, m.fecha_fin)) AND 
                     (CONVERT(datetime, @fecha_fin) BETWEEN CONVERT(datetime, m.fecha_inicio) AND CONVERT(datetime, m.fecha_fin)) AND 
					 ABS(DATEDIFF(MONTH, CONVERT(datetime, @fecha_inicio_Temp), DATEADD(DAY, 1, CONVERT(datetime, @fecha_fin)))) = 1 AND 
                     c.membresia_id = 4 THEN 30
                 WHEN CONVERT(datetime, @fecha_inicio_Temp)<CONVERT(datetime, m.fecha_inicio) AND 
                     CONVERT(datetime, @fecha_fin)<CONVERT(datetime, m.fecha_fin) THEN
                     ABS(DATEDIFF(DAY, CONVERT(datetime, @fecha_fin), CONVERT(datetime, m.fecha_inicio)))+1
                 ELSE ABS(DATEDIFF(DAY, CONVERT(datetime, @fecha_inicio_Temp), CONVERT(datetime, @fecha_fin)))+1
               END
               ) 
             ,0),
              @monto_m = ISNULL(
               SUM(
               CASE
                WHEN c.membresia_id = 1 THEN m.costo
               WHEN c.membresia_id = 2 THEN ROUND(m.costo/7,4)
               WHEN c.membresia_id = 3 THEN ROUND(m.costo/15,4)
               ELSE ROUND(m.costo/30,4)
               END
               ) 
               ,0)
           FROM cliente c
           JOIN membresia m ON (m.id = c.membresia_id)
          WHERE c.activo=1
            AND c.id = @i
            AND m.id = @membresia_id
            AND CONVERT(datetime, c.fecha_inscripcion) <= CONVERT(datetime, @fecha_inicio_Temp);

         SET @monto_membresia = ROUND(@dias_m*@monto_m,2);

         DECLARE @metodo_pago NVARCHAR(50) = CASE FLOOR(RAND(CHECKSUM(NEWID())) * 3)
                                                WHEN 0 THEN 'Efectivo'
                                                WHEN 1 THEN 'Transferencia'
                                                ELSE 'Punto de Venta'
                                             END;
         
         -- Insertar en tablas pago y pago_detalle
         --IF @monto_membresia+@monto_disciplinas+@monto_entrenamiento_personal>0
         --BEGIN
           INSERT INTO pago (periodo_inicio, periodo_fin, fecha_pago, monto_pago, metodo_pago)
           VALUES (@fecha_inicio, @fecha_fin, @fecha_fin, @monto_membresia+@monto_disciplinas+@monto_entrenamiento_personal, @metodo_pago);
            
           INSERT INTO pago_detalle (pago_id, cliente_id, membresia_id, monto_membresia, monto_disciplinas, monto_entrenamiento_personal)
           VALUES (@pago_id, @i, @membresia_id, @monto_membresia, @monto_disciplinas, @monto_entrenamiento_personal);

           SET @pago_id = @pago_id + 1;
         --END;

         -- Obtener el campo @fecha_inicio
         IF @membresia_id=1
         BEGIN
           SET @fecha_inicio = DATEADD(DAY, 1, @fecha_inicio);
           SET @fecha_fin = @fecha_inicio;
         END;

         IF @membresia_id=2
         BEGIN
           SET @fecha_inicio = DATEADD(DAY, 7, @fecha_inicio);
           SET @fecha_fin = DATEADD(DAY, -1, DATEADD(DAY, 7, @fecha_inicio));
         END;

         IF @membresia_id=3
         BEGIN
           SET @fecha_inicio = DATEADD(DAY, 15, @fecha_inicio);
           SET @fecha_fin = DATEADD(DAY, -1, DATEADD(DAY, 15, @fecha_inicio));
         END;

         IF @membresia_id=4
         BEGIN
           SET @fecha_inicio = DATEADD(MONTH, 1, @fecha_inicio);
           SET @fecha_fin = DATEADD(DAY, -1, DATEADD(MONTH, 1, @fecha_inicio));
         END;
      
     END;
     
	 END;

     SET @i = @i + 1;
   END;

   SET @membresia_id = @membresia_id + 1;

END;


/*
-- USADO PARA REINICIAR LOS CAMPOS IDENTITY
DBCC CHECKIDENT('PAGO_DETALLE' , RESEED, 0);
DBCC CHECKIDENT('PAGO' , RESEED, 0);
*/

