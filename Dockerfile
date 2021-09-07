FROM centos

RUN yum install -y java-11

VOLUME /tmp
ADD target/spring-boot-web-0.0.1-SNAPSHOT.jar myapp.jar
RUN sh -c 'touch /myapp.jar'
EXPOSE 8080/tcp
ENTRYPOINT ["java","-jar","/myapp.jar"]