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
	costo             MONEY        NOT NULL
);

-- Tabla cliente
CREATE TABLE cliente (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	id_membresia      INT          NOT NULL,
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
	CONSTRAINT fk_cliente_membresia_id FOREIGN KEY (id_membresia) REFERENCES membresia(id),
	CONSTRAINT identificador_cliente_CONSTRAINT UNIQUE (tipo_documento, nro_documento)
);

-- Tabla clase
CREATE TABLE clase (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	id_categoria      INT          NOT NULL,
	codigo_clase      VARCHAR(10)  NOT NULL UNIQUE,
	nombre            VARCHAR(55)  NOT NULL,
	descripcion       VARCHAR(255),
	duracion_min      INT          NOT NULL,
	capacidad_max     INT          NOT NULL,
	activa            BIT          NOT NULL,
	CONSTRAINT fk_clase_categoria_id FOREIGN KEY (id_categoria) REFERENCES categoria(id)
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
	id_cliente        INT          NOT NULL,
	id_entrenador     INT          NOT NULL,
	fecha_inicio      DATE         NOT NULL,
	duracion_meses    INT          NOT NULL,
	costo             MONEY        NOT NULL,
	activo            BIT          NOT NULL,
	CONSTRAINT fk_entpersonal_cliente_id FOREIGN KEY (id_cliente) REFERENCES cliente(id),
	CONSTRAINT fk_entpersonal_entrenador_id FOREIGN KEY (id_entrenador) REFERENCES entrenador(id)
);

-- Tabla horario_clase
CREATE TABLE horario_clase (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	id_clase          INT          NOT NULL,
	id_entrenador     INT          NOT NULL,
	hora_inicio       VARCHAR(4)   NOT NULL,
	dia_semana        VARCHAR(10)  NOT NULL,
	costo             MONEY        NOT NULL,
	activo            BIT          NOT NULL,
	CONSTRAINT fk_horario_clase_clase_id FOREIGN KEY (id_clase) REFERENCES clase(id),
	CONSTRAINT fk_horario_clase_entrenador_id FOREIGN KEY (id_entrenador) REFERENCES entrenador(id)
);

-- Tabla reservacion_clase
CREATE TABLE reservacion_clase (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	id_cliente        INT          NOT NULL,
	id_horario_clase  INT          NOT NULL,
	fecha_reservacion DATE         NOT NULL,
	asistio           BIT          NOT NULL,
	CONSTRAINT fk_reservclase_cliente_id FOREIGN KEY (id_cliente) REFERENCES cliente(id),
	CONSTRAINT fk_reservclase_horario_id FOREIGN KEY (id_horario_clase) REFERENCES horario_clase(id)
);

-- Tabla pago
CREATE TABLE pago (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	fecha             DATETIME     NOT NULL,
	monto_pago        MONEY        NOT NULL,
	metodo_pago       VARCHAR(20)  NOT NULL
);

-- Tabla pago_detalle
CREATE TABLE pago_detalle (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	id_pago           INT          NOT NULL,
	id_cliente        INT          NOT NULL,
	monto_membresia   MONEY        NOT NULL,
	monto_clases      MONEY        NOT NULL,
	monto_entrenamiento_personal MONEY NOT NULL,
	CONSTRAINT fk_pago_detalle_pago_id FOREIGN KEY (id_pago) REFERENCES pago(id),
	CONSTRAINT fk_pago_detalle_cliente_id FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);
