--Trigger 2: Actualizar fecha de modificación de usuario
CREATE TRIGGER Actualizar_Fecha_Modificación
AFTER UPDATE ON Usuario
FOR EACH ROW
BEGIN
    UPDATE Usuario SET fecha_modificación = NOW() WHERE id_usuario = NEW.id_usuario;
END;