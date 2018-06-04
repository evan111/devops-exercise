FROM openjdk:8-jdk-alpine
COPY ./target/yo-1.2.3-SNAPSHOT.jar /
ENTRYPOINT ["/usr/bin/java"]
CMD ["-Dspring.datasource.url=jdbc:mysql://${YO_DB_HOST}:3306/yo","-jar", "/yo-1.2.3-SNAPSHOT.jar"]
EXPOSE 8080
