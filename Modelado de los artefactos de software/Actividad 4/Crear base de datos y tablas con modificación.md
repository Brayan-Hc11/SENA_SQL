<h1 align="center"> Creación y modificación de una base de datos</h1>

***
## Actividad

 1. Realice una base de datos bajo el nombre 'vehiculos' en el gestor de base de datos MySQL que se encuentra alojado en xampp utilizando unica y exclusivamente la consola de comandos y el lenguaje SQL.

2. En esta base de datos debe contener un número total de 4 tablas de datos.
    
    - Elabore una tabla de datos bajo el nombre de 'vendedores' que tenga como atributo (ID del vendedor, primer nombre, segundo nombre, primer apellido, segundo apellido, telefono, fecha y una llave primaria)
    
    - Elabore una tabla de datos bajo el nombre de 'vehiculos' que tenga como atributos (ID del vehiculo,transmision, precio y una llave primaria)

    - Elabore una tabla de datos bajo el nombre de 'clientes' que tenga los atributos (ID del cliente, primer apellido, segundo apellido, primer nombre, segundo nombre, dirección, barrio, ciudad, zona, telefono y una llave primaria)

    - Elabore una tabla de datos bajo el nombre de 'ventas' esta tabla debe contener (ID de venta, el ID del vendedor, el ID del vehiculo, el ID del cliente,tres llaves foraneas y una llave primaria)

3. Despúes de tener la base de datos y las tablas debe de realizar las siguientes modificaciones:

    - En la tabla de datos clientes cambiar el atributo de 'zona' por el atributo de 'localidad'.

    - En la tabla de datos 'vehicuos' añadir el campo de 'modelo' 

    - En la tabla de datos 'clientes' elimiar el atributo de 'telefono'

    - Crear una nueva tabla de datos bajo el nombre 'tipo_vehiculo' que contenga los atributos de (ID del tipo de vehiculo, tipo de vehiculo y una llave primaria)

    - Añadar la llave foranea (IDtipo_vehiculo)a la tabla de datos 'vehiculos' 

    - En la tabla 'ventas' cambiar (IDtipo_documento) por (IDcarro)
  
    - En la tabla de datos 'clientes' modificar el tamaño del atributo 'direccion' de (50) a (100)
  
    - En la tabla de datos 'vehiculos' modificar el tipo de dato  'varchar' del atributo 'vehiculo' a tipo de dato (text)

    - En la tabla de datos 'clientes' eliminar las columnas 'barrio' y 'localidad'
  
    - En la tabla de datos 'clientes' añadir los atributos 'eps' y 'cantidad_hijos'
  
    - Cambiar el nombre de la tabla de datos 'vehiculos' por 'automotores'
  
    - Eliminar la tabla 'ventas' de la base de datos
  
    - crear una tabla de datos bajo el nombre de 'factura' con los atributos(ID_factura, 4 llaves foreneas porcetaje iva y número de factura)
  
 
 para este ejercicio realice una base de datos desde el simbolo del sistema (CMD) usando completa y unicamente el lenguaje de SQL .

