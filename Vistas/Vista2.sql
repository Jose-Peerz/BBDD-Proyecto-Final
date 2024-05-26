-- Vista 2: Resumen de Alquileres Activos.
CREATE VIEW Vista_Alquileres_Activos AS
SELECT A.id_alquiler, C.nombre AS nombre_cliente, Coche.marca, Coche.modelo, A.fecha_entrega, A.fecha_devolución
FROM Alquiler A
JOIN Reserva R ON A.id_reserva = R.id_reserva
JOIN Cliente C ON R.id_cliente = C.id_cliente
JOIN Coche ON R.id_coche = Coche.id_coche
WHERE A.fecha_devolución > CURDATE();
