<h1 align="center"> Creación y modificación de una base de datos</h1>

***
## Actividad

 1. Realice una base de datos bajo el nombre 'vehiculos(2)' en el gestor de base de datos MySQL que se encuentra alojado en xampp utilizando unica y exclusivamente la consola de comandos y el lenguaje SQL.

2. En esta base de datos debe contener un número total de 4 tablas de datos.
    
    - Elabore una tabla de datos bajo el nombre de 'vendedores' que tenga como atributo (ID del vendedor, primer nombre, segundo nombre, primer apellido, segundo apellido, telefono, fecha y una llave primaria)
    
    - Elabore una tabla de datos bajo el nombre de 'vehiculos' que tenga como atributos (ID del vehiculo,transmision, precio y una llave primaria)

    - Elabore una tabla de datos bajo el nombre de 'clientes' que tenga los atributos (ID del cliente, primer apellido, segundo apellido, primer nombre, segundo nombre, dirección, barrio, ciudad, zona, telefono y una llave primaria)

    - Elabore una tabla de datos bajo el nombre de 'ventas' esta tabla debe contener (ID de venta, el ID del vendedor, el ID del vehiculo, el ID del cliente,tres llaves foraneas y una llave primaria)

3. Despúes de tener la base de datos y las tablas debe de realizar las siguientes modificaciones:

    - inserte los datos ('V01','ABC123','MANUAL',72500000) en la tabla de datos 'Vehiculos' con enlistamiento de campos.
     
    - inserte los datos ('V02','ABC124','MANUAL',55000000) en la tabla de datos 'Vehiculos' sin enlistamiento de campos.
     
    - inserte los datos ('V03','ABC125','MANUAL',155000000),('V04','ABC126','AUTOMATICA',8500000) en la tabla de 'Vehiculos' de forma simultanea, lo que quiere decir       que ambos conjuntos de datos ingresen a la vez.

    - insertar los datos (IDvendedor,P_Apellido,S_Apellido,P_Nombre,S_Nombre,telefono,f_nacimiento) en la tabla de 'vendedores' con enlistamiento de campos.
  
    - insertar los datos ('Perez','Florez','Ana','Flor','3013699900','2000-05-04') sin incluir un dato de auto incremento
  
    - Actualice los datos de la tabla 'Vendedores'
  
    - insertar los siguientes datos ('cc2233','Vega','','Carla','','kra 10 #  72-18','Rosales','Bogota d.c','Chapinero','6018882221') en la tabla de 'clientes'
  
    - insertar los siguientes datos en la tabla de 'ventas' ('01-230801',2,'V03','cc2233')