***
<h2 align="center">Creación de la base de datos</h2>

 - Desde la ventana de ejecutar que se abre usando el comando (Win + R), acederemos al simbolo del sistema de Windows o tambien conocido como la terminal de comandos integrados (CMD), ya abierta la consola de la terminal lo que haremos es dirigirnos al directorio de xampp, en donde alojaremos la base de datos, para hacer esto usaremos los comandos de navegación de la terminal, si no los conoces puedes visitar mi repositorio [Terminal](https://github.com/Brayan-Hc11/Terminal) en donde podrás conocer los movimientos que nos permite hacer la consola de comandos.

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

***
</details>

***
<details>
    <summary> 
        <h3>Creación de la base de datos ("vehiculos")</h3>
    </summary>

***
- para crear una nueva base de datos ingresaremo un comando de creación seguido de esto indicaremos el archivo que queremos guardar, en este caso será una base de datos, seguido esto el nombre de la base de datos que le asignaremos, para nuestro ejercicio haremos una base de datos con el nombre de vehiculos como se muestra a continuación:
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [(none)]> create database vehiculos;
Query OK, 1 row affected (1.091 sec)

MySQL [(none)]>
~~~ 
- Para poder ver nuestras bases de datos lo que haremos será ejecutar un comando de invocación de elementos, lo que se hace de la siguiente forma:
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [(none)]> create database vehiculos;
Query OK, 1 row affected (1.091 sec)

MySQL [(none)]>show databases;
~~~
nos mostrará un listado en donde podemos ver las bases de datos que tenemos alojadas en el gestor de base de datos:

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
+--------------------+
8 rows in set (0.025 sec)
~~~

- ya que hemos verificado que la base de datos se encuentra en servicio haremos uso de ella con ayuda de los comandos de la terminal, en donde le indicaremos que queremos acceder a ella, pero aparte de eso que la queremos usar, lo haremos de la siguiente forma:

_nota:_ El comando le indica al sistema que accedemos a la base de datos 'vehiculos' y aparte de eso que la usaremos:

- "use vehiculos" le indica al sistema que accederemos a la base de batos vehiculos y por ende el estado de ninguno **[(none)]** cambiará al nombre de la base de datos que usaremos **[(vehiculos)]**
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [(none)]> use vehiculos;
Database changed
MySQL [vehiculos]>
~~~

***
</details>

***
<details>
    <summary>
        <h3>Creación de tablas al interior de la DB ("vehiculos")</h3>
    </summary>

***
- Al interior de nuestra base de datos  crearemos tablas en donde almacenaremos datos, pero por el momento no haremos eso, solo crearemos las tablas de datos. Para comenzar crearemos una tabla padre bajo el nombre de vendedores, para eso usaremos la siguiente instrucción

___Nota;___ Los siguientes procedimientos que veremos acontinuación se repetiran varias veces 
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> create table vendedores
    -> (
    -> IDvendedor int(10) not null auto_increment,
    -> P_Apellido varchar(50) not null,
    -> S_Apellido varchar(50) null,
    -> P_Nombre varchar(50) not null,
    -> S_Nombre varchar(50) null,
    -> telefono varchar(30) not null,
    -> f_nacimiento date not null,
    -> primary key (IDvendedor)
    -> );
Query OK, 0 rows affected, 1 warning (5.359 sec)

~~~
para poder verificar que nuestra tabla  a sido creada usaremos un comando de visualización de elementos muy similar al anterior, con la diferencia de que queremos ver la tablas al interior de la base de datos 
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos |
+---------------------+
| vendedores          |
+---------------------+
1 row in set (0.132 sec)
~~~
- Como siguiente paso creamos una tabla bajo el nombre de 'vehiculos', lo haremos de la misma forma en la que  creamos la tabla anterior
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> create table vehiculos
    -> (
    -> IDvehiculo varchar(10) not null,
    -> Vehiculo varchar(10) not null,
    -> Transmision varchar(50) not null,
    -> Precio float not null,
    -> primary key (IDvehiculo)
    -> );
Query OK, 0 rows affected (0.711 sec)
~~~
De igual forma que la anterior tendremos que verificar que nuestra tabla haya sido creada correctamente
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos |
+---------------------+
| vehiculos           |
| vendedores          |
+---------------------+
2 rows in set (0.020 sec)
~~~
- Como siguiente paso creamos una tabla bajo el nombre de 'clientes', lo haremos de la misma forma en la que  creamos la tabla anterior
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> create table clientes
    -> (
    -> IDcliente varchar(10) not null,
    -> P_Apellido varchar(10) not null,
    -> S_Apellido varchar(10) null,
    -> P_Nombre varchar(10) not null,
    -> S_Nombre varchar(10) null,
    -> Direccion varchar(50) not null,
    -> Barrio varchar(50) not null,
    -> Ciudad varchar(50) not null,
    -> Zona varchar(50) not null,
    -> Telefono varchar(50) not null,
    -> primary key (IDcliente)
    -> );
Query OK, 0 rows affected (1.158 sec)
~~~
De igual forma que la anterior tendremos que verificar que nuestra tabla haya sido creada correctamente
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos |
+---------------------+
| clientes            |
| vehiculos           |
| vendedores          |
+---------------------+
3 rows in set (0.022 sec)
~~~
- Como siguiente paso creamos nuetra ultima tabla bajo el nombre de 'ventas', lo haremos de la misma forma en la que  creamos la tabla anterior
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> create table ventas
    -> (
    -> IDventa varchar(10) not null,
    -> IDvendedor int(10) not null,
    -> IDvehiculo varchar(10) not null,
    -> IDcliente varchar(10) not null,
    -> foreign key (IDvendedor) REFERENCES Vendedores(IDvendedor),
    -> foreign key (IDvehiculo) REFERENCES Vehiculos(IDvehiculo),
    -> foreign key (IDCliente ) REFERENCES Clientes(IDCliente ),
    -> primary key (IDventa)
    -> );
Query OK, 0 rows affected, 1 warning (0.264 sec)
~~~
De igual forma que la anterior tendremos que verificar que nuestra tabla haya sido creada correctamente
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos |
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
        <h3>Modificación de las tablas de datos</h3>
    </summary>

***
- Comenzaremos por la modificación de las tablas de datos. La primera modificación que realizaremos será cambiar o reemplazar un valor.
Realizaremos esta modificación en la tabla de datos 'clientes' en donde cambiaremos el atributo 'zona' por el atributo 'localidad' para eso haremos el siguiente procedimiento

1. primero tenemos que verificar que la tabla de datos se encuentra en la base de datos, lo haremos por medio de la  instrucción que nos permite listar o mostrar las tablas de datos que se encuentran al interior de la base de datos
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos |
+---------------------+
| clientes            |
| vehiculos           |
| vendedores          |
| ventas              |
+---------------------+
4 rows in set (0.028 sec)
~~~

2.  ya que hemos verificado que la tabla de datos se encuentra disponible, lo que haremos es in al interior de esta tabla de datos para poder ver el atributo que quremos reemplazar, usaremos la siguiente instrucción.
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> explain clientes;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| IDcliente  | varchar(10) | NO   | PRI | NULL    |       |
| P_Apellido | varchar(10) | NO   |     | NULL    |       |
| S_Apellido | varchar(10) | YES  |     | NULL    |       |
| P_Nombre   | varchar(10) | NO   |     | NULL    |       |
| S_Nombre   | varchar(10) | YES  |     | NULL    |       |
| Direccion  | varchar(50) | NO   |     | NULL    |       |
| Barrio     | varchar(50) | NO   |     | NULL    |       |
| Ciudad     | varchar(50) | NO   |     | NULL    |       |
| Zona       | varchar(50) | NO   |     | NULL    |       |
| Telefono   | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
10 rows in set (0.362 sec)
~~~
3. ya hemos verificado que la tabla de datos exite y que el atributo que deseamos reemplazar se encuentra allí, asi que procedemos a cambiar ese atributo
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> alter table clientes CHANGE Zona Localidad varchar(50) not null;
Query OK, 0 rows affected (1.802 sec)
Records: 0  Duplicates: 0  Warnings: 0
~~~
inspeccionaremos la tabla de datos para poder verificar que si se ha reemplazado en el atributo
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> explain clientes;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| IDcliente  | varchar(10) | NO   | PRI | NULL    |       |
| P_Apellido | varchar(10) | NO   |     | NULL    |       |
| S_Apellido | varchar(10) | YES  |     | NULL    |       |
| P_Nombre   | varchar(10) | NO   |     | NULL    |       |
| S_Nombre   | varchar(10) | YES  |     | NULL    |       |
| Direccion  | varchar(50) | NO   |     | NULL    |       |
| Barrio     | varchar(50) | NO   |     | NULL    |       |
| Ciudad     | varchar(50) | NO   |     | NULL    |       |
| Localidad  | varchar(50) | NO   |     | NULL    |       |
| Telefono   | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
10 rows in set (0.024 sec)
~~~

***
- La siguiente modificación la realizaremos en la tabla de datos 'vehiculos', en esta tabla tendremos que añadir un atributo, para esto seguiremos las siguientes instrucciones

1. Verificaremos que la tabla de datos si existe en nuestra base de datos, lo haremos de misma forma en la que hicimos la anterior
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos |
+---------------------+
| clientes            |
| vehiculos           |
| vendedores          |
| ventas              |
+---------------------+
4 rows in set (0.013 sec)
~~~
2. ahora verificaremos que en atributo no esta en la tabla de datos 
~~~
MySQL [vehiculos]> explain vehiculos;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| IDvehiculo  | varchar(10) | NO   | PRI | NULL    |       |
| Vehiculo    | varchar(10) | NO   |     | NULL    |       |
| Transmision | varchar(50) | NO   |     | NULL    |       |
| Precio      | float       | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.001 sec)
~~~
3. Añadiremos el atributo por medio de la siguiente instrucción
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> alter table vehiculos add modelo int(4) not null;
Query OK, 0 rows affected, 1 warning (1.430 sec)
Records: 0  Duplicates: 0  Warnings: 1
~~~
4. para verificar que el atributo haya sido agregado usaremos la siguiente instrucción
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> explain vehiculos;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| IDvehiculo  | varchar(10) | NO   | PRI | NULL    |       |
| Vehiculo    | varchar(10) | NO   |     | NULL    |       |
| Transmision | varchar(50) | NO   |     | NULL    |       |
| Precio      | float       | NO   |     | NULL    |       |
| modelo      | int         | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
5 rows in set (0.013 sec)
~~~

