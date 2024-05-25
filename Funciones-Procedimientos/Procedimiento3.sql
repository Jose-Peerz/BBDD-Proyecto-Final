--Procedimiento 3: Generar reporte de préstamos
CREATE PROCEDURE Reporte_Préstamos()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE p_id INT;
    DECLARE p_user VARCHAR(255);
    DECLARE cur CURSOR FOR SELECT id_prestamo, id_usuario FROM Préstamo;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN cur;
    
    read_loop: LOOP
        FETCH cur INTO p_id, p_user;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT p_id, p_user;
    END LOOP;
    
    CLOSE cur;
END;
