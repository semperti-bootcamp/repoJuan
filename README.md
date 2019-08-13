# Assignment 4
## Paso 1: Definir las credenciales de autenticación contra el servidor Nexus
Se abre el puerto TCP 8080 y se reinicia el firewall con el playbook `abrirFW.yml`.
```
S ansible-playbook agregarCredencialesSettingsMaven.yml --ask-vault 
```
## Paso 2: Definir los repositorios del Nexus
En el pom.xml hay que agregar una entrada para el repositorio de los snapshots y otro para el repositorios de los releases.
```
    <distributionManagement>
        <repository>
            <id>maven-credentials</id>
            <name>repoNexusReleases</name>
            <url>http://10.252.7.162:8081/repository/maven-releases/</url>
        </repository>
        <snapshotRepository>
            <id>maven-credentials</id>
            <name>repoNexusSnapshots</name>
            <url>http://10.252.7.162:8081/repository/maven-snapshots/</url>
        </snapshotRepository>
    </distributionManagement>
```
## Paso 3: Lanzar el snapshot
Para lanzar el snapshot primero hay que definir una versión que no exista en el repositorio (sino, da 401) y después hacer un deploy:
```
# mvn versions:set -DnewVersion=7.1-SNAPSHOT
# mvn deploy 
```
## Paso 3: Lanzar el snapshot
Para lanzar el release primero hay que definir una versión superior a la versión que usamos para el snapshot
```
# mvn versions:set -DnewVersion=7.2
# mvn deploy 
```
