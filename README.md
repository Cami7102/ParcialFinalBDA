# ParcialFinalBDA
Este repositorio tiene la finalidad de almacenar descripcion e información de una base de datos NoSQL, entidades, diagrama UML, ejemplos y requisitos tecnicos para la instalcion y ejecucion de este. 

## **CINTILLOS PARA MASCOTAS**

### **Descripcion**
Esta base de datos NoSQL esta diseñada a requerimiento de una convocatorio lanzada por el Gobierno Autonomo Municipal de La Paz donde buscan la adquisición de cintillos de identificación para la campaña de vacunacion antirabica canina, a esta adquisicion se crea esta base de datos como requerimiento de la clase de Base de Datos Avanzada. 
En esta base de datos se detallara toda la informacion importante para la adquisicion de estos cintillos como: informacion de los productos, compra, detalle de la compra, solicitudes, detalle de esta solicitud, empleados, proveedores, propietarios, mascotas, vacunacion y vacunas. A continuacion se mostrara los atributos de cada uno de forma organizada.

### **Consultas**
[label](consultas.txt)

### **Entidades**
Entidades analizadas de las consultas:
![Alt text](ProyectoFinal.png)

### **Diagrama UML**
El diagrama esta diseñado para ser no relacional:
![Alt text](ProyectoFinalUML.png)

### **Ejemplos en JSON**
[label](final-nodejs)

### **Requisistos tecnicos**
PASO #1
Inicialmente necesitamos instalar linux en la pc o laptop con el siguiente comando: 

*wsl --install*

PASO #2
Seguido instalas Debian o Ubuntu con el siguiente comando:

*wsl --install -d Debian*

PASO #3
Instalamos Docker Desktop por el navegador

PASO #4
Por defecto ya viene instalado docker-compose y para verificar escribe el siguiente comando:

*docker-compose -v*

PASO #5
Creamos la carpeta .yml con el nombre de su preferencia (ej. mysql.yml). Adjunto link con tutorial mas preciso.

- https://www.arteco-consulting.com/post/instalar-mysql-con-docker

PASO #6
Levantamos docker compose que en mi caso seria con este comando:

*docker-compose -f /home/ximeguz/ParcialFinalBDA/parcial-final.yml up*

(revisar bien las rutas para no tener fallos en la ejecucion)

PASO #7
Debemos crear las tablas y añadir la informacion necesaria, para esto debemos crear la carpeta *scripts* y dentro el archivo *init.sql* donde incluiremos las tablas, el contenido de estas y ejeplos en JSON


### **Como levantar localmente?**
- Para ejecutar docker-compose:

*docker-compose -f /home/ximeguz/ParcialFinalBDA/parcial-final.yml up*

- Para dar de baja docker-compose:

*docker-compose -f /home/ximeguz/ParcialFinalBDA/parcial-final.yml down*

- Dentro de Docker Desktop ejecutar el comando siguiente:

*mysql -u root -pcxgs7102*

(Donde cxgs7102 es la contraseña para el master)

- Dentro de mysql ejecutar el siguiente comando para ver si creo la base de datos:

*show databases;*

### **Archivos Complementarios**
https://drive.google.com/drive/folders/1xLM0L_EntP_l_YM3nBwajYN-IaOH-GLt?usp=sharing
