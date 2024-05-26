# Sistema de Gestión de Alquiler de Coches

Este repositorio contiene el proyecto de un sistema de gestión de alquiler de coches desarrollado utilizando una base de datos relacional en MySQL. El objetivo es facilitar la operación y manejo de información en una empresa de alquiler de coches, permitiendo la administración de coches, reservas, alquileres, clientes y categorías.

## Contenido del repositorio

- **CreacionTablas.sql:** Script SQL para la creación del esquema de la base de datos.
- **CargaDatos.sql:** Script SQL para la carga masiva de datos de prueba en las tablas de Clientes y Coches.
- **Consultas/:** Carpeta con conjunto de consultas multitabla, agrupadas y subconsultas.
- **Vistas/:** Carpeta con script para la creación de vistas.
- **Funciones-Procedimientos/:** Carpeta con script para la creación de funciones y procedimientos almacenados.
- **Triggers/:** Carpeta con script para la creación de triggers.
- **Entidad-Relacion/:** Carpeta con el diagrama MER extendido del proyecto.

## Estructura del proyecto

### 1. Diagrama Entidad Relación

El diagrama MER extendido, creado utilizando la herramienta Diagrams.net, incluye entidades como Cliente, Coche, Reserva, Alquiler y Categoría. Además, incorpora relaciones jerárquicas, relaciones de identificación, claves primarias compuestas, etc. El diagrama se encuentra en la carpeta `Entidad-Relacion/`.

### 2. Transformación a Modelo Relacional

El modelo relacional transformado del diagrama entidad relación incluye las siguientes tablas:

- **Cliente:** `id_cliente`, `nombre`, `apellido`, `email`, `teléfono`
- **Categoría:** `id_categoria`, `nombre`, `descripción`
- **Coche:** `id_coche`, `marca`, `modelo`, `año`, `matrícula`, `id_categoria`
- **Reserva:** `id_reserva`, `id_cliente`, `id_coche`, `fecha_reserva`, `fecha_inicio`, `fecha_fin`
- **Alquiler:** `id_alquiler`, `id_reserva`, `fecha_entrega`, `fecha_devolución`, `costo_total`

### 3. Carga de Datos

El script `CargaDatos.sql` contiene la carga de datos para las tablas `Cliente` y `Coche`.

### 4. Consultas

La carpeta `Consultas/` incluye 5 consultas que utilizan múltiples tablas, agrupaciones y subconsultas.

### 5. Vistas

La carpeta `Vistas/` contiene la creación de dos vistas derivadas de las consultas previas:

- **Vista_Resumen_Reservas:** Muestra las reservas con detalles del cliente y coche.
- **Vista_Alquileres_Activos:** Muestra los alquileres que están actualmente en curso.

### 6. Funciones y Procedimientos

La carpeta `Funciones-Procedimientos/` contiene:

- **Dos funciones:** `Duracion_Reserva` y `Calcular_Costo`.
- **Tres procedimientos:** `Crear_Reserva`, `Finalizar_Alquiler` y `Calcular_Costos_Alquileres`, uno de los cuales utiliza cursores y otro hace uso de una función.

### 7. Triggers

La carpeta `Triggers/` incluye:

- **Actualizar_Estado_Coche_Reserva:** Actualiza el estado del coche a 'Reservado' cuando se realiza una reserva.
- **Actualizar_Estado_Coche_Alquiler:** Actualiza el estado del coche a 'Disponible' cuando se finaliza un alquiler.
