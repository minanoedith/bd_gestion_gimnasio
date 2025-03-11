# Caso propuesto: Modelo de Gestión de Operaciones de un Gimnasio (Base de Datos Transaccional)

Un gimnasio desea gestionar las operaciones con sus clientes, así como hacer seguimiento de sus ingresos y optimizar la asignación de entrenadores y espacios. Para ello, se requiere un modelo de datos que registre:

•	Clientes: ClienteID, Nombre, Apellido, FechaNacimiento, Teléfono, Correo, IDMembresía, FechaInscripcion.

•	Membresía: MembresiaID, Nombre (Mensual, Anual, Premium), Costo

•	Clases: ClaseID, NombreClase, IDCategoría, Duración, CapacidadMáxima.

•	Categoria: CategoriaID, Nombre (Yoga, Spinning, Crossfit, etc.)

•	Entrenadores: EntrenadorID, Nombre, Especialidad, Correo, Teléfono.

•	Reservaciones de Clases: ReservaciónID, ClienteID, HorarioID, FechaReservación, Asistió (Sí/No).

•	Entrenamientos Personales: EntrenamientoID, ClienteID, EntrenadorID, Fecha, Duración, Costo.

•	Pagos: PagoID, ClienteID, FechaPago, Monto, MétodoPago.

•	Horarios de Clases: HorarioID, ClaseID, EntrenadorID, HoraInicio, HoraFin, DíaSemana.


# Modelo Entidad-Relación (ER)

![imagen](https://github.com/user-attachments/assets/e1255318-f2a6-47b8-98f0-b04420521f42)


# Modelo Lógico de la base de datos transaccional

![imagen](https://github.com/user-attachments/assets/7bf6006d-8f45-49ab-b1be-86174792869f)


# Caso propuesto de solución BI: Inteligencia de Negocios para la Gestión de Operaciones de un Gimnasio (Base de datos Multidimencional)

La directiva de un gimnasio busca implementar un sistema de Inteligencia de Negocios (BI) que permita hacer seguimiento de sus ingresos, optimizar la asignación de entrenadores y espacios así como mejorar la rentabilidad por cliente.

Objetivos:

•	Analizar las tendencias de participación en clases grupales.

•	Monitorear el uso de entrenadores personales y la rentabilidad por cliente.

•	Evaluar ingresos mensuales por tipo de membresía y otros servicios.

•	Detectar los horarios más populares para optimizar la asignación de entrenadores y espacios.
