#!/bin/bash
#Scriptcito para poder tirar el maven sin tener que pasarle el directorio para los PDF
export repo=~/bootCamp/repojuan
sed -i s+/upload+$repo/PDFs+ src/main/java/com/semperti/trial/journals/Application.java
