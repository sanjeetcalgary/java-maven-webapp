FROM openjdk:8-jre-alpine 
EXPOSE 8090
COPY ./target/java-maven-app-1.4-SNAPSHOT .
WORKDIR .
ENTRYPOINT [ "java","-jar","java-maven-app-1.4-SNAPSHOT" ]