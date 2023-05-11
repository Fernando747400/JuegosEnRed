create view Personajes_Marvel as
  SELECT 
  p.nombre_personaje as Personaje, 
  p.nombre_personaje as Nombre, 
  p.origen_poderes as Origen, 
  p2.nombre_personaje as Archienemigo,
  p.alineamiento as Alineamiento, 
  p.edad as Edad, 
  p.nacimiento as Nacimiento, 
  e.nombre as Equipo, 
  p.foto as Foto,
  sp.super_poderes as SuperPoderes
FROM 
  personaje_x_equipo pxe 
  INNER JOIN personaje p ON pxe.personaje_id = p.personaje_id 
  INNER JOIN equipo e ON pxe.equipo_id = e.equipo_id 
  INNER JOIN personaje p2 ON p.archienemigo = p2.personaje_id
  LEFT JOIN (
    SELECT 
      p.personaje_id, 
      GROUP_CONCAT(po.nombre SEPARATOR ', ') AS super_poderes
    FROM 
      Personaje p
      INNER JOIN Poderes_x_Personaje pp ON p.personaje_id = pp.personaje_id
      INNER JOIN Poder po ON pp.poder_id = po.super_poder_id
    GROUP BY 
      p.personaje_id
  ) AS sp ON p.personaje_id = sp.personaje_id;








SELECT p.nombre_personaje as Personaje, p.nombre_personaje Nombre, p.origen_poderes as Origen, p2.nombre_personaje as Archienemigo,
p.alineamiento as Alineamiento, p.edad as Edad, p.nacimiento as Nacimiento, e.nombre as Equipo, p.foto as Foto
FROM personaje_x_equipo pxe 
INNER JOIN personaje p ON pxe.personaje_id = p.personaje_id 
INNER JOIN equipo e ON pxe.equipo_id = e.equipo_id 
INNER JOIN personaje p2 ON p.personaje_id = p2.archienemigo;
 






SELECT 
  p.personaje_id, 
  p.nombre_personaje, 
  p.nombre_real, 
  p.origen_poderes, 
  p.archienemigo, 
  p.equipo_id, 
  p.alineamiento, 
  p.edad, 
  p.nacimiento, 
  p.foto, 
  GROUP_CONCAT(po.nombre SEPARATOR ', ') AS super_poderes
FROM 
  Personaje p
  INNER JOIN Poderes_x_Personaje pp ON p.personaje_id = pp.personaje_id
  INNER JOIN Poder po ON pp.poder_id = po.super_poder_id
GROUP BY 
  p.personaje_id