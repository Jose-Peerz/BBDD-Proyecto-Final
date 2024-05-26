--Procedimiento 3: Calcular el costo de todos los alquileres.
CREATE PROCEDURE Calcular_Costos_Alquileres()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE alquiler_id INT;
    DECLARE alquiler_costo DECIMAL(10, 2);
    DECLARE alquiler_cursor CURSOR FOR SELECT id_alquiler FROM Alquiler;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN alquiler_cursor;

    read_loop: LOOP
        FETCH alquiler_cursor INTO alquiler_id;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SET alquiler_costo = (SELECT Calcular_Costo(R.fecha_inicio, A.fecha_devolución, 50)
                              FROM Alquiler A
                              JOIN Reserva R ON A.id_reserva = R.id_reserva
                              WHERE A.id_alquiler = alquiler_id);
        UPDATE Alquiler SET costo_total = alquiler_costo WHERE id_alquiler = alquiler_id;
    END LOOP;

    CLOSE alquiler_cursor;
END;
