
### SUBIR ARCHIVOS

*** DESDE EL DIRECTORIO DE LA BASE DE DATOS ***

 su - postgres -c "pg_dump nombre_de_tu_bd" > respaldo.sql

git init
git branch -M main
git remote add origin "TU URL DE TU GITHUB"

git push -u origin main


git add .
git commit -m "COMENTARIO QUE QUIERAS"
git push -u origin main --force
