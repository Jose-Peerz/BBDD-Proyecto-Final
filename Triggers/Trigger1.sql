--Trigger 1: Verificar la disponibilidad del coche antes de registrar un alquiler.
CREATE TRIGGER Verificar_Disponibilidad_Before_Insert
BEFORE INSERT ON Alquiler
FOR EACH ROW
BEGIN
    DECLARE disponibilidad INT;

    SELECT COUNT(*) INTO disponibilidad
    FROM Alquiler
    WHERE id_coche = NEW.id_coche AND fecha_devolucion IS NULL;

    IF disponibilidad > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El coche no está disponible para alquiler.';
    END IF;
END;