***
- En la siguiente modificación  tendremos que eliminar un atributo al interior de la tabla de datos 'clientes', en donde  se nos pide que eliminemos el atributo 'telefono' que se encuentra al interior de esta tabla de datos

1. Tendremos que repetir los pasos anteriores, primero verificaremos que la tabla de datos se encuentra al interior de la base de datos
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos |
+---------------------+
| clientes            |
| vehiculos           |
| vendedores          |
| ventas              |
+---------------------+
4 rows in set (0.001 sec)
~~~
2. Ya que hemos verificado correctamente que la tabla de datos existe, lo que haremos será investigar que el atributo se encuentra al interior de la tabla 
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> explain clientes;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| IDcliente  | varchar(10) | NO   | PRI | NULL    |       |
| P_Apellido | varchar(10) | NO   |     | NULL    |       |
| S_Apellido | varchar(10) | YES  |     | NULL    |       |
| P_Nombre   | varchar(10) | NO   |     | NULL    |       |
| S_Nombre   | varchar(10) | YES  |     | NULL    |       |
| Direccion  | varchar(50) | NO   |     | NULL    |       |
| Barrio     | varchar(50) | NO   |     | NULL    |       |
| Ciudad     | varchar(50) | NO   |     | NULL    |       |
| Localidad  | varchar(50) | NO   |     | NULL    |       |
| Telefono   | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
10 rows in set (0.001 sec)

