# Caso propuesto: Modelo de Gestión de Operaciones de un Gimnasio (Base de Datos Transaccional)

Un gimnasio desea gestionar las operaciones con sus clientes, así como hacer seguimiento de sus ingresos y optimizar la asignación de entrenadores y espacios. Para ello, se requiere un modelo de datos que registre:

•	Clientes: ClienteID, Nombre, Apellido, TipoDocumento, NroDocumento, FechaNacimiento, Genero, Teléfono, Correo, IDMembresía, FechaInscripcion, Activo (Si/No).

•	Membresía: MembresiaID, Nombre (Mensual, Anual, Premium), Costo.

•	Clases: ClaseID, IDCategoria, CodigoClase, NombreClase, Descripcion, DuracionMin, CapacidadMáxima, Activa (Si/No).

•	Categoria: CategoriaID, Nombre (Yoga, Spinning, Crossfit, etc.)

•	Entrenadores: EntrenadorID, TipoDocumento, NroDocumento, Nombre, Apellido, Especialidad, Correo, Teléfono, Activo (Si/No).

•	Horarios de Clases: HorarioID, ClaseID, EntrenadorID, HoraInicio, DíaSemana, Costo, Activo (Si/No).

•	Reservaciones de Clases: ReservaciónID, ClienteID, HorarioID, FechaReservación, Asistió (Sí/No).

•	Entrenamientos Personales: EntrenamientoID, ClienteID, EntrenadorID, FechaInicio, DuracionMeses, Costo, Activo (Si/No).

•	Pagos: PagoID, ClienteID, FechaPago, MontoPago, MontoMembresia, MontoClases, MontoEntrenamientoPersonal, MetodoPago.


# Modelo Entidad-Relación (ER)

![imagen](https://github.com/user-attachments/assets/ce8c1868-b0b2-46bb-aee4-b6d4b2d17eb8)


# Modelo Lógico de la base de datos transaccional

![imagen](https://github.com/user-attachments/assets/f0e76be8-398b-43bd-93f9-a406fe56ebbe)


# Modelo Físico de la base de datos transaccional

![imagen](https://github.com/user-attachments/assets/5b3938f4-230d-4d89-8817-c6133a0e5852)


# Caso propuesto de solución BI: Inteligencia de Negocios para la Gestión de Operaciones de un Gimnasio (Base de datos Multidimencional)

La directiva de un gimnasio busca implementar un sistema de Inteligencia de Negocios (BI) que permita hacer seguimiento de sus ingresos, optimizar la asignación de entrenadores y espacios así como mejorar la rentabilidad por cliente.

Objetivos:

•	Analizar las tendencias de participación en clases grupales.

•	Monitorear el uso de entrenadores personales y la rentabilidad por cliente.

•	Evaluar ingresos mensuales por tipo de membresía y otros servicios.

•	Detectar los horarios más populares para optimizar la asignación de entrenadores y espacios.

# Modelo Lógico multidimensional de la solución BI

![imagen](https://github.com/user-attachments/assets/b9f45105-b3cf-4a69-be24-9cc24e43cd4e)
