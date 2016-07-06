#
# Adjective Server Dockerfile
#
# FROM alpine:3.4
FROM java:openjdk-8-jdk-alpine

MAINTAINER Bipin Gupta 

# Add OpenSSH
RUN apk update && apk add openssh

# Add directly the jar
ENV SPRING_PROFILES=dev
ADD ./target/word-server-1.0.jar /app.jar

RUN sh -c 'touch /app.jar'
VOLUME /tmp

EXPOSE 8084
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=adjective","-DPORT=8084","-jar","/app.jar"]
