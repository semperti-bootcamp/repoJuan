#!/bin/bash
#Scriptcito para poder tirar el maven sin tener que pasarle el directorio para los PDF
export REPO=/semperti-bootcamp/week01
sed -i s+/upload+$REPO/PDFs+ /root/semperti-bootcamp/week01/Code/src/main/java/com/semperti/trial/journals/Application.java
