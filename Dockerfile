FROM maven:3.8.6-eclipse-temurin-8

WORKDIR /app

COPY . /app

RUN mvn clean package -DskipTests

EXPOSE 8080

CMD ["java","-jar","target/*.jar"]
