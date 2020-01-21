FROM openjdk:8-jdk-alpine3.7
COPY Main.java .
RUN javac Main.java
RUN java Main 
