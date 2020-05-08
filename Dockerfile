FROM openjdk:8
COPY ./target/naming-server-0.0.1-SNAPSHOT.jar naming-server-0.0.1-SNAPSHOT.jar
COPY ./wait-for-it.sh wait-for-it.sh 
RUN chmod +x wait-for-it.sh
CMD ["./wait-for-it.sh" , "postgres:5432" , "--strict" , "--timeout=35" , "--" , "java", "-jar", "naming-server-0.0.1-SNAPSHOT.jar"]