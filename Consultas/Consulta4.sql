--Consulta 4: Libros por categoría
SELECT c.nombre AS categoría, COUNT(l.id_libro) AS total_libros
FROM Categoría c
JOIN Libro l ON c.id_categoria = l.id_categoria
GROUP BY c.nombre;
