# Super Héroes # 

## Listado de Entidades

### Personaje (Marvel) **(ED)**

- personaje_id **(PK)**
- nombre_personaje
- nombre_real 
- poderes_id **(FK)**
- origen_poderes 
- archienemigo **(FK to personaje_id)**
- equipo_id **(FK)**
- alineamiento
- edad
- nacimiento
- foto


### Poderes_x_Personaje **(EP)**
- relacion_id **(PK)**
- poder_id **(FK)**
- personaje_id **(FK)**


### Personaje_x_Equipo **(EP)**
- relacion_id **(PK)**
- personaje_id **(FK)**
- equipo_id **(FK)**


### Poder  **(EC)**
- super_poder_id **(PK)**
- nombre
- descripción


### Equipo **(EC)**

- equipo_id **(PK)**
- nombre
- objetivo
- ubicación



## Relaciones

1. Un **Superhéroe** _tiene_ uno o muchos **poderes** (_M a M_).
1. Un **Superhéroe** _pertenece_ a uno o muchos **equipos¨** (_M a M_).

## Diagrama ##

### Modelo Relacional de la BD ##

![Modelo Relacional de la BD](../Parcial%203/MR%20DB.png)



# Reglas de Negocio

## Personaje
1. Crear un personaje y sus vínculos
1. Leer un personaje
1. Leer todos los personajes
1. Leer vínculos con tablas pivotes
1. Leer uno o más personajes con tablas pivote
1. Leer un personaje recursivo (archienemigo)
1. Actualizar un personaje y sus vínculos
1. Borrar un personaje y sus vínculos 

## Equipos
1. Crear un equipo
1. Leer un equipo
1. Leer todos los equipos
1. Leer vínculos con tablas pivote
1. Leer uno o más equipos con tablas pivote
1. Actualizar un equipo y sus vínculos
1. Borrar un equipo y sus vínculos

## Poderes
1. Crear un poder
1. Leer un poder
1. Leer todos los poderes
1. Leer vínculos con tablas pivote
1. Leer uno o más poderes con tablas pivote
1. Actualizar un poder y sus vínculos
1. Borrar un poder y sus vínculos



# Validación

## Personajes
1. Los personajes pueden no tener un nombre ficticio, se debe poner el nombre real en ambos
1. Los personajes pueden no tener archienemigos, se debe vincular a una entrada específica que indica sin archienemigo
1. Los personajes pueden no tener poderes, se debe vincular a una entrada específica que indica sin poderes
1. Los personajes puedes no tener equipo, se debe vincular a una entrada específica que indica sin afilación
1. La edad de un personaje puede ser desconocida, se debe indicar con null. Se debe manejar como "Desconocido" en la vista.
1. La edad de un personaje puede ser infinita, se debe indicar con null. Se debe manejar como "Desconocido" en la vista.
1. La fecha de nacimiento puede ser desconocida, se debe indicar con null. Se debe manejar como "Desconocido" en la vista.
1. Si no se tiene foto, vincular a una imagen genérica. 
