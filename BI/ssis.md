## Flujo general 
Flujo para la limpieza y poblado de 6 tablas de dimensiones y 3 tablas de hechos

![imagen](https://github.com/user-attachments/assets/492b85be-16f9-4f2a-b641-309736cf9bfc)

## Poblar tablas de dimensiones
Se poblaron 6 dimensiones con los siguientes cantidades de datos:
dim_entrenador: 13 filas, dim_cliente: 20 filas, dim_disciplina: 11 filas, dim_horario_disciplina: 26 filas, dim_tiempo: 1886 filas (desde 2020-02-01 al 2025-03-31) y dim_membresia: 4 filas

![imagen](https://github.com/user-attachments/assets/a0298fab-e084-4d8c-80d7-1aab8d081705)

## Poblar tabla de hechos
1) Tabla de hechos fact_reservacion_disciplina: 252 filas

![imagen](https://github.com/user-attachments/assets/8eb3660f-7ea1-49b4-ada4-4079add26fd5)

3) Tabla de hechos fact_entrenamiento_personal: 2958 filas

![imagen](https://github.com/user-attachments/assets/450b3bfe-2619-4dcf-b562-0e19503da789)

4) Tabla de hechos fact_membresia: 4352 filas

![imagen](https://github.com/user-attachments/assets/5d4fb30b-42e7-4582-98dd-b8fcc04b5658)

## Implementar el proyecto IS_GESTION_GIMNASIO
1) Vista desde Visual Studio

![imagen](https://github.com/user-attachments/assets/7ba5477e-3f58-4083-96fe-6eb01f214137)

2) Vista desde SQL Server

![imagen](https://github.com/user-attachments/assets/1c0ec299-08cd-4720-83cc-cd567298ea00)

## Creación de Job en SQL Server
1) General

![imagen](https://github.com/user-attachments/assets/ab476768-d63b-4fbd-a473-a4c2fe40bfa0)

2) Step

![imagen](https://github.com/user-attachments/assets/fe1772a4-62a3-4cc8-ade8-51b989f59f50)

3) Schedule: Todos los dias a las 17:13

![imagen](https://github.com/user-attachments/assets/b9490f8f-2059-413a-837b-0eafcf84cbc5)

## Proyecto implementado y vinculado a un Job que ejecuta automáticamente
1) Job Activity Monitor

![imagen](https://github.com/user-attachments/assets/b7488643-367a-4e59-8164-b8855d51db87)

2) Jobs - View History

![imagen](https://github.com/user-attachments/assets/fee1137a-9b41-47eb-8073-854918d777d9)


 
