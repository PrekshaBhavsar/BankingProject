#FROM openjdk:8-jdk-alpine
#EXPOSE 8090
#ARG JAR_FILE=target/Bank-0.0.1-SNAPSHOT.jar
#COPY ${JAR_FILE} Bank-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java","-jar","/Bank-0.0.1-SNAPSHOT.jar"]


#FROM openjdk:8
#ADD target/Bank-0.0.1-SNAPSHOT.jar Bank-0.0.1-SNAPSHOT.jar
#EXPOSE 8090
#ENTRYPOINT ["java","-jar","Bank-0.0.1-SNAPSHOT.jar"]


#FROM openjdk:8
#WORKDIR /opt/app
#EXPOSE 8090
#ARG JAR_FILE=target/Bank-0.0.1-SNAPSHOT.jar
#COPY ${JAR_FILE} Bank-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java","-jar","/Bank-0.0.1-SNAPSHOT.jar"]

FROM maven
WORKDIR /code
ADD pom.xml /code/pom.xml
ADD src /code/src
RUN ["mvn","package","-DskipTests"]
EXPOSE 8090
ENTRYPOINT ["java","-jar","target/Bank-0.0.1-SNAPSHOT.jar"]