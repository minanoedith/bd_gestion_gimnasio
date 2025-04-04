-- ---------------------------------
-- Creacion de la base de datos
-- ---------------------------------
CREATE DATABASE bd_gestion_gimnasio;
GO

-- ---------------------------------
-- Seleccion de la base de datos
-- ---------------------------------
USE bd_gestion_gimnasio;

-- ---------------------------------
-- Creacion de las tablas
-- ---------------------------------

-- Tabla categoria
CREATE TABLE categoria (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	nombre            VARCHAR(55)  NOT NULL UNIQUE
);

-- Tabla membresia
CREATE TABLE membresia (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	nombre            VARCHAR(55)  NOT NULL UNIQUE,
	costo             MONEY        NOT NULL,
	fecha_inicio      DATE         NOT NULL,
	fecha_fin		  DATE         NOT NULL
);

-- Tabla cliente
CREATE TABLE cliente (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	membresia_id      INT          NOT NULL,
	tipo_documento    VARCHAR(15)  NOT NULL,
	nro_documento     VARCHAR(15)  NOT NULL,
	nombre            VARCHAR(55)  NOT NULL,
	apellido          VARCHAR(55)  NOT NULL,
	genero            VARCHAR(10)  NOT NULL,
	fecha_nacimiento  DATE         NOT NULL,
	telefono          VARCHAR(15)  NOT NULL,
	correo            VARCHAR(30)  NOT NULL,
	fecha_inscripcion DATE         NOT NULL,
	activo            BIT          NOT NULL,
	CONSTRAINT fk_cliente_membresia_id FOREIGN KEY (membresia_id) REFERENCES membresia(id),
	CONSTRAINT identificador_cliente_CONSTRAINT UNIQUE (tipo_documento, nro_documento)
);

-- Tabla disciplina
CREATE TABLE disciplina (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	categoria_id      INT          NOT NULL,
	codigo_disciplina VARCHAR(10)  NOT NULL UNIQUE,
	nombre            VARCHAR(55)  NOT NULL,
	descripcion       VARCHAR(255),
	duracion_min      INT          NOT NULL,
	capacidad_max     INT          NOT NULL,
	activa            BIT          NOT NULL,
	CONSTRAINT fk_disciplina_categoria_id FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);

-- Tabla entrenador
CREATE TABLE entrenador (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	tipo_documento    VARCHAR(15)  NOT NULL,
	nro_documento     VARCHAR(15)  NOT NULL,
	nombre            VARCHAR(55)  NOT NULL,
	apellido          VARCHAR(55)  NOT NULL,
	genero            VARCHAR(10)  NOT NULL,
	telefono          VARCHAR(15)  NOT NULL,
	correo            VARCHAR(30)  NOT NULL,
	especialidad      VARCHAR(100) NOT NULL,
	activo            BIT          NOT NULL,
	CONSTRAINT identificador_entrenador_CONSTRAINT UNIQUE (tipo_documento, nro_documento)
);

-- Tabla entrenamiento_personal
CREATE TABLE entrenamiento_personal (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	cliente_id        INT          NOT NULL,
	entrenador_id     INT          NOT NULL,
	fecha_inicio      DATE         NOT NULL,
	fecha_fin         DATE         NOT NULL,
	hora_inicio       VARCHAR(4)   NOT NULL,
	hora_fin          VARCHAR(4)   NOT NULL,
	costo_mensual     MONEY        NOT NULL,
	activo            BIT          NOT NULL,
	CONSTRAINT fk_entpersonal_cliente_id FOREIGN KEY (cliente_id) REFERENCES cliente(id),
	CONSTRAINT fk_entpersonal_entrenador_id FOREIGN KEY (entrenador_id) REFERENCES entrenador(id)
);

-- Tabla horario_disciplina
CREATE TABLE horario_disciplina (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	disciplina_id     INT          NOT NULL,
	entrenador_id     INT          NOT NULL,
	hora_inicio       VARCHAR(4)   NOT NULL,
	hora_fin          VARCHAR(4)   NOT NULL,
	dia_semana        VARCHAR(10)  NOT NULL,
	costo             MONEY        NOT NULL,
	activo            BIT          NOT NULL,
	CONSTRAINT fk_hordisciplina_disciplina_id FOREIGN KEY (disciplina_id) REFERENCES disciplina(id),
	CONSTRAINT fk_hordisciplina_entrenador_id FOREIGN KEY (entrenador_id) REFERENCES entrenador(id)
);

-- Tabla reservacion_disciplina
CREATE TABLE reservacion_disciplina (
	id                     INT IDENTITY(1,1) PRIMARY KEY,
	cliente_id             INT          NOT NULL,
	horario_disciplina_id  INT          NOT NULL,
	fecha_reservacion      DATE         NOT NULL,
	asistio                BIT          NOT NULL,
	CONSTRAINT fk_reservdisciplina_cliente_id FOREIGN KEY (cliente_id) REFERENCES cliente(id),
	CONSTRAINT fk_reservdisciplina_horario_id FOREIGN KEY (horario_disciplina_id) REFERENCES horario_disciplina(id)
);

-- Tabla pago
CREATE TABLE pago (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	periodo_inicio    DATE         NOT NULL,
	periodo_fin       DATE         NOT NULL,
	fecha_pago        DATE         NOT NULL,
	monto_pago        MONEY        NOT NULL,
	metodo_pago       VARCHAR(20)  NOT NULL
);

-- Tabla pago_detalle
CREATE TABLE pago_detalle (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	pago_id           INT          NOT NULL,
	cliente_id        INT          NOT NULL,
	membresia_id      INT          NOT NULL,
	monto_membresia   MONEY        NOT NULL,
	monto_disciplinas MONEY        NOT NULL,
	monto_entrenamiento_personal MONEY NOT NULL,
	CONSTRAINT fk_pago_detalle_pago_id FOREIGN KEY (pago_id) REFERENCES pago(id),
	CONSTRAINT fk_pago_detalle_cliente_id FOREIGN KEY (cliente_id) REFERENCES cliente(id),
	CONSTRAINT fk_pago_detalle_membresia_id FOREIGN KEY (membresia_id) REFERENCES membresia(id)
);
