--Consulta 1: Listar todas las reservas con detalles del cliente y coche.
SELECT R.id_reserva, C.nombre AS nombre_cliente, Coche.marca, Coche.modelo, R.fecha_reserva, R.fecha_inicio, R.fecha_fin
FROM Reserva R
JOIN Cliente C ON R.id_cliente = C.id_cliente
JOIN Coche ON R.id_coche = Coche.id_coche;
