INSERT INTO roles(nombre, descripcion) VALUES('APRENDIZ', 'Rol de APRENDIZ');

INSERT INTO usuarios (nombre, apellido, documento_de_identidad, correo, clave, fecha_registro, rol_id) VALUES ('Jarlin','Fonseca', '545454454', 'jarlinfonseca@gmail.com', '$2a$12$jrk350scTSD6wlmAtLfF1OeRPkVXCGtL7/33BkJwzXPaTJWYbVQeW', current_timestamp, 1);

INSERT INTO rutas (nombre, descripcion) VALUES('Ruta de Backend', 'Esta es la ruta donde aprenderás mucho sobre Backend.');
INSERT INTO rutas (nombre, descripcion) VALUES('Ruta de Frontend', 'Esta es la ruta donde aprenderás mucho sobre Frontend.');

INSERT INTO etapas (nombre, descripcion, ruta_id) VALUES('Introducción y fundamentos del Backend','Esta etapa es la intro al mundo de Backend.', 1);
INSERT INTO etapas (nombre, descripcion, ruta_id) VALUES('Avanzando en el mundo de Backend','Esta es la segunda etapa de esta ruta.', 1);
INSERT INTO etapas (nombre, descripcion, ruta_id) VALUES('Conocimientos avanzados del Backend','Esta es la tercera etapa de esta ruta.', 1);
INSERT INTO etapas (nombre, descripcion, ruta_id) VALUES('Videos prácticos','Esta es la cuarta etapa de esta ruta.', 1);

INSERT INTO etapas (nombre, descripcion, ruta_id) VALUES('Introducción y fundamentos del Frontend','Esta etapa es la intro al mundo de Frontend.', 2);
INSERT INTO etapas (nombre, descripcion, ruta_id) VALUES('Avanzando en el mundo de Frontend','Esta es la segunda etapa de esta ruta.', 2);
INSERT INTO etapas (nombre, descripcion, ruta_id) VALUES('Conocimientos avanzados del Frontend','Esta es la tercera etapa de esta ruta.', 2);

INSERT INTO videos (nombre, descripcion, url_video, fecha_registro, etapa_id) VALUES('Video de Backend', 'Descripcion del video', 'https://youtu.be/0Zb5fgO0ubE', current_timestamp,1)
INSERT INTO videos (nombre, descripcion, url_video, fecha_registro, etapa_id) VALUES('Video de Frontend', 'Descripcion del video', 'https://youtu.be/q0UgClC8md4', current_timestamp,5)