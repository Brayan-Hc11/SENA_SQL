# Uso de la Base de Datos a través de la sentencias DDM(SQL)

En el proyecto se evidencia el uso y la construcción de la base de datos a través del uso de las sentencias DDLy DML(SQL) o Schema Validation (Mongo DB), revisando existencia de datos de prueba insertados, joins ,consultas y subconsultas o CRUD Operations y aggregations.

***
## Actividad de desarrollo 

Elabore la Base de Datos de su proyecto usando unicamente sentencias de SQL

***
## _Proceso de elaboración_

<details><summary>

### Elaboración de la Data Base (DB)</summary>


Elaboraremos la base de datos para el proyecto formativo BlackLabel, utilizando unicamente las sentencias SQL aprendidas hasta ahora. Para eso estaremos ejecutando nuestras sentencias desdel el gestor de base de datos WAMPP 64 para esto es requerido tenerlo instalado previamente.

#### _Construcción_ 
- En nuestra consola de comandos o terminal, nos dirijiremos a nuestro aunidad de almacenamiento principal, con el objetivo de almacenar nuestra base de datos, en nuestro caso usaremos el disco local C como unidad de almacenamiento.

~~~
Microsoft Windows [Versión 10.0.19044.3086]
(c) Microsoft Corporation. Todos los derechos reservados.

C:\xampp\mysql\bin> mysql -h localhost -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MySQL connection id is 66
Server version: 8.0.31 MySQL Community Server - GPL

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MySQL [(none)]>

~~~

***
- Ya al interior del gestor de base de datos lo que haremso sera empezar a construi nuestra base de datos la cual tendrá el nombre de ("BlacklableProyect.sql").

~~~
MySQL [(none)]> create database BlacklabelProyect;
Query OK, 1 row affected (0.028 sec)
~~~

***
- verificaremos que nuestra base de datos ha sido creada exitosamente.

~~~
MySQL [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| blacklabel(1)      |
| blacklabelproyect  |
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
11 rows in set (0.018 sec)
~~~

***
- Seguido de esto procedemos a usar nuestra base de datos para la crear nuestras tablas de datos

~~~
MySQL [(none)]> use blacklabelproyect;
Database changed
MySQL [blacklabelproyect]>
~~~

***
- ya que nos encontramos al interior de nuestra base de datos lo que haremos será crear nuestra primera tabla de datos en donde almacenaremos todos los datos de los usuarios, la tabla tendra por nombre 'Usuarios'

~~~
MySQL [blacklabelproyect]> Create table Usuarios(
    -> ID_Usuario int(10) not null auto_increment,
    -> Documento int(10) not null,
    -> NombreUsuario varchar(60) not null,
    -> Contraseña varchar(30) not null,
    -> Correo varchar(60) not null,
    -> primary key(ID_Usuario)
    ->   );
Query OK, 0 rows affected, 2 warnings (0.135 sec)
~~~
### Vista al interior de la tabla
~~~
MySQL [blacklabelproyect]> explain Usuarios;
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| ID_Usuario    | int         | NO   | PRI | NULL    | auto_increment |
| Documento     | int         | NO   |     | NULL    |                |
| NombreUsuario | varchar(60) | NO   |     | NULL    |                |
| Contraseña    | varchar(30) | NO   |     | NULL    |                |
| Correo        | varchar(60) | NO   |     | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+
5 rows in set (0.001 sec)
~~~


***La tabla contiene los atributos:***
    
- ID_Usuario 
- Documento
- NombreUsuario
- Contraseña 
- Correo
- Llave primaria
- Llaves foreneas aún no incluidas __(ID_Rol y ID_Estado)__

***
- Construiremos la siguiente tabla de datos en donde se almacenarán los roles que se llegen a presentar al interior del sistema de información.

~~~
MySQL [blacklabelproyect]> Create table Roles(
    -> ID_Rol int(10) not null auto_increment,
    -> Rol text(60) not null,
    -> primary key(ID_Rol)
    -> );
Query OK, 0 rows affected, 1 warning (0.094 sec)
~~~
### Vista al interior de la tabla

~~~
MySQL [blacklabelproyect]> explain Roles;
+--------+----------+------+-----+---------+----------------+
| Field  | Type     | Null | Key | Default | Extra          |
+--------+----------+------+-----+---------+----------------+
| ID_Rol | int      | NO   | PRI | NULL    | auto_increment |
| Rol    | tinytext | NO   |     | NULL    |                |
+--------+----------+------+-----+---------+----------------+
2 rows in set (0.001 sec)
~~~

***La tabla de datos contiene los atributos:***
-   ID_Rol
-   Rol

***
- Construiremos la siguiente tabla de datos en donde se almacenaran los estados que se presentarán en los usuairos y los productos dentro del sistema de información 

~~~
MySQL [blacklabelproyect]> Create table Estados(
    -> ID_Estado varchar(60) not null,
    -> Estados varchar (60) not null
    -> );
Query OK, 0 rows affected (0.100 sec)
~~~
### Vista al interior de la tabla

~~~
MySQL [blacklabelproyect]> explain Estados;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| ID_Estado | varchar(60) | NO   |     | NULL    |       |
| Estados   | varchar(60) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.001 sec)
~~~

