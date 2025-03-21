-- ---------------------------------
-- Seleccionar la base de datos
-- ---------------------------------
USE bd_gestion_gimnasio;
GO

-- ---------------------------------
-- Insercion de datos en la base de datos
-- ---------------------------------

-- Tabla dim_entrenador
-- select * from entrenador order by id asc
SELECT id as 'entrenador_id',
       nombre, apellido, genero, especialidad
  FROM entrenador;

-- Tabla dim_cliente
-- select * from cliente order by id asc
SELECT id as 'cliente_id',
       nombre, apellido, fecha_nacimiento, genero
  FROM cliente;

-- Tabla dim_disciplina
-- select * from disciplina order by id asc
SELECT d.id as 'disciplina_id',
       d.codigo_disciplina, d.nombre, d.duracion_min, 
	     c.nombre as 'categoria'
  FROM disciplina d
  JOIN categoria c ON (c.id = d.categoria_id);

-- Tabla dim_horario_disciplina
-- select * from horario_disciplina order by id asc
SELECT id as 'horario_disciplina_id',
       dia_semana, hora_inicio, hora_fin
  FROM horario_disciplina;

-- Tabla dim_membresia
-- select * from membresia order by id asc
SELECT id as 'membresia_id', nombre
  FROM membresia;

-- Tabla dim_tiempo
-- select * from pago order by periodo_inicio asc
SELECT DISTINCT 
       periodo_inicio as 'fecha',
	     DAY(periodo_inicio) as 'dia',
	     MONTH(periodo_inicio) as 'mes',
	     YEAR(periodo_inicio) as 'anio',
	     DATENAME(dw, periodo_inicio) as 'dia_semana'
  FROM pago
 ORDER BY fecha ASC;

-- Tabla fact_reservacion_disciplina
-- select * from reservacion_disciplina order by id asc
SELECT r.horario_disciplina_id,
       h.disciplina_id,
       r.cliente_id,
	     h.entrenador_id,
       r.fecha_reservacion,
	     count(r.horario_disciplina_id) as 'cantidad',
	     DATEDIFF(minute, CONCAT(CONVERT(date, GETDATE()), CONCAT(' ', SUBSTRING(h.hora_inicio, 1, 2), ':', SUBSTRING(h.hora_inicio, 3, 2))),
                        CONCAT(CONVERT(date, GETDATE()), CONCAT(' ', SUBSTRING(h.hora_fin, 1, 2), ':', SUBSTRING(h.hora_fin, 3, 2))))
	     as 'duracion_min',
	     sum(h.costo) as 'ingresos'
  FROM reservacion_disciplina r
  JOIN horario_disciplina h ON (h.id = r.horario_disciplina_id)
  JOIN cliente c ON (c.id = r.cliente_id)
  JOIN entrenador e ON (e.id = h.entrenador_id) 
 WHERE r.asistio = 1
 GROUP BY r.horario_disciplina_id,
          h.disciplina_id,
          r.cliente_id,
	        h.entrenador_id,
          r.fecha_reservacion,
		      DATEDIFF(minute, CONCAT(CONVERT(date, GETDATE()), CONCAT(' ', SUBSTRING(h.hora_inicio, 1, 2), ':', SUBSTRING(h.hora_inicio, 3, 2))),
                           CONCAT(CONVERT(date, GETDATE()), CONCAT(' ', SUBSTRING(h.hora_fin, 1, 2), ':', SUBSTRING(h.hora_fin, 3, 2))));

-- Tabla fact_entrenamiento_personal
-- select * from entrenamiento_personal order by id asc
SELECT e.cliente_id,
       e.entrenador_id,
	     p.fecha_pago,
	     (ABS(DATEDIFF(DAY, p.periodo_fin, p.periodo_inicio))+1) as 'cantidad_entrenamientos',
	     DATEDIFF(minute, CONCAT(CONVERT(date, GETDATE()), CONCAT(' ', SUBSTRING(e.hora_inicio, 1, 2), ':', SUBSTRING(e.hora_inicio, 3, 2))),
                        CONCAT(CONVERT(date, GETDATE()), CONCAT(' ', SUBSTRING(e.hora_fin, 1, 2), ':', SUBSTRING(e.hora_fin, 3, 2)))) *
	     (ABS(DATEDIFF(DAY, p.periodo_fin, p.periodo_inicio))+1) as 'duracion_min',
	     SUM(d.monto_entrenamiento_personal) as 'ingresos'
  FROM entrenamiento_personal e
  JOIN pago_detalle d ON (d.cliente_id = e.cliente_id)
  JOIN pago p ON (p.id = d.pago_id)
 WHERE (    p.periodo_inicio BETWEEN e.fecha_inicio AND e.fecha_fin
         OR p.periodo_fin BETWEEN e.fecha_inicio AND e.fecha_fin  )
 GROUP BY e.cliente_id,
          e.entrenador_id,
	        p.fecha_pago,
		      (ABS(DATEDIFF(DAY, p.periodo_fin, p.periodo_inicio))+1),
		      DATEDIFF(minute, CONCAT(CONVERT(date, GETDATE()), CONCAT(' ', SUBSTRING(e.hora_inicio, 1, 2), ':', SUBSTRING(e.hora_inicio, 3, 2))),
                           CONCAT(CONVERT(date, GETDATE()), CONCAT(' ', SUBSTRING(e.hora_fin, 1, 2), ':', SUBSTRING(e.hora_fin, 3, 2)))) *
	        (ABS(DATEDIFF(DAY, p.periodo_fin, p.periodo_inicio))+1),
		      p.id, p.periodo_inicio, p.periodo_fin
 ORDER BY p.fecha_pago ASC;

-- Tabla fact_membresia
-- select * membresia order by id asc
SELECT d.cliente_id,
       d.membresia_id,
	     p.fecha_pago,
	     COUNT(d.cliente_id) as 'cantidad',
	     SUM(d.monto_membresia) as 'ingresos'
  FROM membresia m
  JOIN pago_detalle d ON (d.membresia_id = m.id)
  JOIN pago p ON (p.id = d.pago_id)
 WHERE d.monto_membresia > 0
 GROUP BY d.cliente_id,
          d.membresia_id,
	        p.fecha_pago
 ORDER BY p.fecha_pago ASC;

