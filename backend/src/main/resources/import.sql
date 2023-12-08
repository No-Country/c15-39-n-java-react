INSERT INTO roles(nombre, descripcion) VALUES('APRENDIZ', 'Rol de APRENDIZ');

INSERT INTO usuarios (nombre, apellido, correo, clave, fecha_registro, rol_id) VALUES ('Jarlin','Fonseca', 'jarlinfonseca@gmail.com', '$2a$12$jrk350scTSD6wlmAtLfF1OeRPkVXCGtL7/33BkJwzXPaTJWYbVQeW', current_timestamp, 1);

INSERT INTO rutas (nombre, descripcion) VALUES('Ruta de Backend', 'Esta es la ruta donde aprenderás mucho sobre Backend.');
INSERT INTO rutas (nombre, descripcion) VALUES('Ruta de Frontend', 'Esta es la ruta donde aprenderás mucho sobre Frontend.');
INSERT INTO rutas (nombre, descripcion) VALUES('Ruta de DataBase', 'Esta es la ruta donde aprenderás mucho sobre DataBase.');
INSERT INTO rutas (nombre, descripcion) VALUES('Ruta de DevOps', 'Esta es la ruta donde aprenderás mucho sobre DevOps.');


INSERT INTO etapas (nombre, descripcion, ruta_id) VALUES('Java','Esta etapa es la intro al mundo de Java.', 1);
INSERT INTO etapas (nombre, descripcion, ruta_id) VALUES('PHP','Esta es la segunda etapa de esta ruta.', 1);

INSERT INTO etapas (nombre, descripcion, ruta_id) VALUES('HTML','Esta etapa es la intro al mundo de Frontend.', 2);
INSERT INTO etapas (nombre, descripcion, ruta_id) VALUES('CSS','Esta es la segunda etapa de esta ruta.', 2);
INSERT INTO etapas (nombre, descripcion, ruta_id) VALUES('JavaScript','Esta es la tercera etapa de esta ruta.', 2);

INSERT INTO etapas (nombre, descripcion, ruta_id) VALUES('MySQL','Esta etapa es la intro al mundo de DataBase', 3);

INSERT INTO etapas (nombre, descripcion, ruta_id) VALUES('DevOps','Esta etapa es la intro al mundo de DevOps', 4);


INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 1 - Conocimientos básicos', 'Descripcion del contenido Java', 1);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 2 - Conocimientos intermedios', 'Descripcion del contenido Java', 1);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 3 - Conocimientos avanzados', 'Descripcion del contenido Java', 1);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Conocimientos Adicionales', 'Java', 1);

INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 1 - Conocimientos básicos', 'Descripcion del contenido PHP', 2);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 2 - Conocimientos intermedios', 'Descripcion del contenido PHP', 2);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 3 - Conocimientos avanzados', 'Descripcion del contenido PHP', 2);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Conocimientos Adicionales', 'PHP', 2);

INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 1 - Conocimientos básicos', 'Descripcion del contenido HTML', 3);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 2 - Conocimientos intermedios', 'Descripcion del contenido HTML', 3);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 3 - Conocimientos avanzados', 'Descripcion del contenido HTML', 3);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Conocimientos Adicionales', 'HTML', 3);

INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 1 - Conocimientos básicos', 'Descripcion del contenido CSS', 4);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 2 - Conocimientos intermedios', 'Descripcion del contenido CSS', 4);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 3 - Conocimientos avanzados', 'Descripcion del contenido CSS', 4);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Conocimientos Adicionales', 'CSS', 4);

INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 1 - Conocimientos básicos', 'Descripcion del contenido JavaScript', 5);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 2 - Conocimientos intermedios', 'Descripcion del contenido JavaScript', 5);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 3 - Conocimientos avanzados', 'Descripcion del contenido JavaScript', 5);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Conocimientos Adicionales', 'Js', 5);

INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 1 - Conocimientos básicos', 'Descripcion del contenido MySQL', 6);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 2 - Conocimientos intermedios', 'Descripcion del contenido MySQL', 6);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 3 - Conocimientos avanzados', 'Descripcion del contenido MySQL', 6);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Conocimientos Adicionales', 'MySQL', 6);

INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 1 - Conocimientos básicos', 'Descripcion del contenido DevOps', 7);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 2 - Conocimientos intermedios', 'Descripcion del contenido DevOps', 7);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Nivel 3 - Conocimientos avanzados', 'Descripcion del contenido DevOps', 7);
INSERT INTO contenidos (titulo, descripcion, etapa_id) VALUES('Conocimientos Adicionales', 'DevOps', 7);