MySQL [vehiculos]>
~~~
3. Ya que sabemos que el atributo que estamos buscando si se encuentra al interior de la tabla de datos procedemos a eliminarlo con la siguiente  instrucción
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> alter table clientes drop telefono;
Query OK, 0 rows affected (0.402 sec)
Records: 0  Duplicates: 0  Warnings: 0
~~~
4. procedemos a comfirmar que efectivamente hemos eliminado este atributo 
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> explain clientes;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| IDcliente  | varchar(10) | NO   | PRI | NULL    |       |
| P_Apellido | varchar(10) | NO   |     | NULL    |       |
| S_Apellido | varchar(10) | YES  |     | NULL    |       |
| P_Nombre   | varchar(10) | NO   |     | NULL    |       |
| S_Nombre   | varchar(10) | YES  |     | NULL    |       |
| Direccion  | varchar(50) | NO   |     | NULL    |       |
| Barrio     | varchar(50) | NO   |     | NULL    |       |
| Ciudad     | varchar(50) | NO   |     | NULL    |       |
| Localidad  | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
9 rows in set (0.001 sec)
~~~

***
- La siguiente modificación nos permitirá crear una nueva tabla al interiro de nuestra base de datos. La tabla estará bajo el nombre de 'tipo_vehiculo', para crear una nueva tabla de datos tendremos que verificar que esta tabla de datos no esta incializada anteriormente
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos |
+---------------------+
| clientes            |
| vehiculos           |
| vendedores          |
| ventas              |
+---------------------+
4 rows in set (0.001 sec)
~~~
1. Ya que hemos verificado que la tabla de datos no exite, usaremos el procedimiento de creación de tablas de datos que hemos usado anteriormente
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> create table tipo_vehiculo(
    -> IDtipo_vehiculo int(10) not null,
    -> tipo_vehiculo varchar(20) not null,
    -> primary key(IDtipo_vehiculo)
    -> );
