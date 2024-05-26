# Sistema de Gestión de Alquiler de Coches

Este repositorio contiene el proyecto de un sistema de gestión de alquiler de coches desarrollado utilizando una base de datos relacional en MySQL. El objetivo es facilitar la operación y manejo de información en una empresa de alquiler de coches, permitiendo la administración de coches, reservas, alquileres, clientes y categorías.

## Contenido del repositorio

- **CreacionTablas.sql:** Script SQL para la creación del esquema de la base de datos.
- **CargaDatos.sql:** Script SQL para la carga masiva de datos de prueba en las tablas de Clientes y Coches.
- **Consultas/:** Carpeta con conjunto de consultas multitabla, agrupadas y subconsultas.
- **Vistas/:** Carpeta con script para la creación de vistas.
- **Funciones-Procedimientos/:** Carpeta con script para la creación de funciones y procedimientos almacenados.
- **Triggers/:** Carpeta con script para la creación de triggers.
- **Entidad-Relacion/:** Carpeta con el diagrama MER extendido del proyecto, y el esquema relacional.

## Estructura del proyecto

### 1. Diagrama Entidad Relación

El diagrama MER extendido, creado utilizando la herramienta Diagrams.net, incluye entidades como Cliente, Coche, Reserva, Alquiler y Categoría. Además, incorpora relaciones jerárquicas, relaciones de identificación, claves primarias compuestas, etc. El diagrama se encuentra en la carpeta `Entidad-Relacion/`.

### 2. Transformación a Modelo Relacional

El modelo relacional transformado del diagrama entidad relación incluye las siguientes tablas:

- **Cliente:** `id_cliente`, `nombre`, `email`
- **Categoría:** `id_categoria`, `nombre`
- **Coche:** `id_coche`, `marca`, `modelo`, `año`, `matrícula`, `id_categoria`
- **Reserva:** `id_reserva`, `id_cliente`, `id_coche`, `fecha_Reserva`, `fecha_devolución`
- **Alquiler:** `id_alquiler`, `id_reserva`, `costo_total`

### 3. Carga de Datos

El script `CargaDatos.sql` contiene la carga de datos para las tablas `Cliente`, `Coche`, `Categoria`, `Reserva` y `Alquiler`.

### 4. Consultas

La carpeta `Consultas/` incluye 5 consultas.

### 5. Vistas

La carpeta `Vistas/` contiene la creación de dos vistas:

- **Vista_Resumen_Reservas:** Muestra las reservas con detalles del cliente y coche.
- **Vista_Alquileres_Activos:** Muestra los alquileres que están actualmente en curso.

### 6. Funciones y Procedimientos

La carpeta `Funciones-Procedimientos/` contiene:

- **Dos funciones:** `Duracion_Reserva` y `Calcular_Costo`.
- **Tres procedimientos:** `Crear_Reserva`, `Actualizar_Informacion_Coche` y `Calcular_Costos_Alquileres`.

### 7. Triggers

La carpeta `Triggers/` incluye:

- **Verificar_Disponibilidad_Before_Insert:** Verifica la disponibilidad del coche antes de registrar un alquiler.
- **Actualizar_Vista_After_Update:** Actualiza la vista de alquileres activos después de finalizar un alquiler.
