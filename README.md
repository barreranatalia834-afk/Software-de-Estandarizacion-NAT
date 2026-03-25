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


    <h1>| Campo      | Tipo de Dato | Tamaño | Descripción                     | Restricciones          |
| ---------- | ------------ | ------ | ------------------------------- | ---------------------- |
| id         | INT          | —      | Identificador único del usuario | PK, Identity, Not Null |
| nombre     | VARCHAR      | 50     | Nombre del usuario              | Not Null               |
| usuario    | VARCHAR      | 50     | Nombre de usuario para acceso   | Unique, Not Null       |
| contraseña | INT          | —      | Contraseña del usuario          | Not Null               |
| rol        | VARCHAR      | 50     | Rol dentro del sistema          | Not Null               |
</h1>

<h1>| Campo       | Tipo de Dato | Tamaño | Descripción                       | Restricciones          |
| ----------- | ------------ | ------ | --------------------------------- | ---------------------- |
| id          | INT          | —      | Identificador único de la máquina | PK, Identity, Not Null |
| nombre      | VARCHAR      | 50     | Nombre de la máquina              | Not Null               |
| estado      | VARCHAR      | 50     | Estado (Activa/Inactiva)          | Not Null               |
| descripcion | VARCHAR      | 50     | Descripción de la máquina         | Null                   |
 </h1>
<h1> | Campo             | Tipo de Dato | Tamaño | Descripción                       | Restricciones          |
| ----------------- | ------------ | ------ | --------------------------------- | ---------------------- |
| id                | INT          | —      | Identificador del tiempo estándar | PK, Identity, Not Null |
| id_maquina        | INT          | —      | Máquina asociada                  | FK, Not Null           |
| tiempo_por_minuto | DECIMAL      | 10,2   | Tiempo de producción por unidad   | Not Null, > 0          |
</h1>
<h1>| Campo           | Tipo de Dato | Tamaño | Descripción                      | Restricciones          |
| --------------- | ------------ | ------ | -------------------------------- | ---------------------- |
| id_programacion | INT          | —      | Identificador de la programación | PK, Identity, Not Null |
| id_maquina      | INT          | —      | Máquina asignada                 | FK, Not Null           |
| cantidad        | INT          | —      | Cantidad de producción           | Not Null, > 0          |
| fecha           | DATE         | —      | Fecha de producción              | Not Null               |
 </h1>
<h1>| Campo           | Tipo de Dato | Tamaño | Descripción                          | Restricciones          |
| --------------- | ------------ | ------ | ------------------------------------ | ---------------------- |
| id_resultado    | INT          | —      | Identificador del resultado          | PK, Identity, Not Null |
| id_programacion | INT          | —      | Relación con programación            | FK, Not Null           |
| tiempo_total    | DECIMAL      | 10,2   | Tiempo total calculado de producción | Not Null               |
 </h1>
<h1>MAQUINAS (1) → TIEMPOS (N)
MAQUINAS (1) → PROGRAMACION (N)
PROGRAMACION (1) → RESULTADOS_PRODUCCION (N) </h1>


![alt text](<DIAGRAMA DE ENTIDADES-.png>)
   
