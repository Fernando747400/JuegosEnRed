INSERT INTO Poder (super_poder_id, nombre, descripcion) VALUES
(1, 'Fuerza Sobrehumana', 'Se tiene una mayor fuerza que un humano promedio'),
(2, 'Super Velocidad', 'El personaje tiene una velocidad mayor a un humano promedio'),
(3, 'Super Inteligencia', 'El personaje destaca en inteligencia y conocimientos científicos y tecnológicos'),
(4, 'Artes Marciales', 'El personaje es diestro con una o múltiple cantidad de artes marciales.'),
(5, 'Artilugios Tecnológicos', 'El personaje tiene diferentes tipos de artilugios tecnológicos'),
(6, 'Sentido Arácnido', 'El personaje tiene una sensación que le alerta a peligro inminente'),
(7, 'Telarañas', 'El personaje puede lanzar telarañas que le permiten columpiarse'),
(8, 'Artículos Mágicos', 'El personaje cuenta con uno o más artículos mágicos'),
(9, 'Magia', 'El personaje puede hacer magia de forma general como ilusiones o conjuros'),
(10, 'Control de Densidad', 'El personaje puede controlar su densidad, le permite volar o hacerce inamobible o intocable');

INSERT INTO Equipo (equipo_id, nombre, objetivo, ubicacion) VALUES
(1, 'Sin Afilación', 'Personal', NULL),
(2, 'Vengadores', 'Proteger a la tierra y vengarla en caso de fallar', 'EU'),
(3, '6 Siniestros', 'Acabar con Spider-Man', 'EU'),
(4, '10 Anillos', 'Terrorismo Global', 'Asia'),
(5, 'Thunderbolts', 'Operaciones encubiertas de la CIA y el gobiernos de los EU', 'EU');

INSERT INTO Personaje (personaje_id, nombre_personaje, nombre_real, poderes_id, origen_poderes, archienemigo, equipo_id, alineamiento, edad, nacimiento, foto) VALUES
(1, 'Spider-Man', 'Peter Parker', 1, 'Queens, NY', 2, 2, 'Héroe', 28, '1995-08-28', 'https://bit.ly/3GSWItV'),
(2, 'Duende verde', 'Norman Osborn', 3, 'EU', 1, 3, 'Villano', 55, '1968-03-07', 'https://bit.ly/3Kwc1tw'),
(3, 'Iron Man', 'Tony Stark', 4, 'Long Island, NY', 4, 2, 'Héroe', 50, '1973-05-29', 'https://bit.ly/3KNI6yi'),
(4, 'Mandarin', 'Xu Wnwu', 6, 'China', 3, 4, 'Villano', 1000, NULL, 'https://bit.ly/3msYGKd'),
(5, 'Hulk', 'Bruce Banner', 7, 'Dayton, Ohio', 6, 2, 'Héroe', 46, '1977-12-18', 'https://bit.ly/3ZWzxFF'),
(6, 'Abominación', 'Emil Blonsky', 8, 'Zagreb Croacia', 5, 5, 'Villano', 47, '1976-05-14', 'https://bit.ly/3Gv4udg'),
(7, 'Thor', 'Thor Odinson', 9, 'Asgard', 7, 2, 'Héroe', 1500, NULL, 'https://bit.ly/3mojjra'),
(8, 'Loki', 'Loki Laufeyson', 10, 'Jotunheim', 7, 1, 'Villano', 1050, NULL, 'https://bit.ly/3KmXZtW'),
(9, 'Capitán América', 'Steve Rogers', 11, 'Brooklyn, NY', 10, 2, 'Héroe', 101, '1922-07-04', 'https://bit.ly/41eplt7'),
(10, 'Red Skull', 'Johann Schmidt', 12, 'Alemania', 9, 1, 'Villano', 80, '1943-09-10', 'https://bit.ly/3KCsJ70'),
(11, 'Vision', 'Vision', 13, 'NY', 12, 2, 'Héroe', 3, '2015-05-05', 'https://bit.ly/3GvZ3uB'),
(12, 'Ultron', 'Ultron', 14, 'NY', 11, 1, 'Villano', 1, '2015-05-02', 'https://bit.ly/3GzEyNp');

INSERT INTO personaje_x_equipo (relacion_id, personaje_id, equipo_id)
VALUES (1, 1, 2), (2, 2, 3), (3, 3, 2), (4, 4, 4), (5, 5, 2), (6, 6, 5), (7, 7, 2), (8, 8, 1), (9, 9, 2), (10, 10, 1), (11, 11, 2), (12, 12, 1);

INSERT INTO poderes_x_personaje  (relacion_id, personaje_id, poder_id) VALUES
(1, 1, 1),(2, 1, 2),(3, 1, 3),(4, 1, 6),(5, 1, 7),(6, 2, 1),(7, 2, 2),(8, 2, 3),(9, 2, 4),(10, 2, 5),(11, 3, 3),(12, 3, 5),(13, 4, 4),(14, 4, 5),
(15, 5, 1),(16, 5, 3),(17, 6, 1),(18, 7, 1),(19, 7, 8),(20, 8, 9),(21, 9, 1),(22, 9, 2),(23, 9, 4),(24, 9, 5),(25, 10, 1),(26, 10, 3),(27, 10, 5),
(28, 11, 1),(29, 11, 2),(30, 11, 3),(31, 11, 5),(32, 11, 10),(33, 12, 1),(34, 12, 2),(35, 12, 3),(36, 12, 5);
