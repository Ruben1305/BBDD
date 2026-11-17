# BASE DE DATOS DE LA EMPRESA #

## PASO A PASO PARA CREAR TODAS LAS TABLAS ##

### CREAR TABLA LLIBRE ###
``` console
CREATE TABLE llibre(
	isbn integer primary key
); 
```

### CREAR TABLA EXEMPLAR ###

``` console
CREATE TABLE exemplar(
 
	num integer primary key,
	isbn_llibre integer,
	CONSTRAINT no_llibre 
 
	FOREIGN KEY(isbn_llibre) REFERENCES llibre(isbn)
	ON UPDATE CASCADE ON DELETE SET NULL
);
```

### CREAR TABLA COTXE ###

``` console
CREATE TABLE cotxe(

        mat TEXT PRIMARY KEY,
        model TEXT,
        marca TEXT
);

```
### CREAR TABLA EMPLEAT ###

``` console
CREATE TABLE empleat(

dni TEXT primary key,
nom TEXT,
tlf INTEGER
);

```
### CREAR TABLA PARENTESC ###

``` console
CREATE TABLE parentesc(

dni1 TEXT,
dni2 TEXT,
        
CONSTRAINT nodni1 FOREIGN KEY(dni1)
REFERENCES empleat(dni)
ON UPDATE CASCADE ON DELETE SET NULL,
        
CONSTRAINT nodni2 FOREIGN KEY(dni2)
REFERENCES empleat(dni)
ON UPDATE CASCADE ON DELETE SET NULL
);
```
### CREAR TABLA COMERCIAL ###

``` console
CREATE TABLE comercial(

empleat_dni TEXT PRIMARY KEY,
        
CONSTRAINT noempleat FOREIGN KEY(empleat_dni)
REFERENCES empleat(dni)
ON UPDATE CASCADE ON DELETE CASCADE
);
```
### CREAR TABLA PISTA ###

``` console
CREATE TABLE pista(

codi INTEGER primary key,
superficie TEXT
);

```
### CREAR TABLA RESERVA ###

``` console
CREATE TABLE reserva(

codi_pista INTEGER NOT NULL,
dni_empleat TEXT NOT NULL,
data DATE,
hora TEXT,
durada TEXT,
    	
CONSTRAINT nocodi FOREIGN KEY(codi_pista)
REFERENCES pista(codi)
ON DELETE SET NULL ON UPDATE CASCADE,
	
CONSTRAINT nodni FOREIGN KEY(dni_empleat)
REFERENCES empleat(dni)
ON DELETE SET NULL ON UPDATE CASCADE,

UNIQUE(codi_pista,dni_empleat)
);

```

### CREAR TABLA PRESETEC (RELACIÓ) ###

``` console
CREATE TABLE prestec(

num_exemplar integer NOT NULL,
dni_empleat TEXT NOT NULL,
inici date,
final date,
durada text,

CONSTRAINT noexemplar FOREIGN KEY(num_exemplar)
REFERENCES exemplar(num)
ON DELETE SET NULL ON UPDATE CASCADE,

CONSTRAINT noempleat FOREIGN KEY(dni_empleat)
REFERENCES empleat(dni)
ON DELETE SET NULL ON UPDATE CASCADE,

UNIQUE(num_exemplar,dni_empleat)-- no repetim claus
);
```

### CREAR TABLA GUARDERIA ###

``` console
CREATE TABLE guarderia(

codi integer primary key,
nom text
);
```
### CREAR TABLA FILL ###

``` console
CREATE TABLE fill(

nom text PRIMARY KEY,
naixement date,
dni_empleat text,

CONSTRAINT no_empleat FOREIGN KEY(dni_empleat)
REFERENCES empleat(dni)
ON DELETE SET NULL ON UPDATE CASCADE
);
```
### CREAR TABLA INSCRIPCIÓ ###

``` console
CREATE TABLE inscripcio(

codi integer NOT NULL,
nom TEXT NOT NULL,
data date,

CONSTRAINT no_guarderia FOREIGN KEY(codi)
REFERENCES guarderia(codi)
ON DELETE SET NULL ON UPDATE CASCADE,

CONSTRAINT no_fill FOREIGN KEY(nom)
REFERENCES fill(nom)
ON DELETE SET NULL ON UPDATE CASCADE,

UNIQUE(codi,nom)-- no repetim claus
);
```
### CREAR TABLA PRESTEC (ENTITAT) ###

``` console
CREATE TABLE prestecs(

codi integer PRIMARY KEY,
interes numeric(5,2),
concedit boolean,
data date,
dni_empleat text,

CONSTRAINT no_empleat FOREIGN KEY(dni_empleat)
REFERENCES empleat(dni)
ON DELETE SET NULL ON UPDATE CASCADE
);
```
### CREAR TABLA MATRIMONI ###

``` console
CREATE TABLE matrimoni(

codi_prestecs integer PRIMARY KEY,

CONSTRAINT no_prestecs FOREIGN KEY(codi_prestecs) 
REFERENCES prestecs(codi)
ON UPDATE CASCADE ON DELETE CASCADE
);
```
### CREAR TABLA VIVENDA ###

``` console
CREATE TABLE vivenda(

codi_prestecs integer PRIMARY KEY,

CONSTRAINT no_prestecs FOREIGN KEY(codi_prestecs) 
REFERENCES prestecs(codi)
ON UPDATE CASCADE ON DELETE CASCADE
);
```
### CREAR TABLA ESTUDIS ###

``` console
CREATE TABLE estudis(

codi_prestecs integer PRIMARY KEY,

CONSTRAINT no_prestecs FOREIGN KEY(codi_prestecs) 
REFERENCES prestecs(codi)
ON UPDATE CASCADE ON DELETE CASCADE
);
```
