# INSERTAR VALUES EN LAS TABLAS #

### INSERTAR EN EMPLEAT ###

```console
INSERT INTO empleat(dni,nom,tlf)
VALUES('1111F','Josep','987654321'),
('2222Z','Vegetta','123456789'),
('3333A','Willy','147258369'),
('4444E','Rubius','369258147'),
('5555W','Wismichu','789654123'),
('6666T','Trebor','321456987');
```
### INSERTAR EN PARENTESC ###

```console
INSERT INTO parentesc(dni1,dni2)
VALUES('1111F','2222Z'),
('3333A','6666T');
```
### INSERTAR EN LLIBRE ###

```console
INSERT INTO llibre(isbn)
VALUES(123),
(321),
(456),
(654),
(789),
(987);
```
### INSERTAR EN EXEMPLAR ###

```console
INSERT INTO exemplar(num,isbn_llibre)
VALUES(1,123),
(2,321),
(3,456),
(4,654),
(5,789),
(6,987);
```
### INSERTAR EN PRESTEC (RELACIÓ) ###

```console
INSERT INTO prestec(num_exemplar,dni_empleat,inici,final,durada)
VALUES(1,'1111F','2026-10-12','2026-10-30','18 dias'),
(2,'2222Z','2025-05-03','2025-06-10','37 dias'),
(3,'3333A','2026-04-03','2026-04-10','7 dias'),
(4,'6666T','2025-11-16','2025-11-20','4 dias'),
(5,'4444E','2026-01-25','2026-01-30','5 dias'),
(6,'5555W','2026-02-25','2026-03-10','15 dias');
```
### INSERTAR EN COTXE ###

```console
INSERT INTO cotxe(mat,model,marca)
VALUES('1234T','Leon','Seat'),
('9876G','Raval','Cupra'),
('7823E','Dolphine','ByD'),
('3674U','California','Ferrari'),
('4158M','Ibiza','Seat');
```
### INSERTAR EN COMERCIAL ###

```console
INSERT INTO comercial(empleat_dni)
VALUES('1111F'),
('5555W');
```
### INSERTAR EN PISTA ###

```console
INSERT INTO pista(codi,superficie)
VALUES(1,'Cesped'),
(2,'Tierra'),
(3,'Arena'),
(4,'Tierra Batida'),
(5,'Cemento');
```
### INSERTAR EN ###

```console

```
### INSERTAR EN ###

```console

```
### INSERTAR EN ###

```console

```
### INSERTAR EN ###

```console

```
