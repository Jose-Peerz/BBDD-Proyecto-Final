--Trigger 1: Verificar disponibilidad antes de préstamo
CREATE TRIGGER Verificar_Disponibilidad_Before_Insert
BEFORE INSERT ON Préstamo
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM Préstamo WHERE id_libro = NEW.id_libro AND fecha_devolucion IS NULL) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Libro no disponible para préstamo';
    END IF;
END;
