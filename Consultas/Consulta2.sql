--Consulta 2: Libros reservados pero no prestados
SELECT l.título
FROM Libro l
JOIN Reserva r ON l.id_libro = r.id_libro
LEFT JOIN Préstamo p ON r.id_libro = p.id_libro
WHERE p.id_libro IS NULL;
