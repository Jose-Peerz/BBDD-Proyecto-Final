---Función 2: Calcular el costo total de una reserva.
CREATE FUNCTION Calcular_Costo(fecha_inicio DATE, fecha_fin DATE, tarifa_diaria DECIMAL(10, 2)) RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE duracion INT;
    SET duracion = DATEDIFF(fecha_fin, fecha_inicio);
    RETURN duracion * tarifa_diaria;
END;