***La taba contiene los atributos de:***
- ID_Estado
- Estado

***
- Construiremos la siguiente tabla de datos en donde se almacenarán las distintas categorias dentro del sistema de información

~~~
MySQL [blacklabelproyect]> Create table Categorias(
    -> ID_Categoria int(30) not null auto_increment,
    -> Categoria varchar(60) not null,
    -> primary key(ID_Categoria)
    -> );
Query OK, 0 rows affected, 1 warning (0.040 sec)

MySQL [blacklabelproyect]>
~~~
### Vista al interior de la tabla

~~~
MySQL [blacklabelproyect]> explain Categorias;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| ID_Categoria | int         | NO   | PRI | NULL    | auto_increment |
| Categoria    | varchar(60) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
2 rows in set (0.001 sec)
~~~

***La tabla contiene los atributos de:***
- ID_Categoria
- Categoria
- Llave primaria

***
-  Construiremos la siguiente tabla de datos en donde se almacenarán las distintos productos dentro del sistema de información

~~~
MySQL [blacklabelproyect]> Create table Productos(
    -> ID_Producto int(20) not null auto_increment,
    -> NombreProducto varchar(60) not null,
    -> CodigoProducto int (30) not null,
    -> PrecioProducto varchar(60) not null,
    -> primary key(ID_Producto)
    -> );
Query OK, 0 rows affected, 2 warnings (0.029 sec)

MySQL [blacklabelproyect]>
~~~
### Vista al interior de la tabla 

~~~
MySQL [blacklabelproyect]> explain Productos;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| ID_Producto    | int         | NO   | PRI | NULL    | auto_increment |
| NombreProducto | varchar(60) | NO   |     | NULL    |                |
| CodigoProducto | int         | NO   |     | NULL    |                |
| PrecioProducto | varchar(60) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+
4 rows in set (0.001 sec)
~~~

***La tabla de datos presenta los atributos de:***
-   ID_Producto
-   NombreProducto
-   CodigoProducto
-   PrecioProducto
-   Llave pirmaria 
-   Llaves foraneas aun no incluidas (ID_Estado,ID_Catalogo y Documento)

***
-  Construiremos la siguiente tabla de datos en donde se almacenarán los distintos catalogos dentro del sistema de información.

~~~
MySQL [blacklabelproyect]> Create table Catalogos(
    -> ID_Catalogo int(10) not null auto_increment,
    -> Catalogo varchar(60) not null,
    -> primary key(ID_Catalogo)
    -> );
Query OK, 0 rows affected, 1 warning (0.022 sec)

MySQL [blacklabelproyect]>
~~~
### Vista al interior de la tabla

~~~
MySQL [blacklabelproyect]> explain Catalogos;
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| ID_Catalogo | int         | NO   | PRI | NULL    | auto_increment |
| Catalogo    | varchar(60) | NO   |     | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+
2 rows in set (0.001 sec)
~~~

***La tabla de datos presenta los atributos de:***
-   ID_Catalogo
-   Catalogo 
-   Llave primaria

***
-  Construiremos la siguiente tabla de datos en donde se almacenarán los distintos permisos  dentro del sistema de información.

~~~
MySQL [blacklabelproyect]> Create table Permisos(
    -> ID_permiso int(10) not null auto_increment,
    -> Permiso varchar(60) not null,
    -> primary key(ID_Permiso)
    -> );
Query OK, 0 rows affected, 1 warning (0.035 sec)

MySQL [blacklabelproyect]>
~~~
### Vista al interior de la tabla

~~~
MySQL [blacklabelproyect]> explain Permisos;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| ID_permiso | int         | NO   | PRI | NULL    | auto_increment |
| Permiso    | varchar(60) | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
2 rows in set (0.001 sec)
~~~


***La tabla de datos presenta los atributos de:***
-   ID_Permiso
-   Permiso
-   Llave primaria
-   Llave forenea aun no incluidas (ID_Documento y ID_Rol)

***
-  Construiremos la siguiente tabla de datos en donde se almacenarán los distintos productos y cantidades de estos dentro del sistema de información.

~~~
MySQL [blacklabelproyect]> Create table CarritoCompras(
    -> Cantidadproductos int(20) not null,
    -> Totalproductos int (30) not null
    -> );
Query OK, 0 rows affected, 2 warnings (0.121 sec)
~~~
### Vista al interior de la tabla

~~~
MySQL [blacklabelproyect]> explain CarritoCompras;
+-------------------+------+------+-----+---------+-------+
| Field             | Type | Null | Key | Default | Extra |
+-------------------+------+------+-----+---------+-------+
| Cantidadproductos | int  | NO   |     | NULL    |       |
| Totalproductos    | int  | NO   |     | NULL    |       |
+-------------------+------+------+-----+---------+-------+
2 rows in set (0.001 sec)
~~~
***La tabla de datos presenta los atributos de:***
-   Cantidadproductos 
-   Totalproductos
-   Llaves foreneas aun no includas (ID_productos y PrecioProductos)

