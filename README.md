# Software-de-Estandarización-NAT
EL software empresarial  de estandarización NAT consiste en permitir ingresar la programación semanal de producción y calcular automáticamente el tiempo estimado de fabricación.
El sistema permitirá:
•	Calcular el tiempo total de producción.
•	Optimizar la asignación de máquinas.
•	Facilitar la organización del personal.
•	Mejorar la planificación semanal.
•	Reducir errores en la programación.
De esta manera, la supervisora podrá tomar decisiones más precisas y organizar los turnos de forma más práctica y eficiente
 <h1>mockups de login </h1>

![alt text](<Interfaz de login.png>)
<h1>mockups de panel de control </h1>

 ![alt text](<Interfaz de panel de control.png>)

 <h1>mockups de panel de programacion </h1>

  ![alt text](<Interfaz de programacion.png>) 

  <h1>mockups de tiempos de estandarizacion</h1>

  ![alt text](<Interfaz de tiempos.png>) 

  <h1>mockups de registro de maquinas</h1>

  ![alt text](<interfaz_de_regitro_de _maquina.png>)


    Tabla: USUARIOS
id: INT – Identificador único (PK, Identity)<br>
nombre: VARCHAR(50) – Nombre del usuario<br>
usuario: VARCHAR(50) – Usuario de acceso (Unique, Not Null)<br>
contraseña: INT – Contraseña del usuario (Not Null)<br>
rol: VARCHAR(50) – Rol del usuario</h1>

    Tabla: MAQUINAS
id: INT – Identificador de la máquina (PK, Identity)<br>
nombre: VARCHAR(50) – Nombre de la máquina<br>
estado: VARCHAR(50) – Estado de la máquina<br>
descripcion: VARCHAR(50) – Descripción </h1>

    Tabla: TIEMPOS
id: INT – Identificador (PK, Identity)<br>
id_maquina: INT – Relación con MAQUINAS (FK)<br>
tiempo_por_minuto: DECIMAL(10,2) – Tiempo de producción </h1>


    Tabla: PROGRAMACION
id_programacion: INT – Identificador (PK, Identity)<br>
id_maquina: INT – Relación con MAQUINAS (FK)<br>
cantidad: INT – Cantidad de producción<br>
fecha: DATE – Fecha de programación </h1>

    Tabla: RESULTADOS_PRODUCCION
id_resultado: INT – Identificador (PK, Identity)<br>
id_programacion: INT – Relación con PROGRAMACION (FK)<br>
tiempo_total: DECIMAL(10,2) – Tiempo total calcul</h1>

<h1>MAQUINAS (1) → TIEMPOS (N)
MAQUINAS (1) → PROGRAMACION (N)
PROGRAMACION (1) → RESULTADOS_PRODUCCION (N) </h1>


![alt text](<DIAGRAMA DE ENTIDADES.png>)
   
