--Consulta 1: Libros prestados por cada usuario
SELECT u.nombre, COUNT(p.id_libro) AS libros_prestados
FROM Usuario u
JOIN Préstamo p ON u.id_usuario = p.id_usuario
GROUP BY u.nombre;