***
## Vista general de las tablas en la DB

~~~
MySQL [blacklabelproyect]> show tables;
+-----------------------------+
| Tables_in_blacklabelproyect |
+-----------------------------+
| carritocompras              |
| catalogos                   |
| categorias                  |
| estados                     |
| permisos                    |
| productos                   |
| roles                       |
| usuarios                    |
+-----------------------------+
8 rows in set (0.001 sec)
~~~

***
### Incluimos las llaves foraneas 
Las primeras llaves foraneas las en contramos en la tabla de datos Usuarios 

**Estado inicial de la tabla**
~~~
MySQL [blacklabelproyect]> explain Usuarios;
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| ID_Usuario    | int         | NO   | PRI | NULL    | auto_increment |
| Documento     | int         | NO   |     | NULL    |                |
| NombreUsuario | varchar(60) | NO   |     | NULL    |                |
| Contraseña    | varchar(30) | NO   |     | NULL    |                |
| Correo        | varchar(60) | NO   |     | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+
5 rows in set (0.001 sec)
~~~

- Incluimos las llaves foraneas

~~~
MySQL [blacklabelproyect]> explain Usuarios;
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| ID_Usuario    | int         | NO   | PRI | NULL    | auto_increment |
| Documento     | int         | NO   |     | NULL    |                |
| NombreUsuario | varchar(60) | NO   |     | NULL    |                |
| Contraseña    | varchar(30) | NO   |     | NULL    |                |
| Correo        | varchar(60) | NO   |     | NULL    |                |
| ID_Estado     | varchar(60) | NO   | MUL | NULL    |                |
| ID_Rol        | int         | NO   | MUL | NULL    |                |
| ID_Permiso    | int         | NO   | MUL | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+
8 rows in set (0.001 sec)
~~~

***
Las siguientes llaves foraneas las encontramos en la tabla de datos Productos

**Estado inicial de la tabla**

~~~
MySQL [blacklabelproyect]> explain Productos;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| ID_Producto    | int         | NO   | PRI | NULL    | auto_increment |
| NombreProducto | varchar(60) | NO   |     | NULL    |                |
| CodigoProducto | int         | NO   |     | NULL    |                |
| PrecioProducto | varchar(60) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+
4 rows in set (0.001 sec)
~~~

-   Añadimos las llaves foreneas

~~~
MySQL [blacklabelproyect]> explain Productos;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| ID_Producto    | int         | NO   | PRI | NULL    | auto_increment |
| NombreProducto | varchar(60) | NO   |     | NULL    |                |
| CodigoProducto | int         | NO   |     | NULL    |                |
| PrecioProducto | varchar(60) | NO   |     | NULL    |                |
| ID_Estado      | varchar(60) | NO   | MUL | NULL    |                |
| ID_Catalogo    | int         | NO   | MUL | NULL    |                |
| Documento      | int         | NO   | MUL | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+
7 rows in set (0.001 sec)
~~~

***
Las siguientes llaves foraneas las encontramos en la tabla de datos 

**Estado inicial de la tabla**

~~~
MySQL [blacklabelproyect]> explain Permisos;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| ID_permiso | int         | NO   | PRI | NULL    | auto_increment |
| Permiso    | varchar(60) | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
2 rows in set (0.001 sec)
~~~
-   Añadimos las llaves foraneas 

~~~
MySQL [blacklabelproyect]> explain Permisos;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| ID_permiso | int         | NO   | PRI | NULL    | auto_increment |
| Permiso    | varchar(60) | NO   |     | NULL    |                |
| Documento  | int         | NO   | MUL | NULL    |                |
| ID_Rol     | int         | NO   | MUL | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
4 rows in set (0.018 sec)
~~~

***
Las siguientes llaves foraneas las encontramos en la tabla de datos 

**Estado inicial de la tabla**

~~~
MySQL [blacklabelproyect]> explain CarritoCompras;
+-------------------+------+------+-----+---------+-------+
| Field             | Type | Null | Key | Default | Extra |
+-------------------+------+------+-----+---------+-------+
| Cantidadproductos | int  | NO   |     | NULL    |       |
| Totalproductos    | int  | NO   |     | NULL    |       |
+-------------------+------+------+-----+---------+-------+
2 rows in set (0.001 sec)
~~~

-   Añadimos las llaves foraneas

~~~
MySQL [blacklabelproyect]> explain CarritoCompras;
+-------------------+-------------+------+-----+---------+-------+
| Field             | Type        | Null | Key | Default | Extra |
+-------------------+-------------+------+-----+---------+-------+
| Cantidadproductos | int         | NO   |     | NULL    |       |
| Totalproductos    | int         | NO   |     | NULL    |       |
| PrecioProducto    | varchar(60) | NO   | MUL | NULL    |       |
| ID_Producto       | int         | NO   | MUL | NULL    |       |
+-------------------+-------------+------+-----+---------+-------+
4 rows in set (0.001 sec)
~~~


</details>