DROP DATABASE NAT;
CREATE DATABASE NAT;
USE NAT;

CREATE TABLE USUARIOS(
id INT PRIMARY KEY IDENTITY (1,1),
nombre VARCHAR (50),
usuario VARCHAR(50) UNIQUE NOT NULL,
contraseña VARCHAR(50) NOT NULL,
rol VARCHAR(50)
);

CREATE TABLE MAQUINAS(
id INT PRIMARY KEY IDENTITY (1,1),
nombre Varchar(50),
estado VARCHAR(50),
descripcion VARCHAR(50)
);

CREATE TABLE TIEMPOS(
id INT PRIMARY KEY IDENTITY (1,1),
id_maquina INT,
tiempo_por_caja DECIMAL (10,2) NOT NULL,
FOREIGN KEY (id_maquina) REFERENCES MAQUINAS(id)
);

CREATE TABLE Programacion (
    id_programacion INT PRIMARY KEY IDENTITY(1,1),
    id_maquina INT,
    cantidad_de_cajas INT NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (id_maquina) REFERENCES Maquinas(id)
);

CREATE TABLE Resultados_Produccion (
    id_resultado INT PRIMARY KEY IDENTITY(1,1),
    id_programacion INT,
    tiempo_total DECIMAL(10,2),
    FOREIGN KEY (id_programacion) REFERENCES Programacion(id_programacion)
);

INSERT INTO USUARIOS (nombre,usuario,contraseña,rol)
VALUES ('Angelica','angelica2',1234,'Directora de produccion'),
       ('Natalia','natalia1',12345,'Auxiliar de produccion'),
	   ('Felipe','felipe2',12346,'Supervisor de produccion');

INSERT INTO MAQUINAS(nombre,estado,descripcion)
VALUES ('Maquitec','Activo','Maquina embazadora de salsas'),
       ('Cramsa','Activa','Maquina embazadora de doypack'),
	   ('MZ','Activa','Maquina embazadora de pastas');

INSERT INTO Tiempos (id_maquina, tiempo_por_caja)
VALUES 
(1, 2.5),
(3,1.5),
(2, 3.0);
SELECT * FROM Maquinas;
SELECT * FROM Programacion;

INSERT INTO Programacion (id_maquina, cantidad_de_cajas, fecha)
VALUES 
(1, 100, '2026-03-24'),
(2, 150, '2026-03-25'),
(3, 200, '2026-03-26');

INSERT INTO Resultados_Produccion (id_programacion, tiempo_total)
SELECT 
    p.id_programacion,
    p.cantidad_de_cajas * t.tiempo_por_caja
FROM Programacion p
JOIN Tiempos t 
ON p.id_maquina = t.id_maquina;

SELECT 
    m.nombre AS maquina,
    p.cantidad_de_cajas,
    t.tiempo_por_caja,
    (p.cantidad_de_cajas * t.tiempo_por_caja) AS tiempo_total
FROM Programacion p
JOIN Maquinas m ON p.id_maquina = m.id
JOIN Tiempos t ON m.id = t.id_maquina;