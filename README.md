# Caso propuesto: Modelo de Gestión de Operaciones de un Gimnasio (Base de Datos Transaccional)

Un gimnasio desea gestionar las operaciones con sus clientes, así como hacer seguimiento de sus ingresos y optimizar la asignación de entrenadores y espacios. Para ello, se requiere un modelo de datos que registre:

Clientes: ClienteID, Nombre, Apellido, FechaNacimiento, Teléfono, Correo, TipoMembresía (Mensual, Anual, Premium).

Clases: ClaseID, NombreClase, Categoría (Yoga, Spinning, Crossfit, etc.), Duración, CapacidadMáxima.

Entrenadores: EntrenadorID, Nombre, Especialidad, Correo, Teléfono.

Reservaciones de Clases: ReservaciónID, ClienteID, ClaseID, FechaReservación, Asistió (Sí/No).

Entrenamientos Personales: EntrenamientoID, ClienteID, EntrenadorID, Fecha, Duración, Costo.

Pagos: PagoID, ClienteID, FechaPago, Monto, MétodoPago.

Horarios de Clases: HorarioID, ClaseID, EntrenadorID, HoraInicio,HoraFin, DíaSemana.

# Modelo Entidad-Relación (ER)

![imagen](https://github.com/user-attachments/assets/4723f96c-39d4-48d5-aba4-b6efd82db49d)

# Caso propuesto de solución BI: Inteligencia de Negocios para la Gestión de Operaciones de un Gimnasio (Base de datos Multidimencional)

La directiva de un gimnasio busca implementar un sistema de Inteligencia de Negocios (BI) que permita hacer seguimiento de sus ingresos, optimizar la asignación de entrenadores y espacios así como mejorar la rentabilidad por cliente.

Objetivos:

Analizar las tendencias de participación en clases grupales.

Monitorear el uso de entrenadores personales y la rentabilidad por cliente.

Evaluar ingresos mensuales por tipo de membresía y otros servicios.

Detectar los horarios más populares para optimizar la asignación de entrenadores y espacios.