4. Como actividades complementarias tendremos:

     - REGISTRA LA VENTA 01-230801, REALIZADA POR ANA FLOR, DEL VEHICULO  ABC125,  AL CLIENTE CARLA
     
     - REGISTRA LA VENTA 03-230801, REALIZADA POR CARLOS LUIS, DEL VEHICULO  ABC126,  AL CLIENTE CON LOS SIGUIENTES DATOS:
       (IDcliente CC52111,P_Apellido TORRES,S_Apellido,P_Nombre ANA,S_Nombre LUISA,Direccion CALLE 100 #5-2,Barrio CHICO,Ciudad BOGOTA,Zona USAQUEN,Telefono 3012224444)

     - ACTUALIZAR EL VALOR DEL VEHICULO ABC123 A 63000000
  
     - BORRAR LA TABLA VENTAS
  
     - BORRAR LA TABLA CLIENTES
  
     - CREAR DE NUEVO LOS CLIENTES CARLA Y  ANA
  
     - CREAR UNA VENTA
  
     - ACTUALIZAR Transmision DEL VEHICULO  ABC124 AUTOMATICO
  
     - ELIMINAR LOS CARROS VENDIDOS
 
 para este ejercicio realice una base de datos desde el simbolo del sistema (CMD) usando completa y unicamente el lenguaje de SQL.


***
<h2 align="center">Creación de la base de datos</h2>

Desde la ventana de ejecutar que se abre usando el comando (Win + R), acederemos al simbolo del sistema de Windows o tambien conocido como la terminal de comandos integrados (CMD), ya abierta la consola de la terminal lo que haremos es dirigirnos al directorio de xampp, en donde alojaremos la base de datos, para hacer esto usaremos los comandos de navegación de la terminal, si no los conoces puedes visitar mi repositorio [Terminal](https://github.com/Brayan-Hc11/Terminal) en donde podrás conocer los movimientos que nos permite hacer la consola de comandos.

***
<details>
    <summary>
        <h3> Direccionamiento y navegación</h3>    
    </summary>

***
 - Lo que haremos con las siguientes instrucciones es retroceder en la ubicacióon en la que nos encontramos actualmente, con el fin de poder llegar a la unidad principal de almacinamiento que en nuestro caso  es el disco local C.
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

C:\Users\Usuario>cd..

c:\Users>cd..

C:\>
~~~
- para poder ver si tenemos xampp en nuestro equipo realizamos un comando de enlistamiento en donde podremos ver los directorios ocultos y visibles que se encuentran en nuestro disco local de almacenamiento. Nos interesa acceder a el directorio publico xampp, para hacer esto usamos el comando de navegación más el nombre del directorio (C:\>cd xampp).    
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

c:\>dir
  El volumen de la unidad C no tiene etiqueta.
  El número de serie del volumen es: C05E-F64F

    Directorio de C:\

21/12/2022  01:29 p. m.    <DIR>          directorio
25/09/2022  04:41 p. m.    <DIR>          Games
23/07/2023  09:06 p. m.    <DIR>          Intel
07/12/2019  04:14 a. m.    <DIR>          PerfLogs
15/05/2023  08:18 p. m.    <DIR>          Program Files
16/07/2023  05:36 p. m.    <DIR>          Program Files (x86)
25/09/2022  04:44 p. m.    <DIR>          Riot Games
20/06/2023  09:45 a. m.    <DIR>          Users
20/07/2023  03:57 p. m.    <DIR>          wamp64
22/06/2023  09:40 p. m.    <DIR>          Windows
23/05/2022  07:06 p. m.             8.562 WPI_Log_2022.05.23_19.06.25.txt
11/07/2023  08:13 p. m.    <DIR>          xampp
31/05/2023  05:26 p. m.    <DIR>          XboxGames
               1 archivos          8.562 bytes
              12 dirs  150.054.780.928 bytes libres

C:\>cd xampp
~~~
 - ya al interior de xampp lo que haremos será acceder al archivo de mysql seguido de esto accederemos a su carpeta bin en donde alojaremos nuestra base de datos,  para hacer esto usaremos el mismo comando anterior de navegación.
 ~~~
 Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

C:\xampp> cd mysql

C:\xampp\mysql>cd bin

C:\xampp\mysql\bin>
 ~~~


  - ya al interior de nuestro directorio de xampp lo que haremos será levantear el gestor de base de datos que viene con xampp, con la siguiente linea de comandos lo haremos :

  _nota:_ El comando nos permite acceder al gestor de base de datos de xampp, donde:    
    
- "mysql" es el motor al que queremos activar
- "-h localhost"  es el servidor local que queremos activar
- "-u root" el usuario que usaremos, por defecto el usuario será root
- "-p" la contraseña que nos permite el acceso, en caso de no tener alguna contraseña definida daremos enter y luego enter  

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

C:\xampp\mysql\bin>mysql -h localhost -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MySQL connection id is 568
Server version: 8.0.31 MySQL Community Server - GPL

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MySQL [(none)]>
~~~
</details>

***
<details>
    <summary> 
        <h3>Creación de la base de datos ("vehiculos2")</h3>
    </summary>

***
- para crear una nueva base de datos ingresaremos un comando de creación, seguido de esto indicaremos el archivo que queremos guardar, en este caso será una base de datos, seguido esto el nombre de la base de datos que le asignaremos, para nuestro ejercicio haremos una base de datos con el nombre de "vehiculos2" como se muestra a continuación:
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [(none)]> create database vehiculos2;
Query OK, 1 row affected (0.190 sec)

MySQL [(none)]>
~~~ 
- Para poder ver nuestras bases de datos lo que haremos será ejecutar un comando de invocación de elementos, lo que se hace de la siguiente forma:
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [(none)]>show databases;
~~~
- nos mostrará un listado en donde podemos ver las bases de datos que tenemos alojadas en el gestor de base de datos:

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| datos              |
| information_schema |
| mysql              |
| performance_schema |
| regdocumento       |
| registro           |
| sys                |
| vehiculos          |
| vehiculos2         |
+--------------------+
9 rows in set (0.067 sec)
~~~

- ya que hemos verificado que la base de datos se encuentra en servicio haremos uso de ella con ayuda de los comandos de la terminal, en donde le indicaremos que queremos acceder a ella, pero aparte de eso que la queremos usar, lo haremos de la siguiente forma:

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [(none)]> use vehiculos2;
Database changed
MySQL [vehiculos2]>
~~~
- "use vehiculos2" le indica al sistema que accederemos a la base de batos 'vehiculos2' y por ende el estado de ninguno **[(none)]** cambiará al nombre de la base de datos que usaremos **[(vehiculos2)]**

***
</details>

***
<details>
    <summary>
        <h3>Creación de tablas al interior de la DB ("vehiculos2")</h3>
    </summary>

***
- Al interior de nuestra base de datos  crearemos tablas en donde almacenaremos datos, crearemos las tablas de datos. Para comenzar crearemos una tabla padre bajo el nombre de 'vendedores', para eso usaremos la siguiente instrucción

___Nota;___ Los siguientes procedimientos que veremos acontinuación se repetiran varias veces 
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> create table Vendedores(
    -> IDvendedor int(10) not null auto_increment,
    -> P_Apellido varchar(50) not null,
    -> S_Apellido varchar(50) null,
    -> P_Nombre varchar(50) not null,
    -> S_Nombre varchar(50) null,
    -> telefono varchar(30) not null,
    -> f_nacimiento date not null,
    -> primary key (IDvendedor)
    -> );
Query OK, 0 rows affected, 1 warning (0.942 sec)

~~~
- para poder verificar que nuestra tabla  a sido creada usaremos un comando de visualización de elementos muy similar al anterior, con la diferencia de que queremos ver la tablas al interior de la base de datos 
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos2 |
+---------------------+
| Vendedores          |
+---------------------+
1 row in set (0.002 sec)
~~~
- Como siguiente paso creamos una tabla bajo el nombre de 'vehiculos', lo haremos de la misma forma en la que  creamos la tabla anterior
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> create table Vehiculos(
    ->     IDvehiculo varchar(10) not null,
    ->     Vehiculo varchar(10) not null,
    ->     Transmision varchar(70) NOT NULL,
    ->     Precio float not null,
    ->     primary key(IDvehiculo)
    ->       );
Query OK, 0 rows affected (0.052 sec)

MySQL [vehiculos2]>
~~~
De igual forma que la anterior tendremos que verificar que nuestra tabla haya sido creada correctamente
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos2 |
+---------------------+
| vehiculos           |
| vendedores          |
+---------------------+
2 rows in set (0.001 sec)
~~~
- Como siguiente paso creamos una tabla bajo el nombre de 'clientes', lo haremos de la misma forma en la que  creamos la tabla anterior
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> create table Clientes(
    ->     IDcliente varchar(10) not null,
    ->     P_Apellido varchar(50) not null,
    ->     S_Apellido varchar(50) null,
    ->     P_Nombre varchar(50) not null,
    ->     S_Nombre varchar(50) null,
    ->     Direccion varchar(50) not null,
    ->     Barrio varchar(50) not null,
    ->     Ciudad varchar(50) not null,
    ->     Zona varchar(50) not null,
    ->     Telefono varchar(30) not null,
    ->     primary key(IDcliente)
    ->        );
Query OK, 0 rows affected (0.092 sec)
~~~
- De igual forma que la anterior tendremos que verificar que nuestra tabla haya sido creada correctamente
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos2|
+---------------------+
| clientes            |
| vehiculos           |
| vendedores          |
+---------------------+
3 rows in set (0.001 sec)
~~~
- Como siguiente paso creamos nuetra ultima tabla bajo el nombre de 'ventas', lo haremos de la misma forma en la que  creamos la tabla anterior
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> create table Ventas(
    ->     IDVenta varchar(10) not null,
    ->     IDvendedor int(10) not null,
    ->     IDvehiculo varchar(10) not null,
    ->     IDcliente varchar(10) not null,
    ->     Foreign key(IDvendedor) REFERENCES Vendedores(IDvendedor),
    ->     Foreign key(IDvehiculo) REFERENCES Vehiculos(IDvehiculo),
    ->     Foreign key(IDcliente) REFERENCES Clientes(IDcliente),
    ->     Primary key(IDVenta)
    ->       );
Query OK, 0 rows affected, 1 warning (0.068 sec)
~~~
- De igual forma que la anterior tendremos que verificar que nuestra tabla haya sido creada correctamente
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos2|
+---------------------+
| clientes            |
| vehiculos           |
| vendedores          |
| ventas              |
+---------------------+
4 rows in set (0.036 sec)
~~~
</details>

***

<details>
 <summary>
   <h3>Manipulación de datos al interior de la base de datos ("vehiculos2")</h3>
 </summary>
 
- Iniciaremos con el ingreso de datos en las tablas de datos que tenemos en la base de datos, como primer ejercicio ingresaremos datos en la tabla 'vehiculos', para hacer eso usaremos las siguientes instrucciones:

_Nota:_ Las instruuciones nos piden un enlistamiento que llega a ser opcional tendremos dos ejemplos de ambos casos.

#### Primer caso ingreso de datos con enlistamientos 
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.
 
MySQL [vehiculos2]> Insert into vehiculos (IDvehiculo,Vehiculo,Transmision,Precio)values('V01','ABC123','MANUAL',72500000);
Query OK, 1 row affected (0.385 sec)
~~~

- Ahora queremos si queremos comprobrar que los datos han sido guardados de manera correcta lo que haremos será ejecutar la siguiente instrucción en la linea de comandos de la terminal

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> select * from Vehiculos;
+------------+----------+-------------+----------+
| IDvehiculo | Vehiculo | Transmision | Precio   |
+------------+----------+-------------+----------+
| V01        | ABC123   | MANUAL      | 72500000 |
+------------+----------+-------------+----------+
1 row in set (0.000 sec)
~~~

***
- Iniciaremos con el ingreso de datos en las tablas de datos que tenemos en la base de datos, como segundo ejercicio ingresaremos datos en la tabla 'vehiculos' por segunda vez, para esto necesitamos comprobar en estado actual de los datos primero para hacer eso imprimiremos el contenido de la tabla de la siguiente forma:

_Nota:_ Las instruuciones nos piden un enlistamiento que llega a ser opcional tendremos dos ejemplos de ambos casos.

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> select * from Vehiculos;
+------------+----------+-------------+----------+
| IDvehiculo | Vehiculo | Transmision | Precio   |
+------------+----------+-------------+----------+
| V01        | ABC123   | MANUAL      | 72500000 |
+------------+----------+-------------+----------+
1 row in set (0.000 sec)
~~~

- ya que hemos verificado el estado de los datos al interior de la tabla de datos 'Vehiculos' lo que haremos ahora será ingresar nuevos valores con la diferencia de que lo haremos sin enlistar los campos en la instrucción principal, como se muestra a continuación:

#### Segundo caso ingreso de datos sin enlistamientos 

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> Insert into Vehiculos values ('V02','ABC124','MANUAL',55000000);
Query OK, 1 row affected (0.017 sec)
~~~

- verificaremos que los datos han sido ingresados de forma correcta a nuestra tabla, lo haremos de la siguiente forma;

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> select * from Vehiculos;
+------------+----------+-------------+----------+
| IDvehiculo | Vehiculo | Transmision | Precio   |
+------------+----------+-------------+----------+
| V01        | ABC123   | MANUAL      | 72500000 |
| V02        | ABC124   | MANUAL      | 55000000 |
+------------+----------+-------------+----------+
2 rows in set (0.001 sec)
~~~

***
- ya que sabemos como ingresar un conjunto de datos, intentaremos ingresar dos conjuntos de datos a la vez, para logra esto tendremos que primero verificar el estado actual de la tabla, lo haremos de la misma forma que en la anterior;

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> select * from Vehiculos;
+------------+----------+-------------+----------+
| IDvehiculo | Vehiculo | Transmision | Precio   |
+------------+----------+-------------+----------+
| V01        | ABC123   | MANUAL      | 72500000 |
| V02        | ABC124   | MANUAL      | 55000000 |
+------------+----------+-------------+----------+
2 rows in set (0.001 sec)
~~~

- ya que conocemos el estado actual de los valores que se encuentran al interior de la tabla lo que haremos será ingresar nuevos conjuntos de datos a la tabla, lo haremos con la siguiente línea de comandos ;

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> Insert into Vehiculos values ('V03','ABC125','MANUAL',155000000),('V04','ABC126','AUTOMATICA',8500000);
Query OK, 2 rows affected (0.001 sec)
Records: 2  Duplicates: 0  Warnings: 0
~~~

- verificaremos que los datos hayan sido guardados de forma correcta en la tabla de datos;

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> select * from Vehiculos;
+------------+----------+-------------+-----------+
| IDvehiculo | Vehiculo | Transmision | Precio    |
+------------+----------+-------------+-----------+
| V01        | ABC123   | MANUAL      |  72500000 |
| V02        | ABC124   | MANUAL      |  55000000 |
| V03        | ABC125   | MANUAL      | 155000000 |
| V04        | ABC126   | AUTOMATICA  |   8500000 |
+------------+----------+-------------+-----------+
4 rows in set (0.001 sec)
~~~

***
- Para el siguiente ejercicio lo que haremos será agregar datos a una tabla de datos distinta por ende tendremos que saber el estado actual de esta tabla:

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> explain vendedores;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| IDvendedor   | int         | NO   | PRI | NULL    | auto_increment |
| P_Apellido   | varchar(50) | NO   |     | NULL    |                |
| S_Apellido   | varchar(50) | YES  |     | NULL    |                |
| P_Nombre     | varchar(50) | NO   |     | NULL    |                |
| S_Nombre     | varchar(50) | YES  |     | NULL    |                |
| telefono     | varchar(30) | NO   |     | NULL    |                |
| f_nacimiento | date        | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
7 rows in set (0.057 sec)
~~~

- Ya que hemos verificado que la tabla de datos se encuentra acitiva  y sin datos al interior de la base de datos, lo que haremos será ingresar los primeros datos en forma de enlistamiento y en un solo conjunto de datos:

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> Insert into Vendedores (IDvendedor,P_Apellido,S_Apellido,P_Nombre,S_Nombre,telefono,f_nacimiento)values (1,'Cano','Toro','Dana','Luz','3013699900','2000-05-04');
Query OK, 1 row affected (0.039 sec)
~~~

- ya que hemos ingresado la instrucción hay que averiguar si se ha completado correctamente, para ello ejecutaremos un consulta a la tabla:

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> select * from vendedores;
+------------+------------+------------+----------+----------+------------+--------------+
| IDvendedor | P_Apellido | S_Apellido | P_Nombre | S_Nombre | telefono   | f_nacimiento |
+------------+------------+------------+----------+----------+------------+--------------+
|          1 | Cano       | Toro       | Dana     | Luz      | 3013699900 | 2000-05-04   |
+------------+------------+------------+----------+----------+------------+--------------+
1 row in set (0.001 sec)
~~~

***

- Para el siguiente ejercicio lo que haremos será incluir un conjunto de datos sin la necedidad de incluir un dato de autoincremento, para ello es inpresindible saber el estado actual en el que la tabla se encuentra;

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> select * from vendedores;
+------------+------------+------------+----------+----------+------------+--------------+
| IDvendedor | P_Apellido | S_Apellido | P_Nombre | S_Nombre | telefono   | f_nacimiento |
+------------+------------+------------+----------+----------+------------+--------------+
|          1 | Cano       | Toro       | Dana     | Luz      | 3013699900 | 2000-05-04   |
+------------+------------+------------+----------+----------+------------+--------------+
1 row in set (0.001 sec)
~~~

- ya que conocemos el estado de la tabla lo que haremos a continuación será ingresar un nuevo conjunto de datos sin incluir el dato de autoincremento, lo que se hace de la siguiente manera:

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> Insert into Vendedores (P_Apellido,S_Apellido,P_Nombre,S_Nombre,telefono,f_nacimiento)values('Perez','Florez','Ana','Flor','3013699900','2000-05-04');
Query OK, 1 row affected (0.001 sec)
~~~

***
- Lo que haremos a continuación será la actualización de nuevos datos al interior de la tabla de datos 'Vendedores', actualizaremos los datos que hemos ingresado anteriormente, para hecer esto necesitamos saber cuales son los datos anteriores:

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> select * from vendedores;
+------------+------------+------------+----------+----------+------------+--------------+
| IDvendedor | P_Apellido | S_Apellido | P_Nombre | S_Nombre | telefono   | f_nacimiento |
+------------+------------+------------+----------+----------+------------+--------------+
|          1 | Cano       | Toro       | Dana     | Luz      | 3013699900 | 2000-05-04   |
+------------+------------+------------+----------+----------+------------+--------------+
1 row in set (0.001 sec)
~~~

- ya que conocemos estos datos lo que haremos será cambiarlos por nuevos datos con la siguiente linea de instrcciones:

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> update Vendedores set  P_Apellido = 'Dueñas',
    -> P_Nombre ='Carlos',
    -> S_Apellido = null,
    -> S_Nombre = 'Luis',
    -> telefono = '60122223333',
    -> f_nacimiento ='2002-11-14'
    -> where IDVENDEDOR=2;
Query OK, 1 row affected (0.022 sec)
Rows matched: 1  Changed: 1  Warnings: 0
~~~

- Ahora verificaremos que los cambios se hayan realizado correctamente en nuestra tabla de datos:

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> select * from vendedores;
+------------+------------+------------+----------+----------+-------------+--------------+
| IDvendedor | P_Apellido | S_Apellido | P_Nombre | S_Nombre | telefono    | f_nacimiento |
+------------+------------+------------+----------+----------+-------------+--------------+
|          1 | Cano       | Toro       | Dana     | Luz      | 3013699900  | 2000-05-04   |
|          2 | Dueñas     | NULL       | Carlos   | Luis     | 60122223333 | 2002-11-14   |
+------------+------------+------------+----------+----------+-------------+--------------+
2 rows in set (0.001 sec)
~~~

***
- Como siguiente ejercicio insertaremos datos en la tabla de 'clientes', primeramente necesitamos saber el estado de la tabla de datos 'clientes', para esto seguirimos las siguientes instuccuiones en la linea de comandos:

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> explain clientes;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| IDcliente  | varchar(10) | NO   | PRI | NULL    |       |
| P_Apellido | varchar(50) | NO   |     | NULL    |       |
| S_Apellido | varchar(50) | YES  |     | NULL    |       |
| P_Nombre   | varchar(50) | NO   |     | NULL    |       |
| S_Nombre   | varchar(50) | YES  |     | NULL    |       |
| Direccion  | varchar(50) | NO   |     | NULL    |       |
| Barrio     | varchar(50) | NO   |     | NULL    |       |
| Ciudad     | varchar(50) | NO   |     | NULL    |       |
| Zona       | varchar(50) | NO   |     | NULL    |       |
| Telefono   | varchar(30) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
10 rows in set (0.001 sec)
~~~

- ya que conocemos el estado de la tabla lo que haremos será insertar los datos que requerimos insertar:

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.


MySQL [vehiculos2]> insert into clientes (IDcliente,P_Apellido,S_Apellido,P_Nombre,S_Nombre,Direccion,Barrio,Ciudad,Zona,Telefono)values('cc2233','Vega','','Carla','','kra 10 #  72-18','Rosales','Bogota d.c','Chapinero','6018882221');
Query OK, 1 row affected (0.094 sec)
~~~

- verificaremos que los datos se hayan cargado correctamente en la tabla de datos:

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> select * from clientes;
+-----------+------------+------------+----------+----------+-----------------+---------+------------+-----------+------------+
| IDcliente | P_Apellido | S_Apellido | P_Nombre | S_Nombre | Direccion       | Barrio  | Ciudad     | Zona      | Telefono   |
+-----------+------------+------------+----------+----------+-----------------+---------+------------+-----------+------------+
| cc2233    | Vega       |            | Carla    |          | kra 10 #  72-18 | Rosales | Bogota d.c | Chapinero | 6018882221 |
+-----------+------------+------------+----------+----------+-----------------+---------+------------+-----------+------------+
1 row in set (0.001 sec)
~~~

***

-  Para el siguiente ejercicio insertaremos datos en la tabla de datos 'ventas', para esto es necesario saber el estado previo antes del cambio:

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> explain ventas;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| IDVenta    | varchar(10) | NO   | PRI | NULL    |       |
| IDvendedor | int         | NO   | MUL | NULL    |       |
| IDvehiculo | varchar(10) | NO   | MUL | NULL    |       |
| IDcliente  | varchar(10) | NO   | MUL | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.017 sec)
~~~

- Ya que conoemos el estado de la tabla procedemos a insertar los datos:

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.


MySQL [vehiculos2]> insert into ventas (IDVenta,IDvendedor,IDvehiculo,IDcliente)values('01-230801',2,'V03','cc2233');
Query OK, 1 row affected (0.027 sec)
~~~

- Ya que hemos insertados los datos en la tabla verfificaremos que estos datos se hayan guardado correctamente:

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> select * from ventas;
+-----------+------------+------------+-----------+
| IDVenta   | IDvendedor | IDvehiculo | IDcliente |
+-----------+------------+------------+-----------+
| 01-230801 |          2 | V03        | cc2233    |
+-----------+------------+------------+-----------+
1 row in set (0.000 sec)
~~~
</details>

***
<details>
 <summary>
  <h3>Actividades complementarias</h3>
 </summary>

 ***
 - REGISTRAR LA VENTA 01-230801, REALIZADA POR ANA FLOR, DEL VEHICULO  ABC125,  AL CLIENTE CARLA

   __Tabla ventas estado actual_

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> select * from ventas;
+-----------+------------+------------+-----------+
| IDVenta   | IDvendedor | IDvehiculo | IDcliente |
+-----------+------------+------------+-----------+
| 01-230801 |          2 | V03        | cc2233    |
+-----------+------------+------------+-----------+
1 row in set (0.001 sec)
~~~

- En la tabla de vendedor insertaremos al vendedor 'ana'

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> Insert into Vendedores (P_Apellido,S_Apellido,P_Nombre,S_Nombre,telefono,f_nacimiento)values('Perez','Florez','Ana','Flor','3013699900','2000-05-04');
Query OK, 1 row affected (0.001 sec)

MySQL [vehiculos2]> select * from vendedores;
+------------+------------+------------+----------+----------+-------------+--------------+
| IDvendedor | P_Apellido | S_Apellido | P_Nombre | S_Nombre | telefono    | f_nacimiento |
+------------+------------+------------+----------+----------+-------------+--------------+
|          1 | Cano       | Toro       | Dana     | Luz      | 3013699900  | 2000-05-04   |
|          2 | Dueñas     | NULL       | Carlos   | Luis     | 60122223333 | 2002-11-14   |
|          3 | Perez      | Florez     | Ana      | Flor     | 3013699900  | 2000-05-04   |
+------------+------------+------------+----------+----------+-------------+--------------+
3 rows in set (0.000 sec)
~~~

- realizaceremos una nueva venta

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> insert into ventas (IDVenta,IDvendedor,IDvehiculo,IDcliente)values('02-230801',3,'V03','cc2233');
Query OK, 1 row affected (0.001 sec)

MySQL [vehiculos2]> select * from ventas;
+-----------+------------+------------+-----------+
| IDVenta   | IDvendedor | IDvehiculo | IDcliente |
+-----------+------------+------------+-----------+
| 01-230801 |          2 | V03        | cc2233    |
| 02-230801 |          3 | V03        | cc2233    |
+-----------+------------+------------+-----------+
2 rows in set (0.000 sec)
~~~

***
- REGISTRA LA VENTA 03-230801, REALIZADA POR CARLOS LUIS, DEL VEHICULO  ABC126,  AL CLIENTE CON LOS SIGUIENTES DATOS:(IDcliente CC52111, P_Apellido TORRES,S_Apellido, P_Nombre ANA, S_Nombre LUISA,Direccion CALLE 100 #5-2, Barrio CHICO, Ciudad BOGOTA, Zona USAQUEN, Telefono 3012224444)

 __Tabla ventas estado actual_

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> select * from ventas;
+-----------+------------+------------+-----------+
| IDVenta   | IDvendedor | IDvehiculo | IDcliente |
+-----------+------------+------------+-----------+
| 01-230801 |          2 | V03        | cc2233    |
| 02-230801 |          3 | V03        | cc2233    |
+-----------+------------+------------+-----------+
2 rows in set (0.000 sec)
~~~

_para esta venta es necesario agregar un nuevo cliente_

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> insert into clientes(IDcliente,P_Apellido,S_Apellido,P_Nombre,S_Nombre,Direccion,Barrio,Ciudad,Zona,Telefono)values('CC52111','Torres','Ana','Luisa','','calle 100 #5-2','CHICO','Bogota d.c','USAQUEN','3012224444');
Query OK, 1 row affected (0.001 sec)

MySQL [vehiculos2]> select * from clientes;
+-----------+------------+------------+----------+----------+-----------------+---------+------------+-----------+------------+
| IDcliente | P_Apellido | S_Apellido | P_Nombre | S_Nombre | Direccion       | Barrio  | Ciudad     | Zona      | Telefono   |
+-----------+------------+------------+----------+----------+-----------------+---------+------------+-----------+------------+
| cc2233    | Vega       |            | Carla    |          | kra 10 #  72-18 | Rosales | Bogota d.c | Chapinero | 6018882221 |
| CC52111   | Torres     | Ana        | Luisa    |          | calle 100 #5-2  | CHICO   | Bogota d.c | USAQUEN   | 3012224444 |
+-----------+------------+------------+----------+----------+-----------------+---------+------------+-----------+------------+
2 rows in set (0.000 sec)
~~~

_realizamos una nueva venta_

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> insert into ventas (IDVenta,IDvendedor,IDvehiculo,IDcliente)values('03-230801',2,'V04','CC52111');
Query OK, 1 row affected (0.001 sec)

MySQL [vehiculos2]> select * from ventas;
+-----------+------------+------------+-----------+
| IDVenta   | IDvendedor | IDvehiculo | IDcliente |
+-----------+------------+------------+-----------+
| 01-230801 |          2 | V03        | cc2233    |
| 02-230801 |          3 | V03        | cc2233    |
| 03-230801 |          2 | V04        | CC52111   |
+-----------+------------+------------+-----------+
3 rows in set (0.000 sec)
~~~

***

- ACTUALIZAR EL VALOR DEL VEHICULO ABC123 A 63000000

_Tenemos que confirmar el valor actual del vehiculo_

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> select * from vehiculos;
+------------+----------+-------------+-----------+
| IDvehiculo | Vehiculo | Transmision | Precio    |
+------------+----------+-------------+-----------+
| V01        | ABC123   | MANUAL      |  72500000 |
| V02        | ABC124   | MANUAL      |  55000000 |
| V03        | ABC125   | MANUAL      | 155000000 |
| V04        | ABC126   | AUTOMATICA  |   8500000 |
+------------+----------+-------------+-----------+
4 rows in set (0.001 sec)
~~~

_actualizamos el valor del vehiculo_

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> update vehiculos set Precio ='63000000'
    -> where IDvehiculo='V01';
Query OK, 1 row affected (0.001 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MySQL [vehiculos2]> select * from vehiculos;
+------------+----------+-------------+-----------+
| IDvehiculo | Vehiculo | Transmision | Precio    |
+------------+----------+-------------+-----------+
| V01        | ABC123   | MANUAL      |  63000000 |
| V02        | ABC124   | MANUAL      |  55000000 |
| V03        | ABC125   | MANUAL      | 155000000 |
| V04        | ABC126   | AUTOMATICA  |   8500000 |
+------------+----------+-------------+-----------+
4 rows in set (0.000 sec)
~~~

***
- BORRAR LA TABLA VENTAS y BORRAR LA TABLA CLIENTES

_Confirmamos el estado de las tablas en la base de datos_

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> show tables;
+----------------------+
| Tables_in_vehiculos2 |
+----------------------+
| clientes             |
| vehiculos            |
| vendedores           |
| ventas               |
+----------------------+
4 rows in set (0.002 sec)
~~~

_boramos las tablas ventas y clientes_

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> drop table ventas;
Query OK, 0 rows affected (0.349 sec)

MySQL [vehiculos2]> drop table clientes;
Query OK, 0 rows affected (0.034 sec)

MySQL [vehiculos2]> show tables;
+----------------------+
| Tables_in_vehiculos2 |
+----------------------+
| vehiculos            |
| vendedores           |
+----------------------+
2 rows in set (0.001 sec)
~~~

***
- CREAR DE NUEVO LOS CLIENTES CARLA Y  ANA

_Craamos una nueva tabla de datos clientes_

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> show tables;
+----------------------+
| Tables_in_vehiculos2 |
+----------------------+
| vehiculos            |
| vendedores           |
+----------------------+
2 rows in set (0.001 sec)

MySQL [vehiculos2]> create table Clientes(
    ->     IDcliente varchar(10) not null,
    ->     P_Apellido varchar(50) not null,
    ->     S_Apellido varchar(50) null,
    ->     P_Nombre varchar(50) not null,
    ->     S_Nombre varchar(50) null,
    ->     Direccion varchar(50) not null,
    ->     Barrio varchar(50) not null,
    ->     Ciudad varchar(50) not null,
    ->     Zona varchar(50) not null,
    ->     Telefono varchar(30) not null,
    ->     primary key(IDcliente)
    ->        );
Query OK, 0 rows affected (0.053 sec)

~~~




_creamos dos clientes_

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> select * From clientes;
Empty set (0.000 sec)

MySQL [vehiculos2]> insert into clientes (IDcliente,P_Apellido,S_Apellido,P_Nombre,S_Nombre,Direccion,Barrio,Ciudad,Zona,Telefono)values('CC10223','Vega','diaz','Carla','maria','kra 19 #  62-18','Rosales','Bogota d.c','Chapinero','6018882221');
Query OK, 1 row affected (0.001 sec)

MySQL [vehiculos2]> insert into clientes (IDcliente,P_Apellido,S_Apellido,P_Nombre,S_Nombre,Direccion,Barrio,Ciudad,Zona,Telefono)values('CC927663','Avendaño','Rojas','Ana','Isabel','kra 9 #  2-10','sucre','Bogota d.c','usme','2223482221');
Query OK, 1 row affected (0.000 sec)
~~~

_verificamos en la tabla de datos_

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> select * From clientes;
+-----------+------------+------------+----------+----------+-----------------+---------+------------+-----------+------------+
| IDcliente | P_Apellido | S_Apellido | P_Nombre | S_Nombre | Direccion       | Barrio  | Ciudad     | Zona      | Telefono   |
+-----------+------------+------------+----------+----------+-----------------+---------+------------+-----------+------------+
| CC10223   | Vega       | diaz       | Carla    | maria    | kra 19 #  62-18 | Rosales | Bogota d.c | Chapinero | 6018882221 |
| CC927663  | Avendaño   | Rojas      | Ana      | Isabel   | kra 9 #  2-10   | sucre   | Bogota d.c | usme      | 2223482221 |
+-----------+------------+------------+----------+----------+-----------------+---------+------------+-----------+------------+
2 rows in set (0.000 sec)
~~~

***
- CREAR UNA VENTA 

_creamos una nueva tabla ventas_

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> show tables;
+----------------------+
| Tables_in_vehiculos2 |
+----------------------+
| clientes             |
| vehiculos            |
| vendedores           |
+----------------------+
3 rows in set (0.001 sec)

MySQL [vehiculos2]> create table Ventas(
    ->     IDVenta varchar(10) not null,
    ->     IDvendedor int(10) not null,
    ->     IDvehiculo varchar(10) not null,
    ->     IDcliente varchar(10) not null,
    ->     Foreign key(IDvendedor) REFERENCES Vendedores(IDvendedor),
    ->     Foreign key(IDvehiculo) REFERENCES Vehiculos(IDvehiculo),
    ->     Foreign key(IDcliente) REFERENCES Clientes(IDcliente),
    ->     Primary key(IDVenta)
    ->       );
Query OK, 0 rows affected, 1 warning (0.026 sec)
~~~

_creamos una nueva venta_

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> select * from ventas;
Empty set (0.001 sec)

MySQL [vehiculos2]> insert into ventas (IDVenta,IDvendedor,IDvehiculo,IDcliente)values('05-230801',3,'V01','CC1022');
Query OK, 1 row affected (0.001 sec)

MySQL [vehiculos2]> select * from ventas;
+-----------+------------+------------+-----------+
| IDVenta   | IDvendedor | IDvehiculo | IDcliente |
+-----------+------------+------------+-----------+
| 05-230801 |          3 | V01        | CC1022    |
+-----------+------------+------------+-----------+
1 row in set (0.000 sec)

~~~ 


***
- ACTUALIZAR Transmision DEL VEHICULO  ABC124 AUTOMATICO

_verificamos el estado del vehiculo_

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> select * from vehiculos;
+------------+----------+-------------+-----------+
| IDvehiculo | Vehiculo | Transmision | Precio    |
+------------+----------+-------------+-----------+
| V01        | ABC123   | MANUAL      |  63000000 |
| V02        | ABC124   | MANUAL      |  55000000 |
| V03        | ABC125   | MANUAL      | 155000000 |
| V04        | ABC126   | AUTOMATICA  |   8500000 |
+------------+----------+-------------+-----------+
4 rows in set (0.001 sec)
~~~

_Actualizamos la transmision del vehiculo _

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos2]> update vehiculos set Transmision = 'AUTOMATICO'
    -> where IDvehiculo = 'V02';
Query OK, 1 row affected (0.001 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MySQL [vehiculos2]> select * from vehiculos;
+------------+----------+-------------+-----------+
| IDvehiculo | Vehiculo | Transmision | Precio    |
+------------+----------+-------------+-----------+
| V01        | ABC123   | MANUAL      |  63000000 |
| V02        | ABC124   | AUTOMATICO  |  55000000 |
| V03        | ABC125   | MANUAL      | 155000000 |
| V04        | ABC126   | AUTOMATICA  |   8500000 |
+------------+----------+-------------+-----------+
4 rows in set (0.000 sec)
~~~

***

- ELIMINAR LOS CARROS VENDIDOS

_verificamos el estado de la tabla_

</details>

***