Query OK, 0 rows affected, 1 warning (0.207 sec)
~~~
2. Verificaremos que la tabla de datos ha sido creada correctamente en nuestra base de datos
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos |
+---------------------+
| clientes            |
| tipo_vehiculo       |
| vehiculos           |
| vendedores          |
| ventas              |
+---------------------+
5 rows in set (0.001 sec)
~~~

***
- Para esta modificación en una base de datos implementaremos una llave forenea o foreign key a una tabla de datos , en este caso lo que haremos seá añadir un atributo a una tabla de datos seguido de esto añadiremos el elemento como llaver foranea.

1. Verificaremos que la tabla 'vehiculo' no presenta ni el elemeto ni la llave foranea que añadiremos, para hacer esto tendremos que visualizar el contenido de la tabla con la siguiente instrucción
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> explain vehiculos;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| IDvehiculo  | varchar(10) | NO   | PRI | NULL    |       |
| Vehiculo    | varchar(10) | NO   |     | NULL    |       |
| Transmision | varchar(50) | NO   |     | NULL    |       |
| Precio      | float       | NO   |     | NULL    |       |
| modelo      | int         | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
5 rows in set (0.001 sec)
~~~ 
2. El elemento 'IDtipo_vehiculo int(10) not null;' y la llave foranea 'foreign key(IDtipo_vehiculo)' no se encuentran en la tabla de datos, para poder añadir la llave foranea es necesario agregar el primer elemento  que hemos mencionado para esto usaremos el comando de añadir de la siguiente forma
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> alter table vehiculos add IDtipo_vehiculo int(10) not null;
Query OK, 0 rows affected, 1 warning (0.802 sec)
Records: 0  Duplicates: 0  Warnings: 1
~~~
3. Verificaremos que el atributo o elemento ha sido agregado correctamente
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> explain vehiculos;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| IDvehiculo      | varchar(10) | NO   | PRI | NULL    |       |
| Vehiculo        | varchar(10) | NO   |     | NULL    |       |
| Transmision     | varchar(50) | NO   |     | NULL    |       |
| Precio          | float       | NO   |     | NULL    |       |
| modelo          | int         | NO   |     | NULL    |       |
| IDtipo_vehiculo | int         | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
6 rows in set (0.018 sec)
~~~
4. Ahora que ya hemos agregado el elemento que será nuestra llaver foranea es momento de refenciar la tabla de donde proviene este elemento la cual es 'tipo_vehiculo' que ta la habiamos creado anteriormente, para ejecutar está acción lo haremos con la siguiente linea de comandos
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> alter table vehiculos add foreign key(IDtipo_vehiculo) REFERENCES tipo_vehiculo(IDtipo_vehiculo);
Query OK, 0 rows affected (0.566 sec)
Records: 0  Duplicates: 0  Warnings: 0
~~~
5. Ya hemos agregago este elemento como una llave foranea, asi que verificaremos que este elemento sea una llaver foranea con la siguiente instrucción 
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> explain vehiculos;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| IDvehiculo      | varchar(10) | NO   | PRI | NULL    |       |
| Vehiculo        | varchar(10) | NO   |     | NULL    |       |
| Transmision     | varchar(50) | NO   |     | NULL    |       |
| Precio          | float       | NO   |     | NULL    |       |
| modelo          | int         | NO   |     | NULL    |       |
| IDtipo_vehiculo | int         | NO   | MUL | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
6 rows in set (0.001 sec)
~~~
***Efectivamente nuestro elemento paso a ser una llaver foranea***

***
- para esta modificación a nuestra base de datos 'vehiculos' cambiaremos el nombre de un atributo al interior de una tabla de datos .

