Reglas para evitar problemas de merge:

No debe haber dos personas en simultaneo modificando el mismo archivo. Preguntar siempre si alguien está modificando el archivo en cuestión antes de pullear/pushear. Si dos personas estan modificando archivos distintos, seguir la recomendación de (4).

Cada vez que se hace un cambio, se pushea. Hay que evitar tener un archivo abierto y en modificación durante demasiado tiempo por lo que, en todo caso, debe intentar pushearse de forma regular.

Antes de pushear/pullear, usar el comando 'git status' para ver que los archivos que deben commitearse (aportados por el comando) coincida con los archivos que uno cree (o pretende) haber modificado.

Recomendación: Cada vez que se desee modificar un archivo en la carpeta clonada, realizar una copia y llevarla a otro directorio puede ser conveniente. Modificar esa copia y luego reemplazar el original de la carpeta clonada por la copia. Pushear.
