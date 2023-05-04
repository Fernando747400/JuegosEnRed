CREATE DATABASE MarvelCharacters;
use MarvelCharacters;

CREATE TABLE Personaje (
  personaje_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
  nombre_personaje VARCHAR(50),
  nombre_real VARCHAR(100),
  poderes_id INT UNSIGNED,
  origen_poderes VARCHAR(50),
  archienemigo INT UNSIGNED,
  equipo_id INT UNSIGNED,
  alineamiento VARCHAR(50),
  edad INT UNSIGNED,
  nacimiento DATE,
  foto VARCHAR(255)
);

CREATE TABLE Poder (
  super_poder_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
  nombre VARCHAR(100),
  descripcion VARCHAR(255)
);

CREATE TABLE Equipo (
  equipo_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  objetivo VARCHAR(255),
  ubicacion VARCHAR(100)
);

CREATE TABLE Poderes_x_Personaje (
  relacion_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  poder_id INT UNSIGNED,
  personaje_id INT UNSIGNED,
  FOREIGN KEY (poder_id) REFERENCES Poder(super_poder_id),
  FOREIGN KEY (personaje_id) REFERENCES Personaje(personaje_id)
);

CREATE TABLE Personaje_x_Equipo (
  relacion_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  personaje_id INT UNSIGNED,
  equipo_id INT UNSIGNED,
  FOREIGN KEY (personaje_id) REFERENCES Personaje(personaje_id),
  FOREIGN KEY (equipo_id) REFERENCES Equipo(equipo_id)
);