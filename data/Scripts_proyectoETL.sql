CREATE TABLE ciudad (
    id_ciudad SERIAL PRIMARY KEY,
    nombre_ciudad TEXT
);
CREATE TABLE eventos (
    id_evento SERIAL PRIMARY KEY,
    nombre_evento TEXT,
    url_evento TEXT,
    codigo_postal INT,
    direccion TEXT,
    horario TEXT,
    fecha_inicio DATE,
    fecha_fin DATE,
    organizacion TEXT,
    id_ciudad INT REFERENCES ciudad(id_ciudad) ON DELETE CASCADE
);
CREATE TABLE hoteles (
    id_hotel SERIAL PRIMARY KEY, -- Puede ser VARCHAR(5)
    nombre_hotel TEXT,
    competencia BOOL,
    valoracion FLOAT CHECK (valoracion BETWEEN 1 AND 5),
    id_ciudad INT REFERENCES ciudad(id_ciudad) ON DELETE CASCADE
);
CREATE TABLE clientes (
    id_cliente VARCHAR(50) PRIMARY KEY,
    nombre TEXT,
    apellido TEXT,
    mail TEXT UNIQUE CHECK (mail LIKE '%@%')
);
CREATE TABLE reservas (
    id_reserva VARCHAR(50) PRIMARY KEY,
    fecha_reserva DATE,
    inicio_estancia DATE,
    final_estancia DATE,
    precio_noche FLOAT CHECK (precio_noche >= 0),
    id_cliente VARCHAR(50) REFERENCES clientes(id_cliente) ON DELETE CASCADE,
    id_hotel INT REFERENCES hoteles(id_hotel) ON DELETE CASCADE
    
);

select*
from ciudad c 

select *
from eventos e 

select *
from hoteles h 

select *
from clientes c 

select *
from reservas r 

select count (id_hotel )
from hoteles h 

select e.nombre_evento, 
		e.fecha_inicio 
from ciudad c 
join eventos e on c.id_ciudad = e.id_ciudad ;

select  c.nombre,
		c.apellido ,
		sum(precio_noche) as total_precio
from reservas r 
join clientes c on r.id_cliente = c.id_cliente 
group by c.nombre , c.apellido 
order by total_precio desc
limit 10;

