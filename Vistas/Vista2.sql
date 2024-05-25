-- Vista 2: Vista de usuarios activos
CREATE VIEW Usuarios_Activos AS
SELECT u.nombre, COUNT(p.id_prestamo) AS prestamos_activos
FROM Usuario u
JOIN Préstamo p ON u.id_usuario = p.id_usuario
WHERE p.fecha_devolucion IS NULL
GROUP BY u.nombre;
