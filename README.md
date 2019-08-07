# Assignment 3
## Paso 1: Configuración firewall
Se abre el puerto TCP 8080 y se reinicia el firewall con el playbook `abrirFW.yml`.
```
$ ansible-playbook abrirFW.yml
```
## Paso 2: Repositorio con la aplicación Java
Se clona el repositorio donde está la aplicación Java corriendo el playbook `clonarRepoBootcamp.yml`
```
$ ansible-playbook clonarRepoBootcamp.yml
```
## Paso 3: Upload Dir
Se modifica el directorio donde van los .PDFs con el playbook `arreglarDirectorioUpload.yml`

```
$ ansible-plabook arreglarDirectorioUpload.yml
```
## Paso 4: Configuración base de datos
Se define la contraseña de root para la base de datos corriendo el playbook `configuracionDB.yml`
```
S ansible-playbook configuracionDB.yml --ask-vault 
```

> Nota:
> A modo de estudio, se armó un playbook por cada uno de los tres pasos anteriores, pero también se pueden ejecutar los tres juntos corriendo el playbook `assignment3.yml`
