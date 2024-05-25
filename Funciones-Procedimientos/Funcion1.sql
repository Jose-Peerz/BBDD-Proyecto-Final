--Función 1: Calcular días de préstamo
CREATE FUNCTION Días_Préstamo(fecha_prestamo DATE, fecha_devolucion DATE) RETURNS INT
BEGIN
    RETURN DATEDIFF(fecha_devolucion, fecha_prestamo);
END;
