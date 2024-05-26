--Consulta 2: Contar el número de reservas por cliente.
SELECT C.nombre, C.apellido, COUNT(R.id_reserva) AS total_reservas
FROM Cliente C
JOIN Reserva R ON C.id_cliente = R.id_cliente
GROUP BY C.id_cliente;