1. Verficaremos que el atributo 'ID_campo' nose encuentra en la tabla de datos 'ventas' en su defecto encotraremos el atributo 'IDvehiculo' que será el atributo que estaremos cambiando de nombre
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> explain ventas;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| IDventa    | varchar(10) | NO   | PRI | NULL    |       |
| IDvendedor | int         | NO   | MUL | NULL    |       |
| IDvehiculo | varchar(10) | NO   | MUL | NULL    |       |
| IDcliente  | varchar(10) | NO   | MUL | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.002 sec)
~~~
1. para poder cambiar el nombre de este atributo usaremos el comando de CHANGE o cambio que ya hemos usado previamente
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> alter table ventas CHANGE IDvehiculo ID_campo varchar(10) not null;
Query OK, 0 rows affected (0.783 sec)
Records: 0  Duplicates: 0  Warnings: 0
~~~
2. Verificaremos que realmente se ha realizado el cambio en nuestra tabla de datos
~~~
MySQL [vehiculos]> explain ventas;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| IDventa    | varchar(10) | NO   | PRI | NULL    |       |
| IDvendedor | int         | NO   | MUL | NULL    |       |
| ID_campo   | varchar(10) | NO   | MUL | NULL    |       |
| IDcliente  | varchar(10) | NO   | MUL | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.001 sec)
~~~
***Efectivamente el cambio de realizo con exito***

***
-para la siguiente modificación lo que haremos sera un cambio en el tamaño del atributo 'direccion' que se encuentra en la tabla de datos 'clientes',para esto tendremos que verificar que el atributo 'direccion'se encuentra en la tabla de datos con un tamaño diferente al aque tenemos que cambiar, para esto seguiremos las siguientes instrucciones
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> explain clientes;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| IDcliente  | varchar(10) | NO   | PRI | NULL    |       |
| P_Apellido | varchar(10) | NO   |     | NULL    |       |
| S_Apellido | varchar(10) | YES  |     | NULL    |       |
| P_Nombre   | varchar(10) | NO   |     | NULL    |       |
| S_Nombre   | varchar(10) | YES  |     | NULL    |       |
| Direccion  | varchar(50) | NO   |     | NULL    |       |
| Barrio     | varchar(50) | NO   |     | NULL    |       |
| Ciudad     | varchar(50) | NO   |     | NULL    |       |
| Localidad  | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
9 rows in set (0.019 sec)
~~~
1. ya que hemos verificado que el atriburo 'Dirreccion' se encuentra con un tamaño de (50) lo cambiaremos con la siguiente linea de comandos
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> alter table clientes change Direccion Direccion varchar(100) not null;
Query OK, 0 rows affected (0.034 sec)
Records: 0  Duplicates: 0  Warnings: 0
~~~
2. verificaremos que el tamaño del atributo 'Direccion' en la tabla 'clientes' haya cambiado el tamaño del atirbuto,
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> explain clientes;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| IDcliente  | varchar(10)  | NO   | PRI | NULL    |       |
| P_Apellido | varchar(10)  | NO   |     | NULL    |       |
| S_Apellido | varchar(10)  | YES  |     | NULL    |       |
| P_Nombre   | varchar(10)  | NO   |     | NULL    |       |
| S_Nombre   | varchar(10)  | YES  |     | NULL    |       |
| Direccion  | varchar(100) | NO   |     | NULL    |       |
| Barrio     | varchar(50)  | NO   |     | NULL    |       |
| Ciudad     | varchar(50)  | NO   |     | NULL    |       |
| Localidad  | varchar(50)  | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
9 rows in set (0.027 sec)
~~~ 

***
- para la siguiente modificación se nos pide modificar el tipo de dato (varchar) que se encuentra presente en el atributo 'vehiculo' en la tabla de datos 'vehiculos'

