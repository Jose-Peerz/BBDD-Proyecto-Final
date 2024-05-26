--Procedimiento 2: Actualizar información de un coche.
CREATE PROCEDURE Actualizar_Informacion_Coche (
    IN p_id_coche INT,
    IN p_marca VARCHAR(50),
    IN p_modelo VARCHAR(50),
    IN p_año INT,
    IN p_matricula VARCHAR(20),
    IN p_id_categoria INT
)
BEGIN
    UPDATE Coche
    SET
        marca = p_marca,
        modelo = p_modelo,
        año = p_año,
        matrícula = p_matricula,
        id_categoria = p_id_categoria
    WHERE id_coche = p_id_coche;
END;