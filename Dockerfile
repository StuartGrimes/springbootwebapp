FROM centos

RUN yum install -y java
EXPOSE 8080
VOLUME  /tmp
ARG JAR_FILE=target/spring-boot-web-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} myapp.jar
ENTRYPOINT ["java", "-jar", "/myapp.jar"]