1. Verficaremos el tipo de dato que se encuentra en el atributo 'vehiculo' en la tabla de datos 'vehiculos'
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> explain vehiculos;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| IDvehiculo      | varchar(10) | NO   | PRI | NULL    |       |
| Vehiculo        | varchar(10) | NO   |     | NULL    |       |
| Transmision     | varchar(50) | NO   |     | NULL    |       |
| Precio          | float       | NO   |     | NULL    |       |
| modelo          | int(4)      | NO   |     | NULL    |       |
| IDtipo_vehiculo | int(10)     | NO   | MUL | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
6 rows in set (0.036 sec)
~~~
ya que hemos verificado que el tipo de dato no es el que queremos que tenga lo que haremos será cambiarlo por el tipo de datos que estamos buscando, lo haremos con la siguiente instrucción
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> alter table vehiculos change vehiculo vehiculo text(10) not null;
Query OK, 0 rows affected (0.058 sec)
Records: 0  Duplicates: 0  Warnings: 0
~~~
2. verificaremos que el cambio se haya realizado exitosamente
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> explain vehiculos;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| IDvehiculo      | varchar(10) | NO   | PRI | NULL    |       |
| vehiculo        | tinytext    | NO   |     | NULL    |       |
| Transmision     | varchar(50) | NO   |     | NULL    |       |
| Precio          | float       | NO   |     | NULL    |       |
| modelo          | int(4)      | NO   |     | NULL    |       |
| IDtipo_vehiculo | int(10)     | NO   | MUL | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
6 rows in set (0.025 sec)
~~~

***
- En esta modificación relaizaremos la eliminación de dos atributos (barrio, localidad) que se encuentran presentes en la tabla de datos 'clientes'

  1. verificaremos que los atributos (barrio y localidad) se encuentran disponidles al interior de la base de datos 'clientes'
 ~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> explain clientes;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| IDcliente  | varchar(10)  | NO   | PRI | NULL    |       |
| P_Apellido | varchar(10)  | NO   |     | NULL    |       |
| S_Apellido | varchar(10)  | YES  |     | NULL    |       |
| P_Nombre   | varchar(10)  | NO   |     | NULL    |       |
| S_Nombre   | varchar(10)  | YES  |     | NULL    |       |
| Direccion  | varchar(100) | NO   |     | NULL    |       |
| Barrio     | varchar(50)  | NO   |     | NULL    |       |
| Ciudad     | varchar(50)  | NO   |     | NULL    |       |
| Localidad  | varchar(50)  | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
9 rows in set (0.022 sec)

