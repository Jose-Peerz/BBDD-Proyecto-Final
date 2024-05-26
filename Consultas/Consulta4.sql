--Consulta 4: Listar todos los coches disponibles (no reservados).
SELECT Coche.marca, Coche.modelo
FROM Coche
LEFT JOIN Reserva R ON Coche.id_coche = R.id_coche
WHERE R.id_coche IS NULL OR R.fecha_fin < CURDATE();
