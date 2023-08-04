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


 
 para este ejercicio realice una base de datos desde el simbolo del sistema (CMD) usando completa y unicamente el lenguaje de SQL .


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
