FROM maven
WORKDIR /root/
COPY ./Code/. /root/
CMD mvn spring-boot:run
