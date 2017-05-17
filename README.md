# tocontac
Contacts managment with sqlite3.

Este programa esta diseñado intentando mantener tres partes separadas con la intension de poder reutilizar el código en otras aplicaciones similares.
## 1 Parte del las funciones
Las funciones mas generales y comunes a los programas de ABM (Altas bajas y modificaciones) se agrupan en varios módulos de funciones:
# MData

# MSys
# MUtility
# MValidator

## 2 Parte del módulo de inicio
En este módulo se pone todo lo necesario para preparar el programa, es decir se llaman todas la funciones necesarias para cargar las variables globales que estaran en este módulo y podran ser utilizadas y modificadas por otras clases.

# Variables globales

stxProgram

Esta Variable tiene todos los parametros del prgrama en forma de matriz de texto

0 Database Engine
1 Database Host
2 Database Name
3 Database Path
4* Current Entity (table or view)
5 Sentencia SQL
6 Window [normal,fited]
7 Last directory for import
8 Last directory for export
9* IDE o Gambas
10 Export Directory [user.home]
11 Export Separation character ["\t"]
12 Export Headers [yes,no]
13 Import Directory
14 Import Separation character ["\t"]
15 Import Headers [yes,no] no tiene sentido
16* Show-Filter-Bar [yes,no]
17* Show-Order-Bar [yes,no]

stxDBEngines
Es una matriz de texto donde se listan los motores de bases de datos soportados por gambas. Los motores estan listados en un archivo de texto llamado engines.txt
0 postgresql
1 mysql
2 sqlite2
3 sqlite3
4 odbc


MData.SqlMake(stxProgram[4], stxViewFields)

Importación de datos

Nombre: contactname
Apellido: contactfamily
Apodo: contactnik
Cumpleaños: contactbirth
Organización: contactorg
Tel. fijo: contactfix
Tel. Móvil: contactmov
Email: contactemail
País: contactcountry

