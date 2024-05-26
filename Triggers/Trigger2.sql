--Trigger 2: Actualizar la vista de alquileres activos después de finalizar un alquiler.
CREATE TRIGGER Actualizar_Vista_After_Update
AFTER UPDATE ON Alquiler
FOR EACH ROW
BEGIN
    IF NEW.fecha_devolucion IS NOT NULL THEN
        DELETE FROM Vista_Alquileres_Activos
        WHERE id_alquiler = NEW.id_alquiler;

        INSERT INTO Vista_Alquileres_Activos (id_alquiler, nombre_cliente, marca, modelo, fecha_entrega, fecha_devolución)
        SELECT A.id_alquiler, C.nombre AS nombre_cliente, Coche.marca, Coche.modelo, A.fecha_entrega, A.fecha_devolución
        FROM Alquiler A
        JOIN Reserva R ON A.id_reserva = R.id_reserva
        JOIN Cliente C ON R.id_cliente = C.id_cliente
        JOIN Coche ON R.id_coche = Coche.id_coche
        WHERE A.id_alquiler = NEW.id_alquiler AND A.fecha_devolucion > CURDATE();
    END IF;
END;