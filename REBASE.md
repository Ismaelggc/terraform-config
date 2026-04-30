## Comando Rebase  
En esta tarea nuestro objetivo es unificar dos commits que tenían mensajes confusos y que no aportaban nada por separado.  
Para ello hemos usado el comando `git rebase -i HEAD~2` que lleva a nuestro repositorio dos pasos atrás en el tiempo y nos permite modificar los commits realizados con una pantalla interactiva.  
En este caso como queríamos unir los dos últimos commits hemos usado el argumento `squash`que tiene precisamente esa función.  
Al cerrar el archivo de texto y guardar los cambios se nos abrirá otra ventana interactiva que nos permitirá cambiar el mensaje de esos commits a uno más adecuado y que explique con claridad lo que ha sucedido.  
Una vez los cambios se han realizado usaremos el comando `git push -u origin main --force para forzar los cambios en el directorio y dejar la nueva estructura tanto en local como en Git Hub.