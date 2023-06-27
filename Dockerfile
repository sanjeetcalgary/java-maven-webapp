FROM openjdk:8-jre-alpine 
EXPOSE 8090
COPY ./target/java-maven-app-*.jar /home/jenkins/myapp
WORKDIR /home/jenkins/myapp
ENTRYPOINT [ "java","-jar","java-maven-app-*.jar" ]