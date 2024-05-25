--Procedimiento 2: Devolver libro (utiliza función Días_Préstamo)
CREATE PROCEDURE Devolver_Libro(IN prestamo_id INT)
BEGIN
    UPDATE Préstamo SET fecha_devolucion = CURDATE() WHERE id_prestamo = prestamo_id;
    SELECT Días_Préstamo(fecha_prestamo, CURDATE()) AS días_de_prestamo FROM Préstamo WHERE id_prestamo = prestamo_id;
END;
