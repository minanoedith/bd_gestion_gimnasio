-- ---------------------------------
-- Creacion de la base de datos
-- ---------------------------------
CREATE DATABASE bd_gestion_gimnasio_bi;
GO

-- ---------------------------------
-- Seleccion de la base de datos
-- ---------------------------------
USE bd_gestion_gimnasio_bi;

-- ---------------------------------
-- Creacion de las tablas
-- ---------------------------------

-- Tabla dim_entrenador
CREATE TABLE dim_entrenador (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	entrenador_id     INT          NOT NULL,
	nombre            VARCHAR(55)  NOT NULL,
	apellido          VARCHAR(55)  NOT NULL,
	genero            VARCHAR(10)  NOT NULL,
	especialidad      VARCHAR(100) NOT NULL
);

-- Tabla dim_cliente
CREATE TABLE dim_cliente (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	cliente_id        INT          NOT NULL,
	nombre            VARCHAR(55)  NOT NULL,
	apellido          VARCHAR(55)  NOT NULL,
	fecha_nacimiento  DATE         NOT NULL,     
	genero            VARCHAR(10)  NOT NULL
);

-- Tabla dim_disciplina
CREATE TABLE dim_disciplina (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	disciplina_id     INT          NOT NULL,
	codigo_disciplina VARCHAR(10)  NOT NULL,
	nombre            VARCHAR(55)  NOT NULL,
	duracion_min      INT          NOT NULL,
	categoria         VARCHAR(55)  NOT NULL
);

-- Tabla dim_horario_disciplina
CREATE TABLE dim_horario_disciplina (
	id                     INT IDENTITY(1,1) PRIMARY KEY,
	horario_disciplina_id  INT          NOT NULL,
	dia_semana             VARCHAR(10)  NOT NULL,
	hora_inicio            VARCHAR(4)   NOT NULL,
	hora_fin               VARCHAR(4)   NOT NULL
);

-- Tabla dim_membresia
CREATE TABLE dim_membresia (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	membresia_id      INT          NOT NULL,
	nombre            VARCHAR(55)  NOT NULL
);

-- Tabla dim_tiempo
CREATE TABLE dim_tiempo (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	fecha             DATE         NOT NULL,
	dia               INT          NOT NULL,
	mes               INT          NOT NULL,
	anio              INT          NOT NULL,
	dia_semana        NVARCHAR(30)  NOT NULL
);

-- Tabla fact_reservacion_disciplina
CREATE TABLE fact_reservacion_disciplina (
	id                         INT IDENTITY(1,1) PRIMARY KEY,
	dim_horario_disciplina_id  INT           NOT NULL,
	dim_disciplina_id          INT           NOT NULL,
	dim_cliente_id             INT           NOT NULL,
	dim_entrenador_id          INT           NOT NULL,
	dim_tiempo_id              INT           NOT NULL,
	cantidad                   INT           NOT NULL,
	duracion_min               INT           NOT NULL,
	ingresos                   DECIMAL(10,2) NOT NULL,
	CONSTRAINT fk_facreshordisc_dimhordisc_id FOREIGN KEY (dim_horario_disciplina_id) REFERENCES dim_horario_disciplina(id),
	CONSTRAINT fk_facresdisc_dimdisc_id FOREIGN KEY (dim_disciplina_id) REFERENCES dim_disciplina(id),
	CONSTRAINT fk_facresdisc_dimcli_id FOREIGN KEY (dim_cliente_id) REFERENCES dim_cliente(id),
	CONSTRAINT fk_facresdisc_diment_id FOREIGN KEY (dim_entrenador_id) REFERENCES dim_entrenador(id),
	CONSTRAINT fk_facresdisc_dimtie_id FOREIGN KEY (dim_tiempo_id) REFERENCES dim_tiempo(id)
);

-- Tabla fact_entrenamiento_personal
CREATE TABLE fact_entrenamiento_personal (
	id                         INT IDENTITY(1,1) PRIMARY KEY,
	dim_cliente_id             INT           NOT NULL,
	dim_entrenador_id          INT           NOT NULL,
	dim_tiempo_id              INT           NOT NULL,
	cantidad_entrenamientos    INT           NOT NULL,
	duracion_min               INT           NOT NULL,
	ingresos                   DECIMAL(10,2) NOT NULL,
	CONSTRAINT fk_facentper_dimcli_id FOREIGN KEY (dim_cliente_id) REFERENCES dim_cliente(id),
	CONSTRAINT fk_facentper_diment_id FOREIGN KEY (dim_entrenador_id) REFERENCES dim_entrenador(id),
	CONSTRAINT fk_facentper_dimtie_id FOREIGN KEY (dim_tiempo_id) REFERENCES dim_tiempo(id)
);

-- Tabla fact_membresia
CREATE TABLE fact_membresia (
	id                INT IDENTITY(1,1) PRIMARY KEY,
	dim_cliente_id    INT           NOT NULL,
	dim_membresia_id  INT           NOT NULL,
	dim_tiempo_id     INT           NOT NULL,
	cantidad          INT           NOT NULL,
	ingresos          DECIMAL(10,2) NOT NULL,
	CONSTRAINT fk_facmem_dimcli_id FOREIGN KEY (dim_cliente_id) REFERENCES dim_cliente(id),
	CONSTRAINT fk_facmem_dimmem_id FOREIGN KEY (dim_membresia_id) REFERENCES dim_membresia(id),
	CONSTRAINT fk_facmem_dimtie_id FOREIGN KEY (dim_tiempo_id) REFERENCES dim_tiempo(id)
);
