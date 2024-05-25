--Consulta 3: Usuarios con más de 5 préstamos
SELECT u.nombre
FROM Usuario u
JOIN Préstamo p ON u.id_usuario = p.id_usuario
GROUP BY u.nombre
HAVING COUNT(p.id_libro) > 5;
