psql
CREATE DATABASE posts;
\c posts;
CREATE TABLE tabla_post (id SERIAL, nombre_de_usuario VARCHAR(10), fecha_creacion DATE DEFAULT CURRENT_DATE, contenido VARCHAR(25), descripcion VARCHAR(15));
INSERT INTO tabla_post (nombre_de_usuario) VALUES ('pamela');
INSERT INTO tabla_post (nombre_de_usuario) VALUES ('pamela');
INSERT INTO tabla_post (nombre_de_usuario) VALUES ('carlos');
ALTER TABLE tabla_post ADD COLUMN titulo VARCHAR(10);
UPDATE tabla_post SET titulo='titulo1' WHERE id=1;
UPDATE tabla_post SET titulo='titulo2' WHERE id=2;
UPDATE tabla_post SET titulo='titulo3' WHERE id=3;
INSERT INTO tabla_post (nombre_de_usuario) VALUES ('pedro');
INSERT INTO tabla_post (nombre_de_usuario) VALUES ('pedro');
DELETE FROM tabla_post WHERE nombre_de_usuario='carlos';
INSERT INTO tabla_post (nombre_de_usuario, contenido, descripcion, titulo) VALUES ('carlos', 'hola', 'que sucede', 'titulo4');
SELECT * FROM tabla_post;

--parte 2
ALTER TABLE tabla_post ADD PRIMARY KEY (id);
CREATE TABLE comentarios (id INT, fecha_y_hora TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP, contenido VARCHAR(25), FOREIGN KEY (id) REFERENCES tabla_post (id));
INSERT INTO comentarios (id, contenido) VALUES (1, 'comentario 1');
INSERT INTO comentarios (id, contenido) VALUES (1, 'comentario 2');
INSERT INTO comentarios (id, contenido) VALUES (6, 'comentario 3');
INSERT INTO comentarios (id, contenido) VALUES (6, 'comentario 4');
INSERT INTO comentarios (id, contenido) VALUES (6, 'comentario 5');
INSERT INTO comentarios (id, contenido) VALUES (6, 'comentario 6');
INSERT INTO tabla_post (nombre_de_usuario, contenido, descripcion, titulo) VALUES ('margarita', 'hola2', 'que sucede2', 'titulo7');
INSERT INTO comentarios (id, contenido) VALUES (7, 'comentario 7');
INSERT INTO comentarios (id, contenido) VALUES (7, 'comentario 8');
INSERT INTO comentarios (id, contenido) VALUES (7, 'comentario 9');
INSERT INTO comentarios (id, contenido) VALUES (7, 'comentario 10');
INSERT INTO comentarios (id, contenido) VALUES (7, 'comentario 11');