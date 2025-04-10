# Caso propuesto: Modelo de Gestión de Operaciones de un Gimnasio (Base de Datos Transaccional)

Un gimnasio desea gestionar las operaciones con sus clientes, así como hacer seguimiento de sus ingresos y optimizar la asignación de entrenadores y espacios. Para ello, se requiere un modelo de datos que registre:

•	Clientes: ClienteID, Nombre, Apellido, TipoDocumento, NroDocumento, FechaNacimiento, Genero, Teléfono, Correo, IDMembresía, FechaInscripcion, Activo (Si/No).

•	Membresía: MembresiaID, Nombre (Mensual, Anual, Premium), Costo.

•	Disciplina: DisciplinaID, IDCategoria, CodigoDisciplina, NombreDisciplina, Descripcion, DuracionMin, CapacidadMáxima, Activa (Si/No).

•	Categoria: CategoriaID, Nombre (Yoga, Spinning, Crossfit, etc.)

•	Horarios de Disciplinas: HorarioID, ClaseID, EntrenadorID, HoraInicio, HoraFin, DíaSemana, Costo, Activo (Si/No).

•	Reservaciones de Disciplina: ReservaciónID, ClienteID, HorarioID, FechaReservación, Asistió (Sí/No).

•	Entrenadores: EntrenadorID, TipoDocumento, NroDocumento, Nombre, Apellido, Especialidad, Correo, Teléfono, Activo (Si/No).

•	Entrenamientos Personales: EntrenamientoID, ClienteID, EntrenadorID, FechaInicio, FechaFin, HoraInicio, HoraFin, Costo, Activo (Si/No).

•	Pagos: PagoID, ClienteID, PeriodoInicio, PeriodoFin, FechaPago, IDMembresía, MontoPago, MontoMembresia, MontoDisciplinas, MontoEntrenamientoPersonal, MetodoPago.


# Modelo Entidad-Relación (ER)

![imagen](https://github.com/user-attachments/assets/ce8c1868-b0b2-46bb-aee4-b6d4b2d17eb8)


# Modelo Lógico de la base de datos transaccional

![imagen](https://github.com/user-attachments/assets/85b0e143-0aac-4d69-b7a4-cfbe7b22af2c)


# Modelo Físico de la base de datos transaccional

![imagen](https://github.com/user-attachments/assets/d139e6f5-6483-44a2-8ac9-3b0b9a9defe6)


# Caso propuesto de solución BI: Inteligencia de Negocios para la Gestión de Operaciones de un Gimnasio (Base de datos Multidimencional)

La directiva de un gimnasio busca implementar un sistema de Inteligencia de Negocios (BI) que permita hacer seguimiento de sus ingresos, optimizar la asignación de entrenadores y espacios así como mejorar la rentabilidad por cliente.

Objetivos:

•	Analizar las tendencias de participación en clases grupales.

•	Monitorear el uso de entrenadores personales y la rentabilidad por cliente.

•	Evaluar ingresos mensuales por tipo de membresía y otros servicios.

•	Detectar los horarios más populares para optimizar la asignación de entrenadores y espacios.

# Modelo Lógico multidimensional de la solución BI

![imagen](https://github.com/user-attachments/assets/39bb664c-1632-4ff8-acd8-f9b54b1e8779)


# Modelo Físico de la base de datos multidimensional

![imagen](https://github.com/user-attachments/assets/9bd9af33-36a5-4f78-aea6-008ea5aa6639)