MariaDB [vehiculos]>
 ~~~
 2. El primer cambio que realizaremos será la eliminación del atributo 'barrio' y seguido de esto eliminaremos el atributo 'localidad' lo haremos de la siguiente forma
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> alter table clientes drop barrio;
Query OK, 0 rows affected (0.022 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [vehiculos]> alter table clientes drop localidad;
Query OK, 0 rows affected (0.068 sec)
Records: 0  Duplicates: 0  Warnings: 0
~~~
 3. verificaremos que los cambios que hemos realizado se hayan realizado correctamente
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> explain clientes;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| IDcliente  | varchar(10)  | NO   | PRI | NULL    |       |
| P_Apellido | varchar(10)  | NO   |     | NULL    |       |
| S_Apellido | varchar(10)  | YES  |     | NULL    |       |
| P_Nombre   | varchar(10)  | NO   |     | NULL    |       |
| S_Nombre   | varchar(10)  | YES  |     | NULL    |       |
| Direccion  | varchar(100) | NO   |     | NULL    |       |
| Ciudad     | varchar(50)  | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
7 rows in set (0.025 sec)
~~~

***
- En la siguiente modificación añadiremos dos columnas nuevas a la tabla de datos 'clientes', para esto verificaremos primero el estado de la tabla de datos

~~~
 Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> explain clientes;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| IDcliente  | varchar(10)  | NO   | PRI | NULL    |       |
| P_Apellido | varchar(10)  | NO   |     | NULL    |       |
| S_Apellido | varchar(10)  | YES  |     | NULL    |       |
| P_Nombre   | varchar(10)  | NO   |     | NULL    |       |
| S_Nombre   | varchar(10)  | YES  |     | NULL    |       |
| Direccion  | varchar(100) | NO   |     | NULL    |       |
| Ciudad     | varchar(50)  | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
7 rows in set (0.025 sec)
  ~~~

ya que hemos verificado el estado de la tabla 'clientes' lo que aremos sera añadir los nuevos atributos 'eps' y 'cantidad_hijos', lo realizaremos de la siguiente forma
~~~
 Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> alter table clientes add eps varchar(50) not null;
Query OK, 0 rows affected (0.023 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [vehiculos]> alter table clientes add cantidad_hijos int(30)not null;
Query OK, 0 rows affected (0.024 sec)
Records: 0  Duplicates: 0  Warnings: 0
~~~
verificaremos que el cambio se haya realizado exitosamente
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> explain clientes;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| IDcliente      | varchar(10)  | NO   | PRI | NULL    |       |
| P_Apellido     | varchar(10)  | NO   |     | NULL    |       |
| S_Apellido     | varchar(10)  | YES  |     | NULL    |       |
| P_Nombre       | varchar(10)  | NO   |     | NULL    |       |
| S_Nombre       | varchar(10)  | YES  |     | NULL    |       |
| Direccion      | varchar(100) | NO   |     | NULL    |       |
| Ciudad         | varchar(50)  | NO   |     | NULL    |       |
| eps            | tinytext (50)  | NO   |     | NULL    |       |
| cantidad_hijos | int(30)      | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
9 rows in set (0.027 sec)
~~~

***
- En la siguiente modificación cambiaremos el nombre de la tabla 'vehiculos' por el nombre 'automores'
 1. primero verificaremos el estado de las tablas en la base de datos
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos |
+---------------------+
| clientes            |
| tipo_vehiculo       |
| vehiculos           |
| vendedores          |
| ventas              |
+---------------------+
5 rows in set (0.001 sec)
~~~
ya que hemos verificado que la tabla 'vehiculos' se encuentra en la base de datos lo que haremos será cambiar el nombre de la tabla de datos por 'automores' y lo haremos de la siguiente forma
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> alter table vehiculos rename automores;
Query OK, 0 rows affected (0.048 sec)
~~~
verificaremos que el cambio se haya realizado correctamente
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos |
+---------------------+
| automores           |
| clientes            |
| tipo_vehiculo       |
| vendedores          |
| ventas              |
+---------------------+
5 rows in set (0.001 sec)
~~~

***
- para la siguiente modificación eliminaremos la tabla 'ventas' de la base de datos

 1. verificaremos que la tabla se encuentra en la base de datos
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos |
+---------------------+
| automores           |
| clientes            |
| tipo_vehiculo       |
| vendedores          |
| ventas              |
+---------------------+
5 rows in set (0.001 sec)
~~~
Ahora que hemos verificado el estado de la tabla 'ventas' procedemos a eliminar esta tabla
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> drop table ventas;
Query OK, 0 rows affected (0.012 sec)
~~~
Ahora verrificaremos el estado de la base de datos
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos |
+---------------------+
| automores           |
| clientes            |
| tipo_vehiculo       |
| vendedores          |
+---------------------+
4 rows in set (0.001 sec)
~~~

***
- Para esta modificación agregaremos una nueva tabla de datos con el nombre de 'factura'
 1. para esto verificaremos el estado de la base de datos y que no se encuentra la tabla de datos 
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MariaDB [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos |
+---------------------+
| automores           |
| clientes            |
| tipo_vehiculo       |
| vendedores          |
+---------------------+
4 rows in set (0.001 sec)
~~~
ahora crearemos la nueva tabla de datos al interior de nustra base de datos

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> create table facturas
    ->      (
    ->      IDfactura varchar(10) not null,
    ->      IDvendedor int(10) not null,
    ->      IDvehiculo varchar(10) not null,
    ->      IDcliente varchar(10) not null,
    ->      foreign key (IDvendedor) REFERENCES vendedores(IDvendedor),
    ->      foreign key (IDvehiculo) REFERENCES automotores(IDvehiculo),
    ->      foreign key (IDcliente) REFERENCES cientes(IDCliente),
    ->      primary key (IDfactura)
    ->  );
Query OK, 0 rows affected, 1 warning (0.095 sec)
~~~
verificaremos que hemos realizado la moidioficación de forma exitosa
~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

MySQL [vehiculos]> show tables;
+---------------------+
| Tables_in_vehiculos |
+---------------------+
| automores           |
| clientes            |
| facturas            |
| tipo_vehiculo       |
| vendedores          |
+---------------------+
5 rows in set (0.001 sec)
~~~

 ___Nuestro cambio se ha realizado de forma exitosa___

 </details>

***
### Elaborado por: Brayan Andres Hernandez Colon
