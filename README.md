# Sistema de Gestión de Biblioteca Universitaria

Este repositorio contiene el proyecto de un sistema de gestión de biblioteca universitaria desarrollado utilizando una base de datos relacional en MySQL. El objetivo es facilitar la operación y manejo de información en una biblioteca académica, permitiendo la administración de libros, préstamos, usuarios, autores, categorías y reservas.

## Contenido del repositorio

- **CreacionTablas.sql**: Script SQL para la creación del esquema de la base de datos.
- **CargaDatos.sql**: Script SQL para la carga masiva de datos de prueba en las tablas de Usuarios y Libros.
- **Consultas/**: Carpeta con conjunto de consultas multitabla, agrupadas y subconsultas.
- **Vistas/**: Carpeta con script para la creación de vistas.
- **Funciones-Procedimientos/**: Carpeta con script para la creación de funciones y procedimientos almacenados.
- **Triggers/**: Carpeta con script para la creación de triggers.
- **Entidad-Relacion/**: Carpeta con el diagrama MER extendido del proyecto.

## Estructura del proyecto

### 1. Diagrama Entidad Relación

El diagrama MER extendido, creado utilizando la herramienta Diagrams, incluye entidades como Libro, Usuario, Autor, Categoría, Préstamo y Reserva. Además, incorpora relaciones jerárquicas, relaciones de identificación, claves primarias compuestas, etc. El diagrama se encuentra en la carpeta **Entidad-Relacion/**.

### 2. Transformación a Modelo Relacional

El modelo relacional transformado del diagrama entidad relación incluye las siguientes tablas:

- **Libro**: `id_libro`, `título`, `id_categoria`, `fecha_publicación`
- **Autor**: `id_autor`, `nombre`
- **Libro_Autor**: `id_libro`, `id_autor`
- **Categoría**: `id_categoria`, `nombre`, `id_categoria_padre`
- **Usuario**: `id_usuario`, `nombre`, `email`
- **Préstamo**: `id_prestamo`, `id_usuario`, `id_libro`, `fecha_prestamo`, `fecha_devolucion`
- **Reserva**: `id_reserva`, `id_usuario`, `id_libro`, `fecha_reserva`

### 3. Carga de Datos

El script **CargaDatos.sql** contiene la carga de datos.

### 4. Consultas

La carpeta **Consultas/** incluye 5 consultas que utilizan múltiples tablas, agrupaciones y subconsultas.

### 5. Vistas

La carpeta **Vistas/** contiene la creación de dos vistas derivadas de las consultas previas:

- **Libros_Disponibles**: Muestra los libros que no están actualmente prestados.
- **Usuarios_Activos**: Muestra los usuarios con préstamos activos.

### 6. Funciones y Procedimientos

La carpeta **Funciones-Procedimientos** contiene:

- Dos funciones: `Días_Préstamo` y `Libros_Por_Categoría`.
- Tres procedimientos: `Registrar_Prestamo`, `Devolver_Libro` y `Reporte_Préstamos`, uno de los cuales utiliza cursores y otro hace uso de una función.

### 7. Triggers

La carpeta **Triggers/** incluye:

- **Verificar_Disponibilidad_Before_Insert**: Verifica la disponibilidad de un libro antes de registrar un préstamo.
- **Actualizar_Fecha_Modificación**: Actualiza la fecha de modificación de un usuario después de cualquier actualización en su información.