-- intro al mundo back
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('Video de Backend', 'Que aprender para ser programador en 2023?', 'https://youtu.be/0Zb5fgO0ubE', current_timestamp,1);
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('Video de Backend1', 'De 0 a Programador Backend - Guia completa paso a paso', 'https://www.youtube.com/watch?v=RYvFfsUyOtk', current_timestamp,1);
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('Video de Backend2', '¡Las 4 tecnologías para conseguir empleo como Back-End en 2023!', 'https://www.youtube.com/watch?v=UAt-Ae1YVaA&list=PLkVpKYNT_U9cW6CIloOeWFNn3Wjq2SPTZ', current_timestamp,1);
--intro al mundo front
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('Video de Frontend', '7 cosas que debes saber para ser programador frontend este 2023', 'https://youtu.be/q0UgClC8md4', current_timestamp,3);
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('Video de Frontend1', 'FRONT-END EN 5 PASOS - ¿Que aprender y por donde empezar para ser Desarrollador Web Frontend?', 'https://www.youtube.com/watch?v=SDMpGO1_qU0', current_timestamp,3);
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('Video de Frontend2', '¡Conviértete en Front-End developer y encuentra trabajo con estas 3 tecnologías! ', 'https://www.youtube.com/watch?v=9qzTMGZOd20&list=PLkVpKYNT_U9cxPPzmABgbtO8MdJQ4P-sY', current_timestamp,3);

--Java
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('Java', 'Programación JAVA Nivel Básico', 'https://www.youtube.com/playlist?list=PLyvsggKtwbLX9LrDnl1-K6QtYo7m0yXWB', current_timestamp,1);
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('Java', 'Programación JAVA Nivel Intermedio', 'https://www.youtube.com/playlist?list=PLyvsggKtwbLXEZjb8HrNTbWesTKIfpNak', current_timestamp,2);
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('Java', 'Programación JAVA Nivel Avanzado', 'https://www.youtube.com/playlist?list=PLkVpKYNT_U9cbo0XywpRGl-DFJEHDi9g5', current_timestamp,3);

--PHP
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('PHP', 'Programación en PHP Nivel Básico', 'https://www.youtube.com/playlist?list=PL3b9xmg86NTKzt_Hkr0jywY-P5HY0gnjf', current_timestamp,4);
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('PHP', 'Programación en PHP Nivel Intermedio', 'https://www.youtube.com/playlist?list=PL3HzJCml0goHUfWo61vsNnRCoEVHv1ggg', current_timestamp,5);
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('PHP', 'Programación en PHP Nivel Avanzado', 'https://www.youtube.com/playlist?list=PLX64KYDfSBMsmf9MtXBNmTc845YVPBdU0', current_timestamp,6);


--HTML
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('HTML', 'Programación en HTML Nivel Básico', 'https://www.youtube.com/watch?v=rbuYtrNUxg4', current_timestamp,7);
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('HTML', 'Programación en HTML Nivel Intermedio', 'https://www.youtube.com/playlist?list=PL80XT4wvmjbp4dZje4cyH9yUmtiItv_cm', current_timestamp,8);
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('HTML', 'Programación en HTML Nivel Avanzado', 'https://www.youtube.com/playlist?list=PLg9145ptuAijj9GoHPTcYT8IoQAOchM-n', current_timestamp,9);

--CSS
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('CSS', 'Programación en CSS Nivel Básico', 'https://www.youtube.com/playlist?list=PLhSj3UTs2_yU0fGoS1bjpHqky4kCEmTbR', current_timestamp,10);
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('CSS', 'Programación en CSS Nivel Intermedio', 'https://www.youtube.com/playlist?list=PLUmVO7Txjho0Sk7f1ccRcw4uvDdgzxMAb', current_timestamp,11);
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('CSS', 'Programación en CSS Nivel Avanzado', 'https://www.youtube.com/playlist?list=PLg9145ptuAihoxLk6_fPLz0zD4o1S92ev', current_timestamp,12);


--JAVASCRIPT
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('JavaScript', 'Programación en JavaScript Nivel Básico', 'https://www.youtube.com/playlist?list=PLhSj3UTs2_yVC0iaCGf16glrrfXuiSd0G', current_timestamp,13);
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('JavaScript', 'Programación en JavaScript Nivel Intermedio', 'https://www.youtube.com/playlist?list=PLAAhC8kCE0VlfmKREk2JJ-hFRPpTl3Daq', current_timestamp,14);
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('JavaScript', 'Programación en JavaScript Nivel Avanzado', 'https://www.youtube.com/playlist?list=PLyBd7TyyK5mqBGx31fC5tvqOi6UbY2rMU', current_timestamp,15);

-- MySQL
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('MySQL', 'Programación en MySQL Nivel Básico', 'https://www.youtube.com/watch?v=_8MjEhfKRbI', current_timestamp,16);
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('MySQL', 'Programación en MySQL Nivel Intermedio', 'https://www.youtube.com/playlist?list=PLYs5ugazzUNYxb-lqQexn-G5y5Pi_jbUb', current_timestamp,17);
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('MySQL', 'Programación en MySQL Nivel Avanzado', 'https://www.youtube.com/watch?v=X4ffVGDI2Fo', current_timestamp,18);

-- DevOps
INSERT INTO enlaces (nombre, descripcion, url_enlace, fecha_registro, contenido_id) VALUES('DevOps', 'Programación en DevOps', 'https://www.youtube.com/playlist?list=PL9prAn3zOWZ6HTdT_S4j2NXGhDyhTRoTh', current_timestamp,19);
