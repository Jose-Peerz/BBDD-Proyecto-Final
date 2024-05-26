--Función 1: Calcular la duración de una reserva
CREATE FUNCTION Duracion_Reserva(fecha_inicio DATE, fecha_fin DATE) RETURNS INT
BEGIN
    RETURN DATEDIFF(fecha_fin, fecha_inicio);
END;
