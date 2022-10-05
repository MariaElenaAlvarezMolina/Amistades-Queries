SELECT * FROM esquema_amistades.amistades;

INSERT INTO amistades (usuario_id, amistad_id) VALUES (1,2);
INSERT INTO amistades (usuario_id, amistad_id) VALUES (1,4);
INSERT INTO amistades (usuario_id, amistad_id) VALUES (1,6);

SELECT usuarios.nombre, usuarios.apellido, usuarios2.nombre AS 'nombre_amigo', usuarios2.apellido AS 'apellido_amigo' FROM amistades
JOIN usuarios ON amistades.usuario_id = usuarios.id
JOIN usuarios AS usuarios2 ON amistades.amistad_id = usuarios2.id;

INSERT INTO amistades (usuario_id, amistad_id) VALUES (2,1);
INSERT INTO amistades (usuario_id, amistad_id) VALUES (2,3);
INSERT INTO amistades (usuario_id, amistad_id) VALUES (2,5);

SELECT usuarios.nombre, usuarios.apellido, usuarios2.nombre AS 'nombre_amigo', usuarios2.apellido AS 'apellido_amigo' FROM amistades
JOIN usuarios ON amistades.usuario_id = usuarios.id
JOIN usuarios AS usuarios2 ON amistades.amistad_id = usuarios2.id;

INSERT INTO amistades (usuario_id, amistad_id) VALUES (3,2);
INSERT INTO amistades (usuario_id, amistad_id) VALUES (3,5);

SELECT usuarios.nombre, usuarios.apellido, usuarios2.nombre AS 'nombre_amigo', usuarios2.apellido AS 'apellido_amigo' FROM amistades
JOIN usuarios ON amistades.usuario_id = usuarios.id
JOIN usuarios AS usuarios2 ON amistades.amistad_id = usuarios2.id;

INSERT INTO amistades (usuario_id, amistad_id) VALUES (4,3);

SELECT usuarios.nombre, usuarios.apellido, usuarios2.nombre AS 'nombre_amigo', usuarios2.apellido AS 'apellido_amigo' FROM amistades
JOIN usuarios ON amistades.usuario_id = usuarios.id
JOIN usuarios AS usuarios2 ON amistades.amistad_id = usuarios2.id;

INSERT INTO amistades (usuario_id, amistad_id) VALUES (5,1);
INSERT INTO amistades (usuario_id, amistad_id) VALUES (5,6);

SELECT usuarios.nombre, usuarios.apellido, usuarios2.nombre AS 'nombre_amigo', usuarios2.apellido AS 'apellido_amigo' FROM amistades
JOIN usuarios ON amistades.usuario_id = usuarios.id
JOIN usuarios AS usuarios2 ON amistades.amistad_id = usuarios2.id;

INSERT INTO amistades (usuario_id, amistad_id) VALUES (6,2);
INSERT INTO amistades (usuario_id, amistad_id) VALUES (6,3);

SELECT usuarios.nombre, usuarios.apellido, usuarios2.nombre AS 'nombre_amigo', usuarios2.apellido AS 'apellido_amigo' FROM amistades
JOIN usuarios ON amistades.usuario_id = usuarios.id
JOIN usuarios AS usuarios2 ON amistades.amistad_id = usuarios2.id;

SELECT usuarios2.nombre, usuarios2.apellido FROM amistades
JOIN usuarios ON amistades.usuario_id = usuarios.id
JOIN usuarios AS usuarios2 ON amistades.amistad_id = usuarios2.id
WHERE amistades.usuario_id = 1;

SELECT COUNT(id) FROM amistades;

SELECT usuarios.nombre, usuarios.apellido, COUNT(usuario_id) AS 'cantidad_amistades' FROM amistades
JOIN usuarios ON amistades.usuario_id = usuarios.id
JOIN usuarios AS usuarios2 ON amistades.amistad_id = usuarios2.id
GROUP BY amistades.usuario_id ORDER BY cantidad_amistades DESC;

SELECT usuarios2.nombre, usuarios2.apellido FROM amistades
JOIN usuarios ON amistades.usuario_id = usuarios.id
JOIN usuarios AS usuarios2 ON amistades.amistad_id = usuarios2.id
WHERE amistades.usuario_id = 3 ORDER BY usuarios2.nombre ASC;