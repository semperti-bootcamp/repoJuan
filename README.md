# Creación de máquina virtual
Lo primero que hice fue levantar la VM en nuestro RHEV-M.  
Le puse de nombre **bootcampJuan** y tiene la IP estática 10.252.7.175.  
# Configuración Ansible
Definí el host con el que Ansible va a trabajar:
```
# echo 'bootCampJuan ansible_host=10.252.7.175 ansible_user=root' > /etc/ansible/hosts
```
# Instalación Gues Agent para RHEV
Instalé oVirt Guest Agent con el playbook `ovirt-guest-agent.yml`.
```
$ ansible-playbook ovirt-guest-agent.yml
```
# Instalación de las dependencias para que corra la aplicación hecha en Java.
Define un rol para cada uno de los prerequisitos de la aplicación y los instalé con el playbook `assignment2.yml`.
```
$ ansible-playbook assiginment2.yml
```
