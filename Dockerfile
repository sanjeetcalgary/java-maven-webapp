FROM openjdk:8-jre-alpine 
EXPOSE 8090
COPY ./target/java-maven-app-*.jar /home/jenkins/app
WORKDIR /home/jenkins/app
ENTRYPOINT [ "java","-jar","java-maven-app-*.jar" ]