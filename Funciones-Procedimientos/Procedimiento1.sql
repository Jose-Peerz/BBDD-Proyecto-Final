--Procedimiento 1: Registrar nuevo préstamo
CREATE PROCEDURE Registrar_Prestamo(IN user_id INT, IN libro_id INT)
BEGIN
    INSERT INTO Préstamo (id_usuario, id_libro, fecha_prestamo) VALUES (user_id, libro_id, CURDATE());
END;
