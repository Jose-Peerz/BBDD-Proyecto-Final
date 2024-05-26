CREATE DATABASE IF NOT EXISTS ReservaCoches;
USE ReservaCoches;

CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    email VARCHAR(100),
);

CREATE TABLE Categoría (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
);

CREATE TABLE Coche (
    id_coche INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    año INT,
    matrícula VARCHAR(20),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoría(id_categoria)
);

CREATE TABLE Reserva (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_coche INT,
    fecha_Reserva DATE,
    fecha_devolucion DATE,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_coche) REFERENCES Coche(id_coche)
);

CREATE TABLE Alquiler (
    id_alquiler INT AUTO_INCREMENT PRIMARY KEY,
    id_reserva INT,
    costo_total DECIMAL(10, 2),
    FOREIGN KEY (id_reserva) REFERENCES Reserva(id_reserva)
);