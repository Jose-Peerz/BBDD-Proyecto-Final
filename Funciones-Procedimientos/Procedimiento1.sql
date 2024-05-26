--Procedimiento 1: Crear una nueva reserva.
CREATE PROCEDURE Crear_Reserva(IN id_cliente INT, IN id_coche INT, IN fecha_inicio DATE, IN fecha_fin DATE)
BEGIN
    INSERT INTO Reserva (id_cliente, id_coche, fecha_reserva, fecha_inicio, fecha_fin)
    VALUES (id_cliente, id_coche, CURDATE(), fecha_inicio, fecha_fin);
END;
