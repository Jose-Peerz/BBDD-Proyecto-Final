--Consulta 5: Autores con más libros publicados
SELECT a.nombre, COUNT(la.id_libro) AS libros_publicados
FROM Autor a
JOIN Libro_Autor la ON a.id_autor = la.id_autor
GROUP BY a.nombre
ORDER BY libros_publicados DESC;
