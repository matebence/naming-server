From openjdk:8
copy ./target/naming-server-0.0.1-SNAPSHOT.jar naming-server-0.0.1-SNAPSHOT.jar
CMD ["java","-jar","naming-server-0.0.1-SNAPSHOT.jar"]