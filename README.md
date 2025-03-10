# Modelo de Gestión de Operaciones de un Gimnasio (Base de Datos Transaccional)

Un gimnasio desea gestionar las operaciones con sus clientes, así como hacer seguimiento de sus ingresos y optimizar la asignación de entrenadores y espacios. Para ello, se requiere un modelo de datos que registre:

Clientes: ClienteID, Nombre, Apellido, FechaNacimiento, Teléfono, Correo, TipoMembresía (Mensual, Anual, Premium).
Clases: ClaseID, NombreClase, Categoría (Yoga, Spinning, Crossfit, etc.), Duración, CapacidadMáxima.
Entrenadores: EntrenadorID, Nombre, Especialidad, Correo, Teléfono.
Reservaciones de Clases: ReservaciónID, ClienteID, ClaseID, FechaReservación, Asistió (Sí/No).
Entrenamientos Personales: EntrenamientoID, ClienteID, EntrenadorID, Fecha, Duración, Costo.
Pagos: PagoID, ClienteID, FechaPago, Monto, MétodoPago.
Horarios de Clases: HorarioID, ClaseID, EntrenadorID, HoraInicio,HoraFin, DíaSemana.

