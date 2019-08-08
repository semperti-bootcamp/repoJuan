# Creación de máquina virtual
Lo primero que hice fue levantar la VM en nuestro RHEV-M.  
Le puse de nombre **bootcampJuan** y tiene la IP estática 10.252.7.175.  
# Configuración Ansible
Definí el host con el que Ansible va a trabajar:
```
# echo 'bootCampJuan ansible_host=10.252.7.175 ansible_user=root' > /etc/ansible/hosts
```
# Instalación Guest Agent para RHEV
Instalé oVirt Guest Agent con el playbook `ovirt-guest-agent.yml`.
```
$ ansible-playbook ovirt-guest-agent.yml
```
# Cifrado clave de base de datos
Se utiliza `ansible-vault` para crear un archivo cifrado para que contenga la clave de root para la base de datos:
```
$ echo "db_root_password: CLAVE" > secrets.yml
$ ansible-vault encrypt secrets.yml
New Vault password: 
Confirm New Vault password: 
Encryption successful
```
> Nota: la clave debe escribirse sin comillas (para que después pueda ser pasada correctamente 

# Instalación de las dependencias para que corra la aplicación hecha en Java.
Definí un rol para cada uno de los prerequisitos de la aplicación y los instalé con el playbook `assignment2.yml`.
```
$ ansible-playbook assiginment2.yml
```


# PARA HACER
Encontrar cómo traer algo de un branch posterior. Puntualmente, quiero el archivo secrets.yml porque después de hacer la assignment2 encontré un método mejor para que no quede una password en texto plano en GitHub.
