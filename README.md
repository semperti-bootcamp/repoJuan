# BootCamp Juan
## Creación de máquina virtual
Lo primero que hice fue levantar la VM en nuestro RHEV-M.  
Le puse de nombre "bootcampJuan" y tiene la IP estática 10.252.7.175.  
Definí el host con el que Ansible va a trabajar:
```
# echo 'bootCampJuan ansible_host=10.252.7.175 ansible_user=root' > /etc/ansible/hosts
```
Instalé oVirt Guest Agent con el playbook `ovirt-guest-agent.yml`.
```
$ ansible-playbook ovirt-guest-agent.yml
```
Define un rol para cada uno de los prerequisitos de la aplicación y los instalé con el playbook `assignment2.yml`.
```
$ ansible-playbook assiginment2.yml
```
