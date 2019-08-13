#!/bin/bash
#Scriptcito para poder tirar el maven sin tener que pasarle el directorio para los PDF
export REPO=/repoJuan
sed -i s+/upload+$REPO/PDFs+ /root/repoJuan/Code/src/main/java/com/semperti/trial/journals/Application.java
