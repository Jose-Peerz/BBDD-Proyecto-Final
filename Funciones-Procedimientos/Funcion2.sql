---Función 2: Contar libros por categoría
CREATE FUNCTION Libros_Por_Categoría(cat_id INT) RETURNS INT
BEGIN
    RETURN (SELECT COUNT(*) FROM Libro WHERE id_categoria = cat_id);
END;
