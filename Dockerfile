FROM java:8
VOLUME /tmp
ADD target/demo.jar demo.jar
EXPOSE 8084
RUN bash -c 'touch /demo.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/demo.jar"]