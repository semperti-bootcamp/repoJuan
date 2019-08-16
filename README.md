# Assignment 5
## Paso 1: Docker
Se instala Docker (y se levanta el servicio) con el playbook `dockerInstall.yml`.
```
S ansible-playbook dockerInstall.yml 
```
## Paso 2: Construir la imagen de Docker
Definimos el Dockerfile así:
```
FROM openjdk:8-jdk-alpine
COPY journals-7.4.jar /
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/journals-7.4.jar"] 
```
Y creamos la imagen cambiando al directorio (dockerBuild) donde está el archivo Dockerfile y el archivo con la aplicación java (journals-7.4.jar). Y usamos el siguiente comando:
```
$ docker build -t app-dockerizada .
```
Y la corremos con:
```
docker run --network="host" -t app-dockerizada
```
