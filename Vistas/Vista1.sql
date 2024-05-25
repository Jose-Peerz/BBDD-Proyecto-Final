--Vista 1: Vista de libros disponibles
CREATE VIEW Libros_Disponibles AS
SELECT l.título, c.nombre AS categoría
FROM Libro l
JOIN Categoría c ON l.id_categoria = c.id_categoria
WHERE l.id_libro NOT IN (SELECT id_libro FROM Préstamo WHERE fecha_devolucion IS NULL);
