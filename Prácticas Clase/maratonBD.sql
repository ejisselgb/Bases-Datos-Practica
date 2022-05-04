
CREATE TABLE IF NOT EXISTS "Grupo 1"."MBD_PASAJEROS"(
	id_pasajero SERIAL PRIMARY KEY,
	nombre_completo varchar(20),
	edad int(2),
	genero varchar(1),
	telefono varchar(10),
	pais varchar(2),
	fecha_registro DATE
);

CREATE TABLE IF NOT EXISTS "Grupo 1"."MBD_VEHICULOS"(
    id_vehiculo SERIAL PRIMARY KEY,
    placa varchar(6),
    marca varchar(20),
    modelo varchar(4),
    tipo varchar(10)
);

CREATE TABLE IF NOT EXISTs "Grupo 1"."MBD_CONDUCTORES"(
	id_conductor SERIAL PRIMARY KEY,
    id_vehiculo SERIAL,
	nombre_conductor varchar(20),
	fecha_registro DATE,
    telefono varchar(10),
	pais varchar(2) 
    CONSTRAINT fk_id_vehiculo FOREIGN KEY (id_vehiculo) REFERENCES "Grupo 1"."MBD_VEHICULOS"(id_vehiculo)
);


CREATE TABLE IF NOT EXISTS "Grupo 1"."MBD_PAGOS"(
	id_pago SERIAL PRIMARY KEY,
	metodo_de_pago varchar(10),
	total_pago int4,
	numero_de_tarjeta varchar(11),
	descuento_conductor int4 
);


CREATE TABLE IF NOT EXISTS "Grupo 1"."MBD_VIAJES"(
    id_viaje SERIAL PRIMARY KEY,
    id_pasajero SERIAL,
    id_conductor SERIAL,
    id_pago SERIAL,
    fecha_viaje DATE,
    hora_inicio TIME,
    hora_fin TIME,
    tiempo_espera int2,
    puntuacion_conductor int2,
    direccion_origen varchar(25),
    direccion_destino varchar(25),
    CONSTRAINT fk_id_pasajero FOREIGN KEY (id_pasajero) REFERENCES "Grupo 1"."MBD_PASAJEROS"(id_pasajero),
    CONSTRAINT fk_id_conductor FOREIGN KEY (id_conductores) REFERENCES "Grupo 1"."MBD_PASAJEROS"(id_conductores),
    CONSTRAINT fk_id_pago FOREIGN KEY (id_pago) REFERENCES "Grupo 1"."MBD_PASAJEROS"(id_pago)
);

INSERT INTO "Grupo 1"."MBD_PASAJEROS" (nombre_completo, edad, genero, telefono, pais, fecha_registro)
VALUES
('Driscoll Austin', 30, 'M', '3001110011', 'CO', '2020/05/19'),
('Uriel Nash', 27, 'F', '3001110022', 'BR', '2018/06/10'),
('Andrew Russell', 25, 'M', '3001110023', 'BR', '2019/01/01'),
('Zachery Valencia', 33, 'F', '3001110024', 'CO', '2018/07/11'),
('Kiona Pace', 33, 'F', '3001110025', 'BR', '2017/04/11'),
('Tobias Larson', 40, 'M', '3001110026', 'BR', '2018/01/23')
;

INSERT INTO "Grupo 1"."MBD_VEHICULOS" (placa, marca, modelo, tipo)
VALUES
('IOO111', 'Renault', '2017', 'Automóvil'),
('EFA223', 'Chevrolet', '2019', 'Automóvil'),
('TWD567', 'Toyota', '2015', 'Automóvil'),
('HGF009', 'Renault', '2020' 'Campero')
;

INSERT INTO "Grupo 1"."MBD_CONDUCTORES" (nombre_conductor, telefono, fecha_registro, pais, id_vehiculo)
VALUES
('Lareina Sharp', '3120000001', '2017/02/10', 'ES', 1),
('Adam Bender', '3120000002', '2019/06/20', 'BR', 2),
('Inga Greer', '3120000003', '2017/07/20', 'CO', 3),
('Clark Campo', '3120000004', '2022/04/05', 'CO', 4);

INSERT INTO "Grupo 1"."MBD_PAGOS" (metodo_de_pago_, total_pago, numero_de_tarjeta, descuento_conductor)
VALUES
('TC', 12000, '12345678901', 2000),
('EF', 23000, '0', 5000),
('TC', 17000, '11102112210', 4000),
('TC', 20000, '11234554343', 5000),
('TC', 23000, '11234554343', 7000),
('EF', 10000, '0', 2000),
('TC', 24000, '12300099871', 8000)
;

INSERT INTO "Grupo 1"."MDB_ VIAJES" (id_pasajero, id_conductor, id_pago, fecha_viaje, hora_inicio, hora_fin, tiempo_espera, puntuacion_conductor, direccion_origen, direccion_destino)
VALUES
(1, 4, ),
(2, 2, ),
(3, 2, ),
(4, 4, ),
(4, 3, ),
(5, 2, ),
(6, 2, )
;
