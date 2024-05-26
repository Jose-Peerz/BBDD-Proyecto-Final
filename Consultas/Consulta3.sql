--Consulta 3: Calcular el costo total de alquileres por cliente.
SELECT C.nombre, C.apellido, SUM(A.costo_total) AS costo_total
FROM Cliente C
JOIN Reserva R ON C.id_cliente = R.id_cliente
JOIN Alquiler A ON R.id_reserva = A.id_reserva
GROUP BY C.id_cliente;
